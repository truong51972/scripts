sudo apt install zoxide -y

TITLE="# Zoxide setup for auto directory jumping"
CONTENT='eval "$(zoxide init zsh)"'

append_if_not_exists_in_script "$TITLE" "$CONTENT"