# Agent workflow (all platforms)

Resolve the CLI path:

1. `$LINKEDIN_FORMATTER_HOME/scripts/linkedin_post.py` if env var is set
2. Else read `~/.linkedin-formatter-home` (written by `install.sh` / `install.ps1`)
3. Else `~/linkedin-smart-formatter/scripts/linkedin_post.py` or `~/Projects/linkedin-smart-formatter/scripts/linkedin_post.py`
4. Else `scripts/linkedin_post.py` inside this repo clone

**Never hand-convert Unicode.** Always run the CLI.

## Command

```bash
python "<CLI>" --file "<draft.txt>" --count --explain
```

Windows: save long drafts to `%TEMP%\draft.txt`. Use `py -3` if `python` is not on PATH. Set `PYTHONIOENCODING=utf-8` if output garbles.

## Deliver to user

1. Paste-ready post in a plain code fence
2. Short bullet summary from `--explain`
3. LinkedIn char count if >2500
4. One-line disclaimer: Unicode bold hurts search/accessibility — don't bold keywords

## Flags

| Flag | Use when |
|------|----------|
| `--less-bold` | User wants hook only |
| `--no-hashtags` | User provides their own tags |
| `--hashtags 3` | Fewer footer tags |
| `--no-promote-hook` | Keep original line order |

## Docs

- `docs/layout-rules.md` — heuristics
- `docs/reference.md` — Unicode limits
