# VitePress Link Check Report

Generated: 2026-05-25 16:09:30

## Summary

| Item | Count |
|---|---:|
| Markdown files scanned | 113 |
| Valid routes found | 113 |
| Internal links checked | 255 |
| OK links | 255 |
| Broken links | 0 |
| Possible orphan pages | 3 |

## Broken Links

No broken internal links found.

## Possible Orphan Pages

These pages exist, but they may not be linked from `config.mts` navigation/sidebar.

| Route | File |
|---|---|
| `/interactive-demos` | `docs/interactive-demos/index.md` |
| `/interactive-demos/binary-to-denary` | `docs/interactive-demos/binary-to-denary.md` |
| `/interactive-demos/packet-switching` | `docs/interactive-demos/packet-switching.md` |

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

