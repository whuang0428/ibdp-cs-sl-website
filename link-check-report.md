# VitePress Link Check Report

Generated: 2026-05-25 13:48:27

## Summary

| Item | Count |
|---|---:|
| Markdown files scanned | 120 |
| Valid routes found | 120 |
| Internal links checked | 259 |
| OK links | 259 |
| Broken links | 0 |
| Possible orphan pages | 5 |

## Broken Links

No broken internal links found.

## Possible Orphan Pages

These pages exist, but they may not be linked from `config.mts` navigation/sidebar.

| Route | File |
|---|---|
| `/quality-control/b2-pre-loop-pages-audit` | `docs/quality-control/b2-pre-loop-pages-audit.md` |
| `/quality-control/b2-programming-audit` | `docs/quality-control/b2-programming-audit.md` |
| `/quality-control/b2-programming-v1-1-review` | `docs/quality-control/b2-programming-v1-1-review.md` |
| `/quality-control/b3-oop-quality-audit` | `docs/quality-control/b3-oop-quality-audit.md` |
| `/quality-control/b3-oop-v1-1-quality-review` | `docs/quality-control/b3-oop-v1-1-quality-review.md` |

## Fix Rule

If a file is:

```text
docs/folder-name/file-name.md
```

The VitePress link should be:

```text
/folder-name/file-name
```

Do not include `.md` in the link.

