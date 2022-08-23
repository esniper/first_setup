#!/usr/local/bin/zsh

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

echo "brew bundle"
brew bundle