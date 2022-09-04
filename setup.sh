#!/bin/zsh

if ! [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
    echo "ZSH Doens't seem to be installed. Install that to continue"
    exit 1
fi

# Set up oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Link brewfile"
sudo ln -sf ~/first_setup/Brewfile ~/Brewfile

echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "brew bundle"
brew bundle

echo "Generating SSH Keys"
ssh-keygen -t rsa -f ~/.ssh/ssh_key -C contact@raoarjun.com -b 2048

echo "Copying public key to clipboard. Add to github"
cat ~/.ssh/ssh_key.pub | pbcopy
read -s -k $'?Press any key to continue...\n'
