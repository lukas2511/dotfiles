#
# aliases
#

alias ip4="ip -4"
alias ip6="ip -6"

ifconfig_ip_color_brief() {
	for interface in $('ip' -br l | awk '{print $1}' | cut -d'@' -f1); do
		'ip' -br -c l show dev "${interface}"
		'ip' -4 -br -c a show dev "${interface}"
		'ip' -6 -br -c a show dev "${interface}"
		echo
	done
}

ifconfig_ip() {
	for interface in $('ip' l | grep '^[0-9d]' | awk '{print $2}' | cut -d':' -f1 | cut -d'@' -f1); do
		'ip' a show dev "${interface}"
		echo
	done
}

ifconfig() {
	(
		('ip' -4 -br -c a > /dev/null 2>&1 && ifconfig_ip_color_brief) ||
		('ip' a > /dev/null 2>&1 && ifconfig_ip) ||
		(command ifconfig)
	) | awk '/^$/ {nlstack=nlstack "\n";next;} {printf "%s",nlstack; nlstack=""; print;}'
}

alias blackmagic="arm-none-eabi-gdb -ex 'set target-async on' -ex 'set confirm off' -ex 'set mem inaccessible-by-default off' -ex 'target extended /dev/ttyBmpGdb' -ex 'monitor version' -ex 'monitor swdp_scan' -ex 'attach 1'"
alias blackmagic-flash="blackmagic --batch-silent -ex 'load' -ex 'detach' -ex 'quit'"

alias java-settings="itweb-settings"

