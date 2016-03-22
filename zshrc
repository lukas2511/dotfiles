#!/bin/zsh

# install
if [ ! -e ~/.vimbackup ]; then mkdir ~/.vimbackup; fi
if [ ! -e ~/.vimrc ]; then echo 'source ~/.dotfiles/vimrc' > ~/.vimrc; fi

if [ ! -e ~/.gitconfig ]; then
	if [ -e /System ]; then
		ln -s ~/.dotfiles/git/config_osx ~/.gitconfig
	else
		ln -s ~/.dotfiles/git/config ~/.gitconfig
	fi
fi

if [ -e /System ]; then
	if [ ! -e ~/.slate ]; then ln -s ~/.dotfiles/slate ~/.slate; fi
fi

# load config
for config_file (~/.dotfiles/zsh.d/*.zsh); do
	source $config_file
done

# local overrides
if [ -e ~/.zsh.d ]; then
	for config_file (~/.zsh.d/*.zsh); do
		source $config_file
	done
fi

