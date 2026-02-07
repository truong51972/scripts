if [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    SHELL_CONFIG="$HOME/.bashrc"
fi

read -p "$(echo -e '\033[32mAdd new SSH key for git? (y/n): \033[0m')" create_key
if [ "$create_key" = "y" ] || [ "$create_key" = "Y" ]; then
    ssh-keygen -t ed25519 -f ~/.ssh/git -N ""
fi

sudo apt-get install keychain -y
SCRIPT='
# Keychain setup
eval $(keychain --eval --agents ssh git)
'

if ! grep -Fq "# Keychain setup" "$SHELL_CONFIG"; then
    echo -e "$SCRIPT" >> "$SHELL_CONFIG"
fi