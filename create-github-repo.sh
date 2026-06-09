#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-ai-coding-platform-installer}"

git init
git add .
git commit -m "Initial AI coding platform installer"

# Requires GitHub CLI: sudo apt install gh && gh auth login
gh repo create "$REPO_NAME" --public --source=. --remote=origin --push
