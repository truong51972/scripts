# Append content to file if not already present, including a comment
# Usage: append_if_not_exists_in_script "comment" "content"
append_if_not_exists_in_script() {
	if [ -f "$HOME/.zshrc" ]; then
    	local file="$HOME/.zshrc"
	else
		local file="$HOME/.bashrc"
	fi

	local comment="$1"
	local content="$2"

	# Check if the comment exists in the file
	if ! grep -Fq "$comment" "$file" 2>/dev/null; then
		echo -e "$comment" >> "$file"
		echo -e "$content" >> "$file"
		echo "" >> "$file"
	fi
}

# Colorize text output
# Usage: color_text "text" "color"
# Supported colors: red, yellow, green
color_text() {
	local text="$1"
	local color="$2"
	local color_code=""
	case "$color" in
		red)
			color_code="\033[31m" ;;
		yellow)
			color_code="\033[33m" ;;
		green)
			color_code="\033[32m" ;;
		*)
			color_code="" ;;
	esac
	echo -e "${color_code}${text}\033[0m"
}


add_plugin_if_not_exists() {
	local plugin="$1"
	local file="$HOME/.zshrc"

	if ! grep -Fq "plugins=(.*$plugin.*)" "$file" 2>/dev/null; then
		sed -i "/^plugins=(/ s/)/ $plugin)/" "$file"
	fi
}