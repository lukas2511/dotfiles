#!/bin/zsh

# install
if [ ! -e ~/.config ]; then mkdir ~/.config; fi

if [ ! -e ~/.vimbackup ]; then mkdir ~/.vimbackup; fi
if [ ! -e ~/.vimrc ]; then echo 'source ~/.dotfiles/vimrc' > ~/.vimrc; fi

if [ ! -e ~/.gitconfig ]; then
	ln -s ~/.dotfiles/git/config ~/.gitconfig
fi

if command -v alacritty >/dev/null; then
	if [ ! -e ~/.config/alacritty ]; then ln -s ~/.dotfiles/alacritty ~/.config/alacritty; fi
	if [ ! -e ~/.config/alacritty/colors.yml ]; then ln -s colors-dark.yml ~/.config/alacritty/colors.yml; fi
fi

fpath=(~/.zsh.d/site-functions $fpath)
fpath=(~/.dotfiles-local/zsh.d/site-functions $fpath)

if [ -e ~/.zshrc.local ]; then
	source ~/.zshrc.local
fi

# load config
for config_file (~/.dotfiles/zsh.d/*.zsh); do
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
