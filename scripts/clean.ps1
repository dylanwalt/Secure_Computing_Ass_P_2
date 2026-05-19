$ErrorActionPreference = "Stop"

if (Get-Command latexmk -ErrorAction SilentlyContinue) {
  latexmk -C .\main.tex | Out-Host
}

if (Test-Path .\build) {
  Remove-Item -Recurse -Force .\build
}

Write-Host "Cleaned LaTeX artifacts."
