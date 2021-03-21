#
# directory behaviour
#
setopt auto_cd # If you type foo, and it isn't a command, and it is a directory in your cdpath, go there
setopt cdablevarS # if argument to cd is the name of a parameter whose value is a valid directory, it will become the current directory
setopt pushd_ignore_dups # don't push multiple copies of the same directory onto the directory stack

setopt auto_pushd
setopt pushdminus

alias cd..='cd ../'
alias cd...='cd ../../'
alias cd....='cd ../../..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
alias ltr='ls -ltr'

function strcd {
	echo "$(pwd)" > ~/.zsh-stored-cd
}

function clrcd {
	rm -f ~/.zsh-stored-cd
}

function rescd() {
	if [ -f ~/.zsh-stored-cd ]; then
		cd "$(cat ~/.zsh-stored-cd)"
	fi
}

rescd

rangercd() {
	tmp="$(mktemp /tmp/zsh-XXXXXX)"
	ranger --choosedir="${tmp}"
	if [ -f "${tmp}" ]; then
		dir="$(cat "${tmp}")"
		rm "${tmp}"
		[ -d "${dir}" ] && cd "${dir}"
	fi
}
bindkey -s '^o' 'rangercd\n'
