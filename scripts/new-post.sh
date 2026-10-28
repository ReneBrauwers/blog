#!/usr/bin/env bash
# Usage: scripts/new-post.sh "My essay title"
# Creates a branch and content/essays/<slug>.md from the archetype (draft: true).
set -euo pipefail
title="${1:?Usage: scripts/new-post.sh \"Essay title\"}"
slug=$(printf '%s' "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')
cd "$(dirname "$0")/.."
git switch -c "post/$slug" 2>/dev/null || true
hugo new content "essays/$slug.md"
sed -i.bak "s/^title: .*/title: \"${title//\"/\\\"}\"/" "content/essays/$slug.md" && rm -f "content/essays/$slug.md.bak"
echo "Created content/essays/$slug.md on branch post/$slug"
echo "Preview: hugo server -D   |   When ready set draft: false, commit, push, open a PR."
