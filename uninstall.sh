#!/usr/bin/env bash
set -euo pipefail
dest=""
for d in /usr/local/bin /opt/homebrew/bin; do
  [ -x "$d/kys" ] && dest="$d"
done
if [ -n "$dest" ]; then
  sudo rm -f "$dest/kys"
  echo "Removed $dest/kys"
else
  echo "Nothing to remove"
fi