---
name: linkedin-text-formatter
description: >-
  Smart LinkedIn post formatter for Cortex Workspace: auto hook promotion, line
  breaks, bold, lists, hashtags, Unicode styling. Use when formatting LinkedIn
  posts, GTM copy, paste-ready LinkedIn content, or social posts in Cortex Agent.
---

# LinkedIn Text Formatter (Cortex Workspace)

Install: clone [linkedin-text-formatter-cortex](https://github.com/IreneYe08/linkedin-text-formatter-cortex) into `~/.cortex/skills/linkedin-text-formatter`.

Legacy (monorepo symlink via `./install.sh`):

```bash
ln -sfn /path/to/linkedin-smart-formatter/skills/cortex ~/.cortex/skills/linkedin-text-formatter
echo /path/to/linkedin-smart-formatter > ~/.linkedin-formatter-home
```

For the full Cortex edition (guidelines + scripts), use the dedicated repo instead of this thin adapter.

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
