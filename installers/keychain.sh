read -p "$(color_text "Create new SSH key for git? (y/n): " "green")" create_key
if [ "$create_key" = "y" ] || [ "$create_key" = "Y" ]; then
    ssh-keygen -t ed25519 -f ~/.ssh/git -N ""
fi

sudo apt-get install keychain -y
TITLE="# Keychain setup"
CONTENT='eval $(keychain --quiet --eval --agents ssh git)'
append_if_not_exists_in_script "$TITLE" "$CONTENT"