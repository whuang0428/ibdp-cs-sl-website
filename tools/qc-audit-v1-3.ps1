param(
    [string]$ProjectRoot = "D:\ibdp-cs-sl-website"
)

$ErrorActionPreference = "Continue"

Write-Host "=== IBDP CS SL Website QC Audit v1.3 ===" -ForegroundColor Cyan
Write-Host "Project root: $ProjectRoot"

$docs = Join-Path $ProjectRoot "docs"
$config = Join-Path $docs ".vitepress\config.mts"

$issues = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]

function Add-Issue($msg) {
    $script:issues.Add($msg) | Out-Null
    Write-Host "[ISSUE] $msg" -ForegroundColor Red
}

function Add-Warning($msg) {
    $script:warnings.Add($msg) | Out-Null
    Write-Host "[WARN]  $msg" -ForegroundColor Yellow
}

function Remove-FencedCodeBlocks([string]$text) {
    # PowerShell treats the backtick as an escape character in double-quoted strings.
    # Therefore these regex strings MUST use single quotes.
    $withoutBackticks = [regex]::Replace($text, '(?ms)^```.*?^```', '')
    $withoutTildes = [regex]::Replace($withoutBackticks, '(?ms)^~~~.*?^~~~', '')
    return $withoutTildes
}

function Resolve-RouteToFile($route) {
    if ([string]::IsNullOrWhiteSpace($route)) {
        return $null
    }

    $clean = $route.Trim()

    if ($clean.StartsWith("http://") -or $clean.StartsWith("https://") -or $clean.StartsWith("mailto:") -or $clean.StartsWith("#")) {
        return $null
    }

    $clean = $clean.Split("#")[0].Split("?")[0]

    if ($clean -eq "" -or $clean -eq "/") {
        return (Join-Path $docs "index.md")
    }

    if ($clean.StartsWith("/")) {
        $clean = $clean.Substring(1)
    }

    if ($clean.EndsWith("/")) {
        return (Join-Path $docs ($clean + "index.md"))
    }

    if ($clean.EndsWith(".md")) {
        return (Join-Path $docs $clean)
    }

    return (Join-Path $docs ($clean + ".md"))
}

if (-not (Test-Path $ProjectRoot)) {
    Add-Issue "Project root does not exist: $ProjectRoot"
    exit 1
}

if (-not (Test-Path $docs)) {
    Add-Issue "docs folder does not exist: $docs"
    exit 1
}

if (-not (Test-Path $config)) {
    Add-Issue "VitePress config not found: $config"
} else {
    Write-Host "`n--- Checking sidebar/nav links in config.mts ---" -ForegroundColor Cyan
    $configText = Get-Content $config -Raw -Encoding UTF8
    $matches = [regex]::Matches($configText, 'link:\s*[''"]([^''"]+)[''"]')
    Write-Host "Found $($matches.Count) config link(s)."

    foreach ($m in $matches) {
        $route = $m.Groups[1].Value
        $file = Resolve-RouteToFile $route
        if ($null -ne $file -and -not (Test-Path $file)) {
            Add-Issue "Config link '$route' points to missing file: $file"
        }
    }
}

Write-Host "`n--- Checking module folders for index.md ---" -ForegroundColor Cyan
$moduleFolders = Get-ChildItem $docs -Directory | Where-Object { $_.Name -notin @(".vitepress", "public") }
foreach ($folder in $moduleFolders) {
    $idx = Join-Path $folder.FullName "index.md"
    if (-not (Test-Path $idx)) {
        Add-Warning "Folder has no index.md: $($folder.FullName)"
    }
}

Write-Host "`n--- Checking Markdown local links outside fenced code blocks ---" -ForegroundColor Cyan
$mdFiles = Get-ChildItem $docs -Recurse -File -Filter "*.md"
Write-Host "Found $($mdFiles.Count) Markdown file(s)."

$linkPattern = '\[[^\]]*\]\(([^)]+)\)'
foreach ($file in $mdFiles) {
    $rawContent = Get-Content $file.FullName -Raw -Encoding UTF8
    $content = Remove-FencedCodeBlocks $rawContent

    $linkMatches = [regex]::Matches($content, $linkPattern)
    foreach ($lm in $linkMatches) {
        $target = $lm.Groups[1].Value.Trim()

        if ($target -match '^(http://|https://|mailto:|#)') {
            continue
        }

        if ($target -match '^\s*$') {
            continue
        }

        if ($target -match '^(D:\\|C:\\|file://|/mnt/data)') {
            Add-Issue "Local/private path link in $($file.FullName): $target"
            continue
        }

        $cleanTarget = $target.Split("#")[0].Split("?")[0]
        if ($cleanTarget -eq "") {
            continue
        }

        $candidatePaths = @()

        if ($cleanTarget.StartsWith("/")) {
            $routeFile = Resolve-RouteToFile $cleanTarget
            if ($null -ne $routeFile) {
                $candidatePaths += $routeFile
            }
        } else {
            $baseDir = Split-Path $file.FullName -Parent
            $relative = Join-Path $baseDir $cleanTarget

            if ($cleanTarget.EndsWith("/")) {
                $candidatePaths += (Join-Path $relative "index.md")
            } elseif ($cleanTarget.EndsWith(".md")) {
                $candidatePaths += $relative
            } else {
                $candidatePaths += ($relative + ".md")
                $candidatePaths += (Join-Path $relative "index.md")
            }
        }

        $exists = $false
        foreach ($p in $candidatePaths) {
            if (Test-Path $p) {
                $exists = $true
                break
            }
        }

        if (-not $exists) {
            Add-Warning "Possible broken Markdown link in $($file.FullName): $target"
        }
    }
}

Write-Host "`n--- Checking empty or very small Markdown files ---" -ForegroundColor Cyan
foreach ($file in $mdFiles) {
    $size = (Get-Item $file.FullName).Length
    if ($size -lt 100) {
        Add-Warning "Very small Markdown file may be placeholder: $($file.FullName) ($size bytes)"
    }
}

Write-Host "`n--- Checking risky text outside fenced code blocks ---" -ForegroundColor Cyan

$riskyPatterns = @(
    @{ Name = "Local Windows path D drive"; Pattern = 'D:\\' },
    @{ Name = "Local Windows path C drive"; Pattern = 'C:\\' },
    @{ Name = "Sandbox path"; Pattern = '/mnt/data' },
    @{ Name = "File URL"; Pattern = 'file://' },
    @{ Name = "Possible API key assignment"; Pattern = '(?i)\bapi[_-]?key\b\s*[:=]' },
    @{ Name = "Possible secret assignment"; Pattern = '(?i)\bsecret\b\s*[:=]' },
    @{ Name = "Possible token assignment"; Pattern = '(?i)\btoken\b\s*[:=]' },
    @{ Name = "Possible password assignment"; Pattern = '(?i)\bpassword\b\s*[:=]' },
    @{ Name = "TODO placeholder"; Pattern = '(?i)\bTODO\b' },
    @{ Name = "FIXME placeholder"; Pattern = '(?i)\bFIXME\b' }
)

foreach ($file in $mdFiles) {
    $rawContent = Get-Content $file.FullName -Raw -Encoding UTF8
    $content = Remove-FencedCodeBlocks $rawContent

    foreach ($entry in $riskyPatterns) {
        if ($content -match $entry.Pattern) {
            Add-Warning "$($entry.Name) found outside code block in $($file.FullName)"
        }
    }
}

Write-Host "`n--- Checking recommended page sections ---" -ForegroundColor Cyan
foreach ($file in $mdFiles) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $isTeachingPage = $file.FullName -match '\\(a1|a2|a3|a4|b1|b2|b3|extension|ia-support|glossary)\\'

    if ($isTeachingPage) {
        $hasGoal = ($content -match "Lesson Goals") -or ($content -match "Learning Goals") -or ($content -match "Purpose of This")
        $hasTeacherNotes = ($content -match "Teacher Notes") -or ($file.FullName -match '\\index\.md$')
        $hasOnePage = ($content -match "One-page") -or ($content -match "Checklist") -or ($content -match "Revision Sheet") -or ($content -match "Cheatsheet")

        if (-not $hasGoal) {
            Add-Warning "No Lesson Goals / Learning Goals / Purpose section found in $($file.FullName)"
        }
        if (-not $hasTeacherNotes) {
            Add-Warning "No Teacher Notes section found in $($file.FullName)"
        }
        if (-not $hasOnePage) {
            Add-Warning "No One-page / Checklist / Revision Sheet / Cheatsheet section found in $($file.FullName)"
        }
    }
}

Write-Host "`n=== QC Audit Summary ===" -ForegroundColor Cyan
Write-Host "Issues:   $($issues.Count)" -ForegroundColor $(if ($issues.Count -eq 0) { "Green" } else { "Red" })
Write-Host "Warnings: $($warnings.Count)" -ForegroundColor $(if ($warnings.Count -eq 0) { "Green" } else { "Yellow" })

if ($issues.Count -gt 0) {
    Write-Host "`nFix the ISSUE items before publishing." -ForegroundColor Red
    exit 1
} else {
    Write-Host "`nNo critical issues found by this helper script. Review warnings, then run:" -ForegroundColor Green
    Write-Host "npm run docs:build"
    Write-Host ".\tools\check-vitepress-links.ps1"
}
