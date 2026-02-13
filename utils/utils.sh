# Append content to file if not already present, including a comment
# Usage: append_if_not_exists "comment" "content" "file"
append_if_not_exists() {
	local comment="$1"
	local content="$2"
	local file="$3"

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
