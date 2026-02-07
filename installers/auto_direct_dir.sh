if [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
else
    SHELL_CONFIG="$HOME/.bashrc"
fi

SCRIPT='
# Auto change to the last working directory on shell startup
if [ -f ~/.last_dir ]; then
    cd "$(cat ~/.last_dir)"
fi
cd() {
    builtin cd "$@" || return
    pwd > ~/.last_dir
}
'

append_if_not_exists "$SCRIPT" "$SHELL_CONFIG"