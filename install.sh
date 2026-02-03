#!/usr/bin/env bash

REPO="https://github.com/gc1644/nvim"
DEST="$HOME/.config/nvim"

git -C "$DEST" pull 2>/dev/null || git clone --depth=1 "$REPO" "$DEST"
rm -f "$DEST/install.sh"
