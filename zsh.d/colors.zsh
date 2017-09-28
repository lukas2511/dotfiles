# colors and appearance
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

# minicom
export MINICOM="-m -c on"

# colorized manpages
man() {
	env \
	LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;31m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	PAGER="/usr/bin/env less" \
	_NROFF_U=1 \
	PATH=${HOME}/bin:${PATH} \
	man "$@"
}

alias grep="grep --color=auto"

ip -c a > /dev/null 2>&1 && alias ip="ip -c"
