git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
TITLE="# Powerlevel10k theme setup"
CONTENT='source ~/powerlevel10k/powerlevel10k.zsh-theme'

append_if_not_exists_in_script "$TITLE" "$CONTENT"

cp ./config/.p10k.zsh ~/.p10k.zsh

TITLE="# Powerlevel10k configuration setup"
CONTENT='[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh'

append_if_not_exists_in_script "$TITLE" "$CONTENT"
