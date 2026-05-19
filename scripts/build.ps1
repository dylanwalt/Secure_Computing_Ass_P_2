param(
  [switch]$Clean
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command latexmk -ErrorAction SilentlyContinue)) {
  throw "latexmk not found. Install a LaTeX distribution that includes latexmk (e.g., TeX Live / MiKTeX / TinyTeX) and ensure it is on PATH."
}

if ($Clean) {
  latexmk -C .\main.tex | Out-Host
}

latexmk -pdf -interaction=nonstopmode -halt-on-error .\main.tex | Out-Host

Write-Host ""
Write-Host "Built: $(Resolve-Path .\main.pdf)"
