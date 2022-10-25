# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'

# Customize Prompt(s)

# Add Locations to $PATH Variable

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