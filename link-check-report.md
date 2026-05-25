# VitePress Link Check Report

Generated: 2026-05-25 15:52:51

## Summary

| Item | Count |
|---|---:|
| Markdown files scanned | 112 |
| Valid routes found | 112 |
| Internal links checked | 255 |
| OK links | 255 |
| Broken links | 0 |
| Possible orphan pages | 2 |

## Broken Links

No broken internal links found.

## Possible Orphan Pages

These pages exist, but they may not be linked from `config.mts` navigation/sidebar.

| Route | File |
|---|---|
| `/interactive-demos` | `docs/interactive-demos/index.md` |
| `/interactive-demos/binary-to-denary` | `docs/interactive-demos/binary-to-denary.md` |

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

