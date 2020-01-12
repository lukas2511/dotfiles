#
# keybindings
#
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
	function zle-line-init() {
		echoti smkx
	}
	function zle-line-finish() {
		echoti rmkx
	}
	zle -N zle-line-init
	zle -N zle-line-finish
fi

bindkey -e
bindkey '^r' history-incremental-search-backward
if [[ "${terminfo[kpp]}" != "" ]]; then bindkey "${terminfo[kpp]}" up-line-or-history; fi
if [[ "${terminfo[knp]}" != "" ]]; then bindkey "${terminfo[knp]}" down-line-or-history; fi
if [[ "${terminfo[kcuu1]}" != "" ]]; then bindkey "${terminfo[kcuu1]}" up-line-or-search; fi
if [[ "${terminfo[kcud1]}" != "" ]]; then bindkey "${terminfo[kcud1]}" down-line-or-search; fi
if [[ "${terminfo[khome]}" != "" ]]; then bindkey "${terminfo[khome]}" beginning-of-line; fi
if [[ "${terminfo[kend]}"  != "" ]]; then bindkey "${terminfo[kend]}"  end-of-line; fi
bindkey ' ' magic-space

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

if [[ "${terminfo[kcbt]}" != "" ]]; then bindkey "${terminfo[kcbt]}" reverse-menu-complete; fi
bindkey '^?' backward-delete-char
if [[ "${terminfo[kdch1]}" != "" ]]; then
	bindkey "${terminfo[kdch1]}" delete-char
else
	bindkey "^[[3~" delete-char
	bindkey "^[3;5~" delete-char
	bindkey "\e[3~" delete-char
fi

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

bindkey "^[m" copy-prev-shell-word

# url quoting
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# fancy ctrl-z
fancy-ctrl-z () {
	if [[ $#BUFFER -eq 0 ]]; then
		BUFFER="fg"
		zle accept-line
	else
		zle push-input
		zle clear-screen
	fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

