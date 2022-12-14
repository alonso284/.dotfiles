#!/usr/bin/env zsh

echo "\n[Starting zsh Setup]\n"

if exists xcode; then
	# install xcode
	echo "Installing xcode"
	xcode-select --install
else
	echo "xcode already exists"
fi


