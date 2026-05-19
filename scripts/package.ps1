param(
  [switch]$Rebuild
)

$ErrorActionPreference = "Stop"

if ($Rebuild) {
  & .\scripts\build.ps1 -Clean
}

if (-not (Test-Path .\main.pdf)) {
  throw "main.pdf not found. Run scripts\\build.ps1 first (or run scripts\\package.ps1 -Rebuild)."
}

$zipPath = Join-Path (Get-Location) "deliverables.zip"
if (Test-Path $zipPath) {
  Remove-Item -Force $zipPath
}

Compress-Archive -Path @(
  ".\deliverables\*",
  ".\screenshots\*",
  ".\main.pdf"
) -DestinationPath $zipPath -Force

Write-Host "Packaged: $zipPath"
