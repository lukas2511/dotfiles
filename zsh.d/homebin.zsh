if [ -e "${HOME}/.dotfiles/bin" ]; then
	export PATH="${HOME}/.dotfiles/bin:${PATH}"
fi
if [ -e "${HOME}/.bin" ]; then
	export PATH="${HOME}/.bin:${PATH}"
fi
