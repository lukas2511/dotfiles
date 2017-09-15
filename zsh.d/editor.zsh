if [ -e "/usr/local/bin/vim" ]; then
	export EDITOR='/usr/local/bin/vim'
else
	export EDITOR='vim'
fi
export PAGER='less'
export LESS='-R'
alias nvim="${EDITOR}"
alias vim="${EDITOR}"
alias vi="${EDITOR}"
alias e="${EDITOR}"
alias ed="${EDITOR}"

