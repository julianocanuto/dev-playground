#!/usr/bin/env bash
set -e

echo "=== Installing Tmux ==="

apt-get install -y tmux

tmux -V

echo "=== Tmux installation complete ==="
