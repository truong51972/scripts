# Append content to file if not already present
# Append content to file if not already present
# Usage: append_if_not_exists "content" "/path/to/file"
append_if_not_exists() {
	local content="$1"
	local file="$2"
	if ! grep -Fq "$content" "$file" 2>/dev/null; then
		echo -e "$content" >> "$file"
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
