#
# aliases
#

alias ip4="ip -4"
alias ip6="ip -6"

ifconfig() {
	(
		((ip -br -c a && ip -br -c l) | sort) || \
		ip a ||
		ifconfig
	) 2> /dev/null
}

alias blackmagic="arm-none-eabi-gdb -ex 'set target-async on' -ex 'set confirm off' -ex 'set mem inaccessible-by-default off' -ex 'target extended /dev/ttyBmpGdb' -ex 'monitor version' -ex 'monitor swdp_scan' -ex 'attach 1'"
alias blackmagic-flash="blackmagic --batch-silent -ex 'load' -ex 'detach' -ex 'quit'"

alias java-settings="itweb-settings"

