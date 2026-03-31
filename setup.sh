#!/bin/bash

set -e

# Homebrew
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew bundle --file="$HOME/dotfiles/Brewfile"

# Stow
stow --restow --dir="$HOME/dotfiles" --target="$HOME" git zsh

# Karabiner-Elements
mkdir -p "$HOME/.config/karabiner"
stow --restow --dir="$HOME/dotfiles" --target="$HOME/.config/karabiner" karabiner-ansi
