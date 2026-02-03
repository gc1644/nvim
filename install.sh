#!/usr/bin/env bash
git -C ~/.config/nvim pull 2>/dev/null || git clone --depth=1 https://github.com/gc1644/nvim ~/.config/nvim
