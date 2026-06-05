---
name: linkedin-text-formatter
description: >-
  Smart LinkedIn post formatter for Cursor: auto hook promotion, line breaks, bold,
  lists, hashtags, plain-text report titles, Unicode styling. Use when formatting
  LinkedIn posts, paste-ready copy, Typegrow-style formatting, or LinkedIn text
  styling in Cursor Agent.
---

# LinkedIn Text Formatter (Cursor)

Install repo once, then run `./install.sh` or `install.ps1` — symlinks this skill to `~/.cursor/skills/linkedin-text-formatter`.

## Run

```bash
python "${LINKEDIN_FORMATTER_HOME}/scripts/linkedin_post.py" --file draft.txt --count --explain
```

Resolve CLI path per [skills/_shared/workflow.md](../_shared/workflow.md).

## Smart layout

| Signal | Action |
|--------|--------|
| Long opener + punchy line 2 | Promote hook to top |
| First line hook | Bold sans |
| `The challenge is …` / `**manual**` | Bold thesis |
| Lists, stats, CTA questions | Auto format |
| Report titles `"…2026" report` | Plain ASCII (no Unicode italic) |
| Content keywords | Auto hashtags (footer) |

See [docs/layout-rules.md](../../docs/layout-rules.md).
