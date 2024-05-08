ZDOTDIR="${1-$HOME}"
if [[ -f "$ZDOTDIR/.zshrc" ]]; then
	source "$ZDOTDIR/.zshrc"
fi

preexec() {
	eval "$1 &|" </dev/null >/dev/null;
	exit 0
}
