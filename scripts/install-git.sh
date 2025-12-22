#!/usr/bin/env bash
set -e

echo "=== Installing Git ==="

apt-get install -y git

git --version

echo "=== Git installation complete ==="
