# install xcode
xcode-select --install

# -----------------------------------------------------------------------

# config git
git config global user.name "alonso284"
git config global user.name "alonso12_284@outlook.com"

# Generating a new SSH key
ssh-keygen -t ed25519 -C "alonso12_284@outlook.com"

# Adding your SSH key to the ssh-agent
eval "$(ssh-agent -s)"

# Automatically load keys into the ssh-agent and store passphrases in your keychain
touch ~/.ssh/config
open ~/.ssh/config

#	Host *.github.com
#  		AddKeysToAgent yes
#  		UseKeychain yes
#  		IdentityFile ~/.ssh/id_ed25519

# Add your SSH private key to the ssh-agent
ssh-add ~/.ssh/id_ed25519

# store your passphrase in the keychain
#ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Adding a new SSH key to your account
pbcopy < ~/.ssh/id_ed25519.pub

# Paste on https://github.com/settings/ssh/new

# Testing your SSH connection
ssh -T git@github.com
