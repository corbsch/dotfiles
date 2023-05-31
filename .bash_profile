# Load .aliases and other files
for file in ~/.{aliases,functions,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
unset file

# git autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
