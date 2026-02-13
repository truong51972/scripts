if [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    SHELL_CONFIG="$HOME/.bashrc"
fi

sudo apt install zoxide -y

TITLE="# Zoxide setup for auto directory jumping"
CONTENT='eval "$(zoxide init zsh)"'

append_if_not_exists "$TITLE" "$CONTENT" "$SHELL_CONFIG"