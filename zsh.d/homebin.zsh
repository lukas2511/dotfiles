if [ -e "${HOME}/.dotfiles/bin" ]; then
	export PATH="${HOME}/.dotfiles/bin:${PATH}"
fi
if [ -e "${HOME}/.dotfiles-local/bin" ]; then
	export PATH="${HOME}/.dotfiles-local/bin:${PATH}"
fi
if [ -e "${HOME}/.bin" ]; then
	export PATH="${HOME}/.bin:${PATH}"
fi
if [ -d "${HOME}/.local/bin" ]; then
	export PATH="${PATH}:${HOME}/.local/bin"
fi
