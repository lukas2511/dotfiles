if [ -e "${HOME}/.bin" ]; then
	export PATH="$PATH:${HOME}/.bin"
fi
if [ -e "${HOME}/.dotfiles/bin" ]; then
	export PATH="$PATH:${HOME}/.dotfiles/bin"
fi

