# IA Support Old Pages Cleanup Plan

## 1. Purpose

This is an internal planning document for cleaning up old IA Support pages after the official A-E structure has been created. This file should not be published to the student site.

The goal is to avoid confusing students with two competing IA structures. The new official-file-led route should become the visible IA Support structure, while old generic pages should be removed later only after link safety checks are complete.

## 2. Current IA Support Folder

Current folder inspected:

```text
docs/ia-support/
```

| File | New or old structure | Current role | Recommended action |
| ---- | -------------------- | ------------ | ------------------ |
| `index.md` | New structure | IA Support landing page for the official A-E overview | Keep |
| `computational-solution-overview.md` | New structure | Explains the IA as a computational solution | Keep |
| `choosing-a-suitable-problem.md` | New structure | Helps students choose a suitable IA problem | Keep |
| `criterion-a-problem-specification.md` | New structure | Guide for Criterion A: Problem specification | Keep |
| `criterion-b-planning.md` | New structure | Guide for Criterion B: Planning | Keep |
| `criterion-c-system-overview.md` | New structure | Guide for Criterion C: System overview | Keep |
| `criterion-d-development.md` | New structure | Guide for Criterion D: Development | Keep |
| `criterion-e-evaluation.md` | New structure | Guide for Criterion E: Evaluation | Keep |
| `ethics-and-academic-integrity.md` | New structure | Guide for ethics, consent, privacy, sources, AI, and originality | Keep |
| `submission-checklist.md` | New structure | Final IA submission checklist | Keep |
| `ia-overview.md` | Old structure | Legacy broad IA overview | Remove later |
| `problem-analysis.md` | Old structure | Legacy problem analysis page | Remove later |
| `design-and-success-criteria.md` | Old structure | Legacy design and criteria page | Remove later |
| `development-and-testing.md` | Old structure | Legacy development and testing page | Remove later |
| `evaluation-and-reflection.md` | Old structure | Legacy evaluation and reflection page | Remove later |
| `ia-checklist.md` | Old structure | Legacy IA checklist page | Remove later |

## 3. Old IA Pages

| Old page | Status | Possible replacement | Recommended action | Reason |
| -------- | ------ | -------------------- | ------------------ | ------ |
| `ia-overview.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `computational-solution-overview.md` | Remove later if no internal links remain | The new page explains the IA as a computational solution using the updated structure. |
| `problem-analysis.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `criterion-a-problem-specification.md` | Remove later if no internal links remain | Criterion A now covers problem scenario, requirements, success criteria, and computational context. |
| `design-and-success-criteria.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `criterion-a-problem-specification.md` and `criterion-b-planning.md` | Remove later if no internal links remain | Success criteria now belong mainly with Criterion A, while planning belongs with Criterion B. |
| `development-and-testing.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `criterion-c-system-overview.md` and `criterion-d-development.md` | Remove later if no internal links remain | System overview and development evidence are now separated into Criteria C and D. |
| `evaluation-and-reflection.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `criterion-e-evaluation.md` | Remove later if no internal links remain | Criterion E now focuses on evidence-based product evaluation rather than generic reflection. |
| `ia-checklist.md` | Exists; hidden from IA sidebar; no internal Markdown links found | `submission-checklist.md` | Remove later if no internal links remain | The new checklist is organised around official deliverables and Criteria A-E. |

Do not remove files in this planning step.

## 4. Link Search Results

Search scope used:

```text
docs/**/*.md
docs/.vitepress/config.mts
```

| Search pattern | Found in files | Action needed |
| -------------- | -------------- | ------------- |
| `ia-overview` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |
| `problem-analysis` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |
| `design-and-success-criteria` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |
| `development-and-testing` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |
| `evaluation-and-reflection` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |
| `ia-checklist` | No internal links found | No link update needed before cleanup, but confirm again before deletion. |

No internal links found.

## 5. Recommended Cleanup Strategy

1. Confirm build and link check currently pass.
2. Update any remaining internal links from old IA pages to new IA pages.
3. Run build and link check again.
4. Remove old IA markdown files only after no links remain.
5. Run build and link check again.
6. Commit the cleanup separately.

## 6. Files That Should Be Removed Later If Safe

```text
docs/ia-support/ia-overview.md
docs/ia-support/problem-analysis.md
docs/ia-support/design-and-success-criteria.md
docs/ia-support/development-and-testing.md
docs/ia-support/evaluation-and-reflection.md
docs/ia-support/ia-checklist.md
```

Only remove these files after confirming no sidebar links or internal markdown links point to them.

## 7. Commands for Manual Verification

```powershell
cd D:\ibdp-cs-sl-website

Select-String -Path ".\docs\.vitepress\config.mts" -Pattern "ia-overview|problem-analysis|design-and-success-criteria|development-and-testing|evaluation-and-reflection|ia-checklist" -CaseSensitive:$false

Get-ChildItem .\docs -Recurse -Filter *.md |
  Select-String -Pattern "ia-overview|problem-analysis|design-and-success-criteria|development-and-testing|evaluation-and-reflection|ia-checklist" -CaseSensitive:$false |
  Select-Object Path, LineNumber, Line

npm run docs:build
.\tools\check-vitepress-links.ps1
git status
```

## 8. Later Cleanup Commit Plan

Suggested future commit after actual deletion:

```powershell
git add .
git commit -m "Remove old IA support pages"
git push
```

## 9. Recommendation Summary

The new official IA Support structure should become the only visible IA route for students. Old generic IA pages should be removed later if they are no longer linked, so students are not confused by two competing IA structures.
