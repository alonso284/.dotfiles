# UNIX configuration files

# Manuel Configurations
- Run `./install`
- Run `./setup_xcode.zsh`
- Run `./setup_homebrew.zsh`
- Run `./setup_vim.zsh`
- Set terminal font and colors
	- Text > Homebrew
	- Text > Font > Hack Regular Nerd Font Complete 12
	- Keyboard > Use Option as Meta key
- `cf config`
- `mullvad account login`
- `aws config`
- github ssh keys (for terminal and gitkraken)
- Set up MacOS configuration

# How to...

- [Manage vim plugins](https://github.com/junegunn/vim-plug)
- [Connect to github with SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- [Install Rust LSP](https://rust-analyzer.github.io/manual.html#installation)
- [Install Rust Yew](https://yew.rs/docs/getting-started/introduction)

# Cheat sheets
- [Vim](https://vim.rtorr.com/)
- [Latex](http://www.utc.fr/~jlaforet/Suppl/latex-cheatsheet.pdf)
- [Latex Symbols](https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols)

# Brewfile options
- `brew bundle dump -f --cask --mas --tage --describe` update Brewfile
- `brew bundle --global --cleanup` update packages

# Add LightSail SSH KEY
- Download ssh key from lightsail instance configurations page
- `mv $PATH/LightsailDefaultKey-<region>.pem ~/.ssh`
- `chmod 400 ~/.ssh/LightsailDefaultKey-<region>.pem`
- `ssh <user>@<ip_address> -i .ssh/LightsailDefaultKey-<region>.pem`

# Other installations
- rustup-init (once brew packages are installed)
- npm -g ______ (nmp global packages are inside the nmp folder)
- pip3 dependencies
