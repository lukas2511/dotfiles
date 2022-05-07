#!/bin/zsh

if [ -z "${DOTFILES:-}" ]; then
	DOTFILES=~/.dotfiles
fi

# install
if [ ! -e ~/.config ]; then mkdir ~/.config; fi

if [ ! -e ~/.vimbackup ]; then mkdir ~/.vimbackup; fi
if [ ! -e ~/.vimrc ]; then
	echo "set runtimepath+=${DOTFILES}/vim" > ~/.vimrc
	echo "source ${DOTFILES}/vimrc" >> ~/.vimrc
fi

if [ ! -e ~/.gitconfig ]; then
	ln -s ${DOTFILES}/git/config ~/.gitconfig
fi

if command -v alacritty >/dev/null && [ ! -e ~/.config/alacritty ]; then
	mkdir ~/.config/alacritty
	for file in colors-dark.yml colors-light.yml switchcolors.sh; do
		ln -s ${DOTFILES}/alacritty/$file ~/.config/alacritty/$file
	done
	printf 'import:\n  - %s/alacritty/alacritty.yml\n  - /home/lukas2511/.config/alacritty/colors.yml' "${DOTFILES}" > ~/.config/alacritty/alacritty.yml
	if [ ! -e ~/.config/alacritty/colors.yml ]; then ln -s colors-dark.yml ~/.config/alacritty/colors.yml; fi
fi

fpath=(~/.zsh.d/site-functions $fpath)
fpath=(~/.dotfiles-local/zsh.d/site-functions $fpath)

if [ -e ~/.zshrc.local ]; then
	source ~/.zshrc.local
fi

# load config
for config_file (${DOTFILES}/zsh.d/*.zsh); do
	source $config_file
done

# local overrides
if [ -e ~/.dotfiles-local/zsh.d ]; then
	for config_file (~/.dotfiles-local/zsh.d/*.zsh); do
		source $config_file
	done
fi

if [ -e ~/.zsh.d ]; then
	for config_file (~/.zsh.d/*.zsh); do
		source $config_file
	done
fi

if [ -e ~/.dotfiles-local/zshrc.late ]; then
	source ~/.dotfiles-local/zshrc.late
fi
