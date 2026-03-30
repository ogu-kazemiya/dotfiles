#!/bin/bash

set -e

# Homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

echo "Installing packages from Brewfile..."
brew bundle --file="$HOME/dotfiles/Brewfile"
echo "Packages installed."
