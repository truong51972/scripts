wget -qO- https://astral.sh/uv/install.sh | sh

TITLE="# Alias for uv python"
CONTENT=(
'alias upython="uv run python"
alias upip="uv run pip"
alias uactive="source .venv/bin/activate"'
)

append_if_not_exists_in_script "$TITLE" "$CONTENT"