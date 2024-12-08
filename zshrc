# Check if neofetch is installed
if command -v neofetch &> /dev/null; then
    # Check if it is the first open terminal
    if [ "$SHLVL" -eq 1 ]; then
        neofetch
    fi
else
    echo "neofetch is not installed. Please install it to use this feature."
fi

# Set Variables
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

# Change ZSH Options

# Create Aliases
alias eza='eza -lah'
alias bbd='brew bundle dump --force --describe'
alias cf='cf-tool'

# Customize Prompt(s)
PROMPT="%n %1~ $ "

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Add Locations to $PATH Variable
# Add TeX (pdftex)
export PATH="/Library/TeX/texbin/:$PATH"
# Add Visual Studio Code (code)
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# Add Sublime Text 3 (subl)
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
# Add Firefow (firefox)
# export PATH="$PATH:/Applications/Firefox.app/Contents/MacOS"
export PATH="/Applications/Firefox.app/Contents/MacOS:$PATH"
# Add markdown table of contents creatio command
export PATH="/Users/alonso284/GitHub/MarkDown-Table-Of-Contents-Generator:$PATH"
export PATH=":/Users/alonso284/.cargo/bin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
# GOPATH
export PATH="/Users/alonso284/go/bin:$PATH"

# Write Handy Functions
cpp(){
	g++ -std=c++20 "$@";
}

mkcd(){
	mkdir -p "$@" && cd "$_"
}
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
