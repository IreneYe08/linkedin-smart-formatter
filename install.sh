#!/usr/bin/env bash
# Install LinkedIn Smart Formatter for Cursor, Claude Code, and Cortex.
set -euo pipefail
REPO="$(cd "$(dirname "$0")" && pwd)"
MARKER="$HOME/.linkedin-formatter-home"
echo "$REPO" > "$MARKER"

mkdir -p "$HOME/.cursor/skills"
mkdir -p "$HOME/.claude/skills"
mkdir -p "$HOME/.cortex/skills"

ln -sfn "$REPO/skills/cursor" "$HOME/.cursor/skills/linkedin-text-formatter"
ln -sfn "$REPO/skills/claude-code" "$HOME/.claude/skills/linkedin-text-formatter"
ln -sfn "$REPO/skills/cortex" "$HOME/.cortex/skills/linkedin-text-formatter"

export LINKEDIN_FORMATTER_HOME="$REPO"
echo "Installed linkedin-smart-formatter"
echo "  Repo:  $REPO"
echo "  Marker: $MARKER"
echo "  Cursor:      ~/.cursor/skills/linkedin-text-formatter"
echo "  Claude Code: ~/.claude/skills/linkedin-text-formatter"
echo "  Cortex:      ~/.cortex/skills/linkedin-text-formatter"
echo ""
echo "Test: python \"$REPO/scripts/linkedin_post.py\" --self-test"
