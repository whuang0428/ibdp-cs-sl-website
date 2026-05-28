# Fix Social Engineering to Software Engineering v1

## What this fixes

Your student website currently has a wrong section:

```text
Social Engineering Awareness
```

It should be:

```text
Software Engineering
```

This package will:

```text
remove docs/extension-social-engineering
create docs/extension-software-engineering
create a correct Software Engineering index page
create a correct What Is Software Engineering page
update docs/.vitepress/config.mts text and links
update homepage links from social engineering to software engineering
```

## Files included

```text
docs/extension-software-engineering/index.md
docs/extension-software-engineering/what-is-software-engineering.md
tools/fix-social-to-software-engineering.ps1
README-fix-social-to-software-engineering-v1.md
```

## Install

From the extracted package folder, run:

```powershell
.\tools\fix-social-to-software-engineering.ps1
```

## Test

```powershell
cd D:\ibdp-cs-sl-website

npm run docs:dev
npm run docs:build
.\tools\check-vitepress-links.ps1
```

## Search again after fixing

```powershell
Get-ChildItem .\docs -Recurse -Filter *.md |
  Select-String -Pattern "social engineering|Social Engineering|extension-social-engineering" -CaseSensitive:$false

Select-String -Path ".\docs\.vitepress\config.mts" -Pattern "social engineering|Social Engineering|extension-social-engineering" -CaseSensitive:$false
```

Ideally, these should return no student-facing results.

## Commit

```powershell
git status
git add .
git commit -m "Replace social engineering section with software engineering"
git push
```
