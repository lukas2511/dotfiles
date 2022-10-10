#
# history
#
if [ -n "${CUSTOM_HISTFILE:-}" ]; then
	HISTFILE="${CUSTOM_HISTFILE}"
	unset CUSTOM_HISTFILE
fi
if [ -z "${HISTFILE:-}" ]; then
	HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=100000
SAVEHIST=100000

setopt extended_history # save timestamp of command and duration
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_ignore_space # remove command line from history list when first character on the line is a space
setopt hist_verify # don't execute, just expand history
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt share_history # imports new commands and appends typed commands to history

alias history='fc -il 1'
