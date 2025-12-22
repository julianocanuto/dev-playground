#!/usr/bin/env bash
set -e

# Always ensure scripts are executable (Windows mounts can drop +x)
chmod +x /workspace/scripts/*.sh || true

# Run setup scripts
/workspace/scripts/initialization.sh
/workspace/scripts/install-git.sh
/workspace/scripts/install-claude-code.sh

# Keep container alive / interactive
exec bash -l
