#!/usr/bin/env bash
set -euo pipefail

if command -v brew >/dev/null 2>&1 && [ -d /opt/homebrew/bin ]; then
  dest="/opt/homebrew/bin"
else
  dest="/usr/local/bin"
fi

chmod +x ./kys
sudo cp ./kys "$dest/kys"
echo "Installed 'kys' to $dest"
echo "Run: kys"