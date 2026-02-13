sudo apt install zsh -y
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Set Zsh as the default shell
chsh -s $(which zsh)

# setup autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '/^plugins=(git)$/c\plugins=(\n\tgit\n\tzsh-autosuggestions\n)' ~/.zshrc

# setup syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
TITLE="# setup syntax highlighting"
CONTENT='source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
append_if_not_exists "$TITLE" "$CONTENT" "${ZDOTDIR:-$HOME}/.zshrc"