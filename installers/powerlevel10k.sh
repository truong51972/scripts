git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
SCRIPT='source ~/powerlevel10k/powerlevel10k.zsh-theme'
append_if_not_exists "$SCRIPT" "$HOME/.zshrc"

cp ./config/.p10k.zsh ~/.p10k.zsh
SCRIPT='[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh'
append_if_not_exists "$SCRIPT" "$HOME/.zshrc"
