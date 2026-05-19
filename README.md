# Secure Computing - Assignment 2 (Part 2)

This repo contains my written report for Secure Computing Assignment 2 Part 2.

## Files
- `main.tex` - report source
- `references.bib` - bibliography
- `screenshots/` - Dependabot enablement/alerts screenshots (GitHub Docs)
- `main.pdf` - compiled report output

## Build
If you have a LaTeX distribution installed (TeX Live / MiKTeX / TinyTeX) with `latexmk` on PATH:
```bash
latexmk -pdf main.tex
```

Or, on Windows PowerShell:
```powershell
.\scripts\build.ps1
```

## Package (deliverables.zip)
```powershell
.\scripts\package.ps1 -Rebuild
```
