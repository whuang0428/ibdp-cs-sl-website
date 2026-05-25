# Module Audit Table

## 1. Purpose of This Page

This page is used for the final quality-control audit of the IBDP Computer Science SL learning website.

::: tip v1.3 Update
The v1.3 script fixes a PowerShell parsing issue caused by backticks inside double-quoted regex strings. The fenced-code-block regex now uses single-quoted strings, so `qc-audit-v1-3.ps1` should run correctly in Windows PowerShell.
:::

## 2. Recommended Commands

Run the new v1.3 helper script:

```powershell
cd D:\ibdp-cs-sl-website

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

.\tools\qc-audit-v1-3.ps1
```

Then run the real production checks:

```powershell
npm run docs:build
.\tools\check-vitepress-links.ps1
```

If clean, commit:

```powershell
git status
git add .
git commit -m "Fix quality control audit script"
git push
```

## 3. What the QC Script Checks

```text
sidebar links in config.mts
missing Markdown files
module folders without index.md
possible broken Markdown links outside code blocks
very small placeholder pages
local/private paths outside code blocks
possible secret-like assignments outside code blocks
recommended teaching page sections
```

## 4. Final Quality-control Checklist

| Area | Check |
|---|---|
| Sidebar | all links point to real pages |
| Files | all linked Markdown files exist |
| Index pages | every module folder has `index.md` |
| Markdown links | relative/internal links work |
| Build | `npm run docs:build` passes |
| Link checker | no broken site links |
| Page style | headings and sections consistent |
| Privacy | no private data or local-only real links |
| Secrets | no real credentials or tokens |
| Git | only intended files committed |
| Deployment | GitHub Pages shows latest site |
