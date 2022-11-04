#!/usr/bin/env zsh

echo "\n[Starting Homebrew Setup]\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo brew bundle --verbose --no-lock
