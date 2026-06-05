# LinkedIn Smart Formatter — Codex / CLI Agent snippet

Add this section to your project `AGENTS.md`, `CODEX.md`, or agent instructions file.

---

## LinkedIn post formatting

When the user asks to format, polish, or prepare a LinkedIn post:

1. Save the draft to a temp file (avoid shell escaping on long text).
2. Run the formatter CLI (requires Python 3.8+):

```bash
python /path/to/linkedin-smart-formatter/scripts/linkedin_post.py \
  --file /tmp/draft.txt --count --explain
```

3. Return the stdout as a paste-ready code block.
4. Summarize `--explain` actions in 3–5 bullets.
5. Never hand-type Unicode bold/italic characters.

### Install

```bash
git clone https://github.com/IreneYe08/linkedin-smart-formatter.git ~/linkedin-smart-formatter
echo ~/linkedin-smart-formatter > ~/.linkedin-formatter-home
export LINKEDIN_FORMATTER_HOME=~/linkedin-smart-formatter
```

### Flags

- `--less-bold` — hook only, no section headers
- `--no-hashtags` — skip auto hashtag suggestions
- `--hashtags 3` — limit footer tags
- `--self-test` — regression checks

### Limitations

Unicode “bold” is not real rich text. It hurts LinkedIn search and screen readers. Do not bold keywords the user wants discoverable. Report titles with years stay plain ASCII by design.

Full docs: `docs/layout-rules.md`, `docs/reference.md`

---
