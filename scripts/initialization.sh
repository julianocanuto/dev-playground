#!/usr/bin/env bash
set -e

echo "=== Initializing system ==="

apt-get update
apt-get install -y \
  curl \
  ca-certificates

echo "=== System initialization complete ==="
