#!/usr/bin/env bash
# Pull the latest version of every third-party skill listed in vendor.txt.
# Review the diff, then commit what you want to keep.
set -euo pipefail
cd "$(dirname "$0")/.."
DEST=plugins/anstapol-config/skills
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

grep -v '^#' scripts/vendor.txt | while read -r repo path name; do
  [ -n "$repo" ] || continue
  key=${repo//\//_}
  if [ ! -d "$TMP/$key" ]; then
    mkdir -p "$TMP/$key"
    gh api "repos/$repo/tarball" | tar -xz -C "$TMP/$key" --strip-components=1
  fi
  rm -rf "$DEST/$name"
  cp -R "$TMP/$key/$path" "$DEST/$name"
  echo "$name  <-  $repo/$path"
done
echo
git status --short "$DEST"
