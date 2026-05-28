$ErrorActionPreference = "Stop"

$project = "D:\ibdp-cs-sl-website"
$docs = Join-Path $project "docs"
$config = Join-Path $docs ".vitepress\config.mts"

$oldFolder = Join-Path $docs "extension-social-engineering"
$newFolder = Join-Path $docs "extension-software-engineering"

if (-not (Test-Path $docs)) {
    Write-Host "Project docs folder not found: $docs" -ForegroundColor Red
    exit 1
}

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"

if (Test-Path $oldFolder) {
    $backupOld = Join-Path $docs "extension-social-engineering.backup-$timestamp"
    Move-Item -Path $oldFolder -Destination $backupOld -Force
    Write-Host "Old Social Engineering folder moved to backup: $backupOld" -ForegroundColor Yellow
}

if (Test-Path $newFolder) {
    $backupNew = Join-Path $docs "extension-software-engineering.backup-$timestamp"
    Move-Item -Path $newFolder -Destination $backupNew -Force
    Write-Host "Existing Software Engineering folder moved to backup: $backupNew" -ForegroundColor Yellow
}

New-Item -ItemType Directory -Path $newFolder -Force | Out-Null

Copy-Item -Path ".\docs\extension-software-engineering\index.md" -Destination (Join-Path $newFolder "index.md") -Force
Copy-Item -Path ".\docs\extension-software-engineering\what-is-software-engineering.md" -Destination (Join-Path $newFolder "what-is-software-engineering.md") -Force

Write-Host "New Software Engineering pages copied." -ForegroundColor Green

if (Test-Path $config) {
    $backupConfig = "$config.backup-$timestamp"
    Copy-Item -Path $config -Destination $backupConfig -Force
    Write-Host "Config backup created: $backupConfig" -ForegroundColor Yellow

    $text = Get-Content $config -Raw -Encoding UTF8

    $text = $text -replace "Social Engineering Awareness", "Software Engineering"
    $text = $text -replace "Social Engineering", "Software Engineering"
    $text = $text -replace "social engineering", "software engineering"
    $text = $text -replace "extension-social-engineering", "extension-software-engineering"
    $text = $text -replace "what-is-social-engineering", "what-is-software-engineering"

    Set-Content -Path $config -Value $text -Encoding UTF8
    Write-Host "Config text and links updated." -ForegroundColor Green
} else {
    Write-Host "Config file not found: $config" -ForegroundColor Red
}

$homepage = Join-Path $docs "index.md"
if (Test-Path $homepage) {
    $backupHome = "$homepage.backup-$timestamp"
    Copy-Item -Path $homepage -Destination $backupHome -Force
    Write-Host "Homepage backup created: $backupHome" -ForegroundColor Yellow

    $homeText = Get-Content $homepage -Raw -Encoding UTF8
    $homeText = $homeText -replace "Social Engineering Extension", "Software Engineering Extension"
    $homeText = $homeText -replace "Social Engineering Awareness", "Software Engineering"
    $homeText = $homeText -replace "extension-social-engineering", "extension-software-engineering"
    $homeText = $homeText -replace "what-is-social-engineering", "what-is-software-engineering"

    Set-Content -Path $homepage -Value $homeText -Encoding UTF8
    Write-Host "Homepage links updated." -ForegroundColor Green
}

Write-Host ""
Write-Host "Fix complete." -ForegroundColor Green
Write-Host "Next run:"
Write-Host "cd D:\ibdp-cs-sl-website"
Write-Host "npm run docs:build"
Write-Host ".\tools\check-vitepress-links.ps1"
