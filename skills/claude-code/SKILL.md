---
name: linkedin-text-formatter
description: >-
  Smart LinkedIn post formatter for Claude Code: auto hook promotion, line breaks,
  bold, lists, hashtags, Unicode styling. Use when formatting LinkedIn posts,
  paste-ready copy, or LinkedIn text styling in Claude Code sessions.
---

# LinkedIn Text Formatter (Claude Code)

Install: clone repo → run `./install.sh` — symlinks to `~/.claude/skills/linkedin-text-formatter`.

Manual install:

```bash
ln -sfn /path/to/linkedin-smart-formatter/skills/claude-code ~/.claude/skills/linkedin-text-formatter
echo /path/to/linkedin-smart-formatter > ~/.linkedin-formatter-home
```

## Run

```bash
python "$(cat ~/.linkedin-formatter-home)/scripts/linkedin_post.py" --file draft.txt --count --explain
```

Full agent workflow: [skills/_shared/workflow.md](../_shared/workflow.md)

## Smart layout

Hook promotion, thesis bold, lists, stats, engagement questions, auto hashtags, plain-text report titles. Details: [docs/layout-rules.md](../../docs/layout-rules.md).
