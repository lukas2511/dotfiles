load_rvm() {
	if [ -e ~/.rvm/scripts/rvm ]; then
		. ~/.rvm/scripts/rvm
	elif [ -e /usr/share/rvm/scripts/rvm ]; then
		. /usr/share/rvm/scripts/rvm
	fi
}
