#!/bin/zsh

# install
if [ ! -e ~/.vimbackup ]; then mkdir ~/.vimbackup; fi
if [ ! -e ~/.vimrc ]; then echo 'source ~/.dotfiles/vimrc' > ~/.vimrc; fi

if [ ! -e ~/.gitconfig ]; then
	ln -s ~/.dotfiles/git/config ~/.gitconfig
fi

fpath=(~/.zsh.d/site-functions $fpath)

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

