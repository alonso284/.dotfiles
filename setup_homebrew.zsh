#!/usr/bin/env zsh

echo "\n[Starting Homebrew Setup]\n"

if exists homebrew; then
    # Install Homebrew
	echo "brew doesn't exist, continuing with install"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "brew already exists, skipping step"
	# echo "brew exist, continuing with update"
    # brew update
fi

brew bundle --verbose --no-lock
