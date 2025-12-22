#!/usr/bin/env bash
set -e

echo "=== Installing Claude Code ==="

# Claude installer
curl -fsSL https://claude.ai/install.sh | bash

# Common install location is ~/.local/bin/claude
CLAUDE_SRC="$HOME/.local/bin/claude"
CLAUDE_DST="/usr/local/bin/claude"

if [ -f "$CLAUDE_SRC" ]; then
  chmod +x "$CLAUDE_SRC"
  ln -sf "$CLAUDE_SRC" "$CLAUDE_DST"
  echo "Symlinked: $CLAUDE_DST -> $CLAUDE_SRC"
else
  echo "ERROR: Claude binary not found at $CLAUDE_SRC"
  exit 1
fi

echo "=== Verifying Claude ==="
claude --version

echo "=== Claude installation complete ==="
