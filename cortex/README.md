# LinkedIn Text Formatter — Cortex Workspace Edition

**Self-contained Agent Skill for Cortex players.** Draft in Cortex → paste-ready LinkedIn post. No browser tab.

## Install

### Windows

```powershell
git clone https://github.com/IreneYe08/linkedin-smart-formatter.git $env:USERPROFILE\linkedin-smart-formatter
Copy-Item -Recurse -Force $env:USERPROFILE\linkedin-smart-formatter\cortex $env:USERPROFILE\.cortex\skills\linkedin-text-formatter
py -3 $env:USERPROFILE\.cortex\skills\linkedin-text-formatter\scripts\linkedin_post.py --self-test
```

### macOS / Linux

```bash
git clone https://github.com/IreneYe08/linkedin-smart-formatter.git ~/linkedin-smart-formatter
cp -r ~/linkedin-smart-formatter/cortex ~/.cortex/skills/linkedin-text-formatter
python ~/.cortex/skills/linkedin-text-formatter/scripts/linkedin_post.py --self-test
```

Restart Cortex Agent (or open a new session) so the skill loads.

## What's included

| File | Purpose |
|------|---------|
| `SKILL.md` | Agent instructions |
| `linkedin-post-guideline.md` | 8-block high-performing post structure |
| `Anti-AI_Writing_Guidelines.md` | Human voice, anti-AI patterns |
| `layout-rules.md` | Smart layout heuristics |
| `scripts/` | Python formatter (stdlib only) |

## Usage in Cortex

Ask the agent:

> Format this LinkedIn post / Write a LinkedIn post about [topic] and format it for paste

The agent runs `scripts/linkedin_post.py` and returns copy-paste output.

## Update

```powershell
cd $env:USERPROFILE\linkedin-smart-formatter
git pull
Copy-Item -Recurse -Force cortex $env:USERPROFILE\.cortex\skills\linkedin-text-formatter
```

## Full repo (other platforms)

Cursor, Claude Code, Codex adapters: [github.com/IreneYe08/linkedin-smart-formatter](https://github.com/IreneYe08/linkedin-smart-formatter)
