#
# prompt
#
autoload -U add-zsh-hook
autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{2}%s%F{7}:%F{2}(%F{1}%b%F{2})%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git

add-zsh-hook precmd prompt_vcs

prompt_vcs () {
	if [ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" = "1" ]; then
		vcs_info_msg_0_=""
	else
		vcs_info
	fi
	if [ "${vcs_info_msg_0_}" = "" ]; then
		dir_status="%F{2}→%f"
	elif [[ $(git diff --cached --name-status 2>/dev/null ) != "" ]]; then
		dir_status="%F{1}▶%f"
	elif [[ $(git diff --name-status 2>/dev/null ) != "" ]]; then
		dir_status="%F{3}▶%f"
	else
		dir_status="%F{2}▶%f"
	fi
}

trim() {
	local var="$(cat)"
	# remove leading whitespace characters
	var="${var#"${var%%[![:space:]]*}"}"
	# remove trailing whitespace characters
	var="${var%"${var##*[![:space:]]}"}"   
	printf "%s" "${var}"
}

function {
	if [[ -n "$SSH_CLIENT" ]]; then
		if [[ -e "/etc/datacenter" ]]; then
			DATACENTER="$(trim < /etc/datacenter)"
			PROMPT_HOST=" ($DATACENTER/$HOST)"
		else
			PROMPT_HOST=" ($HOST)"
		fi
	else
		PROMPT_HOST=''
	fi
}

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg_bold[red]%}#"; else echo "%{$fg_bold[green]%}#"; fi
}

local ret_status="%(?:$(prompt_char):%{$fg_bold[red]%}%S%s%?)"

PROMPT='${ret_status}%{$fg[blue]%}${PROMPT_HOST}%{$fg_bold[green]%}%p %{$fg_bold[yellow]%}%2~ ${vcs_info_msg_0_}${dir_status}%{$reset_color%} '

setopt prompt_subst # Enable parameter expansion, command substitution, and arithmetic expansion in the prompt
setopt interactive_comments # Allow comments even in interactive shells (especially for Muness)

