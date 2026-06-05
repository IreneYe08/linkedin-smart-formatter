---
name: linkedin-text-formatter
description: >-
  Smart LinkedIn post formatter for Cortex Workspace: auto hook promotion, line
  breaks, bold, lists, hashtags, Unicode styling. Use when formatting LinkedIn
  posts, GTM copy, paste-ready LinkedIn content, or social posts in Cortex Agent.
---

# LinkedIn Text Formatter (Cortex Workspace)

Install: clone repo → run `./install.sh` — symlinks to `~/.cortex/skills/linkedin-text-formatter`.

Manual install:

```bash
ln -sfn /path/to/linkedin-smart-formatter/skills/cortex ~/.cortex/skills/linkedin-text-formatter
echo /path/to/linkedin-smart-formatter > ~/.linkedin-formatter-home
```

## Run

```bash
python "${LINKEDIN_FORMATTER_HOME}/scripts/linkedin_post.py" --file draft.txt --count --explain
```

Full agent workflow: [skills/_shared/workflow.md](../_shared/workflow.md)

## Cortex use cases

- PM / GTM drafts → paste-ready LinkedIn posts
- Research report promotion (keep `"Report Title 2026"` in plain ASCII)
- Long-form notes → mobile-friendly spacing + CTA question italic

Details: [docs/layout-rules.md](../../docs/layout-rules.md)
