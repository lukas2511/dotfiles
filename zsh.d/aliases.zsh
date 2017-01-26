#
# aliases
#

alias ip4="ip -4"
alias ip6="ip -6"

alias blackmagic="arm-none-eabi-gdb -ex 'set target-async on' -ex 'set confirm on' -ex 'set mem inaccessible-by-default off' -ex 'target extended /dev/ttyBmpGdb' -ex 'monitor version' -ex 'monitor swdp_scan' -ex 'attach 1'"
alias blackmagic-flash="blackmagic -ex 'load' -ex 'detach' -ex 'quit'"

