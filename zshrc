# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'

# Customize Prompt(s)

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Add Sublime Text 3 (subl)
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Write Handy Functions
cnr(){
	g++ -std=c++17 "$@" && ./a.out;
}

c(){
	g++ -std=c++17 "$@";
}

mkcd(){
	mkdir -p "$@" && cd "$_"
}

# Use ZSH Plugins

# ...and Other Surprises


