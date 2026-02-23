wget -qO- https://astral.sh/uv/install.sh | sh

TITLE="# Alias for uv python"
CONTENT=(
'alias upython="uv run python"
alias upip="uv run pip"'
)

append_if_not_exists_in_script "$TITLE" "$CONTENT"