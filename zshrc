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

# Create Aliases
alias eza='eza -lah'
alias exa='eza'
alias bbd='brew bundle dump --force --describe'
alias cf='cf-tool'
alias c='clang++ -Wall -Wconversion -Wfatal-errors -g -std=c++17 \
	-fsanitize=undefined,address'
alias clab='docker run --rm -it --privileged \
    --network host \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/run/netns:/var/run/netns \
    -v /etc/hosts:/etc/hosts \
    -v /var/lib/docker/containers:/var/lib/docker/containers \
    --pid="host" \
    -v $(pwd):$(pwd) \
    -w $(pwd) \
    ghcr.io/srl-labs/clab bash'

# Customize Prompt(s)
PROMPT="%n %1~ $ "

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Add Locations to $PATH Variable
# Add TeX (pdftex)
export PATH="/Library/TeX/texbin/:$PATH"
# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# Add Sublime Text 3 (subl)
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
# Add Firefow (firefox)
export PATH="/Applications/Firefox.app/Contents/MacOS:$PATH"
# Add markdown table of contents creatio command
export PATH="/Users/alonso284/GitHub/MarkDown-Table-Of-Contents-Generator:$PATH"
export PATH=":/Users/alonso284/.cargo/bin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
# GOPATH
export PATH="/Users/alonso284/go/bin:$PATH"
# JAVA
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Write Handy Functions
cpp(){
	g++ -std=c++20 "$@";
}

mkcd(){
	mkdir -p "$@" && cd "$_"
}

mkcpp() {
    TEMPLATE=~/template/io.cpp

    # directory mode
    if [ "$1" = "-d" ] || [ "$1" = "--dir" ]; then
        if [ -z "$2" ]; then
            echo "Usage: mkcpp -d <dirname>"
            return 1
        fi

        DIR="$2"

        # create directory if not exists
        mkcd "$DIR"

        # files to generate (a.cpp ... m.cpp)
        for f in {a..m}; do
            cp "$TEMPLATE" "$f.cpp"
        done

        echo "Created directory '$DIR' with all files"
        return 0
    fi

    # normal mode: mkcpp filename.cpp
    if [ -z "$1" ]; then
        echo "Usage: mkcpp <filename> OR mkcpp -d <dirname>"
        return 1
    fi

    cp "$TEMPLATE" "$1"
    echo "Created $1 from template."
}

qemu-snap() {
  local img="$1"

  if [[ -z "$img" ]]; then
    echo "usage: qemu-snap <disk.img|disk.qcow2>"
    return 1
  fi

  qemu-system-x86_64 \
	  -m 16G \
	  -drive file="$img",format=raw,snapshot=on \
	  -cpu host
}

export PATH="${PATH}:/Users/alonso284/.azureauth/0.9.2"

# BEGIN Agency MANAGED BLOCK
if [[ ":${PATH}:" != *":/Users/alonso284/.config/agency/CurrentVersion:"* ]]; then
    export PATH="/Users/alonso284/.config/agency/CurrentVersion:${PATH}"
fi
# END Agency MANAGED BLOCK

# BEGIN claude-cli MANAGED BLOCK
if [[ ":${PATH}:" != *":/Users/alonso284/.claude-cli/CurrentVersion:"* ]]; then
    export PATH="/Users/alonso284/.claude-cli/CurrentVersion:${PATH}"
fi
# END claude-cli MANAGED BLOCK
