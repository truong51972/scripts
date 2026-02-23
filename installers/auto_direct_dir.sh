TITLE="# Auto change to the last working directory on shell startup"
CONTENT=(
'if [ -f ~/.last_dir ]; then
    cd "$(cat ~/.last_dir)"
fi
cd() {
    builtin cd "$@" || return
    pwd > ~/.last_dir
}'
)

append_if_not_exists_in_script "$TITLE" "$CONTENT"