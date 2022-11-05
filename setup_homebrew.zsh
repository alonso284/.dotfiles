#!/usr/bin/env zsh

echo "\n[Starting Homebrew Setup]\n"

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
	echo "brew doesn't exist, continuing with install"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "brew exist, continuing with update"
    brew update
fi

brew bundle --verbose --no-lock
