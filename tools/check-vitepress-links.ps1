param(
    [string]$ProjectRoot = ".",
    [string]$ReportPath = "link-check-report.md"
)

$ErrorActionPreference = "Stop"

$ProjectRoot = (Resolve-Path $ProjectRoot).Path
$DocsDir = Join-Path $ProjectRoot "docs"
$ConfigPath = Join-Path $DocsDir ".vitepress\config.mts"
$FullReportPath = Join-Path $ProjectRoot $ReportPath

if (-not (Test-Path $DocsDir)) {
    Write-Host "ERROR: docs folder not found: $DocsDir" -ForegroundColor Red
    exit 1
}

function Get-RelativePathCompat {
    param(
        [string]$BasePath,
        [string]$TargetPath
    )

    $baseFull = [System.IO.Path]::GetFullPath($BasePath)
    $targetFull = [System.IO.Path]::GetFullPath($TargetPath)

    if (-not $baseFull.EndsWith([System.IO.Path]::DirectorySeparatorChar)) {
        $baseFull = $baseFull + [System.IO.Path]::DirectorySeparatorChar
    }

    $baseUri = New-Object System.Uri($baseFull)
    $targetUri = New-Object System.Uri($targetFull)
    $relativeUri = $baseUri.MakeRelativeUri($targetUri)

    $relative = [System.Uri]::UnescapeDataString($relativeUri.ToString())
    $relative = $relative.Replace("/", [System.IO.Path]::DirectorySeparatorChar)

    return $relative
}

function Normalize-Route {
    param([string]$Link)

    if ([string]::IsNullOrWhiteSpace($Link)) {
        return $null
    }

    $cleanLink = $Link.Trim()

    if ($cleanLink.StartsWith("http://") -or
        $cleanLink.StartsWith("https://") -or
        $cleanLink.StartsWith("mailto:") -or
        $cleanLink.StartsWith("tel:") -or
        $cleanLink.StartsWith("#")) {
        return $null
    }

    $cleanLink = ($cleanLink -split "#")[0]
    $cleanLink = ($cleanLink -split "\?")[0]
    $cleanLink = $cleanLink.Trim()

    if ([string]::IsNullOrWhiteSpace($cleanLink)) {
        return $null
    }

    if ($cleanLink.EndsWith(".md")) {
        $cleanLink = $cleanLink.Substring(0, $cleanLink.Length - 3)
    }

    while ($cleanLink.Contains("//")) {
        $cleanLink = $cleanLink.Replace("//", "/")
    }

    if ($cleanLink.Length -gt 1 -and $cleanLink.EndsWith("/")) {
        $cleanLink = $cleanLink.Substring(0, $cleanLink.Length - 1)
    }

    return $cleanLink
}

function Get-RouteFromFile {
    param([string]$FilePath)

    $relative = Get-RelativePathCompat -BasePath $DocsDir -TargetPath $FilePath
    $relative = $relative.Replace("\", "/")

    if ($relative -eq "index.md") {
        return "/"
    }

    if ($relative.EndsWith("/index.md")) {
        $route = "/" + $relative.Substring(0, $relative.Length - "/index.md".Length)
        return $route
    }

    if ($relative.EndsWith(".md")) {
        $route = "/" + $relative.Substring(0, $relative.Length - 3)
        return $route
    }

    return $null
}

function Resolve-Relative-Link {
    param(
        [string]$SourceFile,
        [string]$RawLink
    )

    $link = ($RawLink -split "#")[0]
    $link = ($link -split "\?")[0]

    if ([string]::IsNullOrWhiteSpace($link)) {
        return $null
    }

    if ($link.StartsWith("http://") -or
        $link.StartsWith("https://") -or
        $link.StartsWith("mailto:") -or
        $link.StartsWith("tel:") -or
        $link.StartsWith("#") -or
        $link.StartsWith("/")) {
        return (Normalize-Route $link)
    }

    $sourceDir = Split-Path $SourceFile -Parent
    $candidatePath = Join-Path $sourceDir $link
    $candidateFull = [System.IO.Path]::GetFullPath($candidatePath)

    if ($candidateFull.EndsWith(".md")) {
        if (Test-Path $candidateFull) {
            return (Get-RouteFromFile $candidateFull)
        } else {
            $relative = Get-RelativePathCompat -BasePath $DocsDir -TargetPath $candidateFull
            $relative = $relative.Replace("\", "/")
            if ($relative.EndsWith(".md")) {
                return "/" + $relative.Substring(0, $relative.Length - 3)
            }
            return "/" + $relative
        }
    }

    if (Test-Path "$candidateFull.md") {
        return (Get-RouteFromFile "$candidateFull.md")
    }

    $indexCandidate = Join-Path $candidateFull "index.md"
    if (Test-Path $indexCandidate) {
        return (Get-RouteFromFile $indexCandidate)
    }

    $relativeNoExt = Get-RelativePathCompat -BasePath $DocsDir -TargetPath $candidateFull
    $relativeNoExt = $relativeNoExt.Replace("\", "/")
    if (-not $relativeNoExt.StartsWith("..")) {
        return "/" + $relativeNoExt.TrimEnd("/")
    }

    return $null
}

Write-Host "Project root: $ProjectRoot"
Write-Host "Docs folder:   $DocsDir"
Write-Host ""

$mdFiles = Get-ChildItem -Path $DocsDir -Filter "*.md" -Recurse | Where-Object {
    $_.FullName -notmatch "\\node_modules\\"
}

$validRoutes = New-Object System.Collections.Generic.HashSet[string]
$routeToFile = @{}

foreach ($file in $mdFiles) {
    $route = Get-RouteFromFile $file.FullName
    if ($route) {
        [void]$validRoutes.Add($route)
        $routeToFile[$route] = $file.FullName

        if ($route -ne "/" -and -not $route.EndsWith("/")) {
            [void]$validRoutes.Add($route + "/")
        }
    }
}

$allLinks = @()

# 1. Check links in config.mts
if (Test-Path $ConfigPath) {
    $configText = Get-Content $ConfigPath -Raw -Encoding UTF8

    $regexSingle = [regex]"link\s*:\s*'([^']+)'"
    $regexDouble = [regex]'link\s*:\s*"([^"]+)"'

    foreach ($match in $regexSingle.Matches($configText)) {
        $route = Normalize-Route $match.Groups[1].Value
        if ($route) {
            $allLinks += [PSCustomObject]@{
                Source = "docs/.vitepress/config.mts"
                Link = $match.Groups[1].Value
                Route = $route
                Type = "config"
            }
        }
    }

    foreach ($match in $regexDouble.Matches($configText)) {
        $route = Normalize-Route $match.Groups[1].Value
        if ($route) {
            $allLinks += [PSCustomObject]@{
                Source = "docs/.vitepress/config.mts"
                Link = $match.Groups[1].Value
                Route = $route
                Type = "config"
            }
        }
    }
} else {
    Write-Host "WARNING: config.mts not found: $ConfigPath" -ForegroundColor Yellow
}

# 2. Check markdown links in all .md files
$linkRegex = [regex]"\[[^\]]+\]\(([^)]+)\)"
$htmlHrefRegex = [regex]'href\s*=\s*"([^"]+)"'

foreach ($file in $mdFiles) {
    $text = Get-Content $file.FullName -Raw -Encoding UTF8
    $sourceRelative = Get-RelativePathCompat -BasePath $ProjectRoot -TargetPath $file.FullName
    $sourceRelative = $sourceRelative.Replace("\", "/")

    foreach ($match in $linkRegex.Matches($text)) {
        $raw = $match.Groups[1].Value.Trim()
        $route = Resolve-Relative-Link -SourceFile $file.FullName -RawLink $raw
        if ($route) {
            $allLinks += [PSCustomObject]@{
                Source = $sourceRelative
                Link = $raw
                Route = $route
                Type = "markdown"
            }
        }
    }

    foreach ($match in $htmlHrefRegex.Matches($text)) {
        $raw = $match.Groups[1].Value.Trim()
        $route = Resolve-Relative-Link -SourceFile $file.FullName -RawLink $raw
        if ($route) {
            $allLinks += [PSCustomObject]@{
                Source = $sourceRelative
                Link = $raw
                Route = $route
                Type = "html-href"
            }
        }
    }
}

$broken = @()
$ok = @()

foreach ($item in $allLinks) {
    $route = $item.Route
    $exists = $false

    if ($validRoutes.Contains($route)) {
        $exists = $true
    } elseif ($route -ne "/" -and $validRoutes.Contains($route.TrimEnd("/"))) {
        $exists = $true
    } elseif ($route -ne "/" -and $validRoutes.Contains($route.TrimEnd("/") + "/")) {
        $exists = $true
    }

    if ($exists) {
        $ok += $item
    } else {
        $broken += $item
    }
}

# 3. Find orphan pages not linked by config sidebar/nav
$configRoutes = @()
foreach ($item in $allLinks | Where-Object { $_.Type -eq "config" }) {
    $configRoutes += $item.Route.TrimEnd("/")
}

$orphanRoutes = @()
foreach ($route in $routeToFile.Keys | Sort-Object) {
    $normalized = $route.TrimEnd("/")
    if ($normalized -eq "") { $normalized = "/" }

    if ($normalized -ne "/" -and
        $normalized -ne "/roadmap" -and
        $normalized -ne "/website-quality-control-checklist" -and
        -not ($configRoutes -contains $normalized)) {
        $orphanRoutes += $route
    }
}

$report = New-Object System.Collections.Generic.List[string]

$report.Add("# VitePress Link Check Report")
$report.Add("")
$report.Add("Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$report.Add("")
$report.Add("## Summary")
$report.Add("")
$report.Add("| Item | Count |")
$report.Add("|---|---:|")
$report.Add("| Markdown files scanned | $($mdFiles.Count) |")
$report.Add("| Valid routes found | $($routeToFile.Keys.Count) |")
$report.Add("| Internal links checked | $($allLinks.Count) |")
$report.Add("| OK links | $($ok.Count) |")
$report.Add("| Broken links | $($broken.Count) |")
$report.Add("| Possible orphan pages | $($orphanRoutes.Count) |")
$report.Add("")

if ($broken.Count -gt 0) {
    $report.Add("## Broken Links")
    $report.Add("")
    $report.Add("| Source | Link | Expected Route |")
    $report.Add("|---|---|---|")
    foreach ($item in $broken | Sort-Object Source, Link) {
        $report.Add("| ``$($item.Source)`` | ``$($item.Link)`` | ``$($item.Route)`` |")
    }
    $report.Add("")
} else {
    $report.Add("## Broken Links")
    $report.Add("")
    $report.Add("No broken internal links found.")
    $report.Add("")
}

if ($orphanRoutes.Count -gt 0) {
    $report.Add("## Possible Orphan Pages")
    $report.Add("")
    $report.Add("These pages exist, but they may not be linked from ``config.mts`` navigation/sidebar.")
    $report.Add("")
    $report.Add("| Route | File |")
    $report.Add("|---|---|")
    foreach ($route in $orphanRoutes) {
        $relativeFile = Get-RelativePathCompat -BasePath $ProjectRoot -TargetPath $routeToFile[$route]
        $relativeFile = $relativeFile.Replace("\", "/")
        $report.Add("| ``$route`` | ``$relativeFile`` |")
    }
    $report.Add("")
}

$report.Add("## Fix Rule")
$report.Add("")
$report.Add("If a file is:")
$report.Add("")
$report.Add('```text')
$report.Add("docs/folder-name/file-name.md")
$report.Add('```')
$report.Add("")
$report.Add("The VitePress link should be:")
$report.Add("")
$report.Add('```text')
$report.Add("/folder-name/file-name")
$report.Add('```')
$report.Add("")
$report.Add("Do not include ``.md`` in the link.")
$report.Add("")

$report | Set-Content -Path $FullReportPath -Encoding UTF8

if ($broken.Count -eq 0) {
    Write-Host "Link check completed. No broken internal links found." -ForegroundColor Green
} else {
    Write-Host "Link check completed. Broken links found: $($broken.Count)" -ForegroundColor Red
}

Write-Host "Report saved to: $FullReportPath"

if ($broken.Count -gt 0) {
    exit 2
} else {
    exit 0
}
