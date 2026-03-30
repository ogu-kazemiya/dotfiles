eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f ~/.zprofile.local ]; then
    source ~/.zprofile.local
fi
