#
# golang
#
if which go > /dev/null 2> /dev/null; then
	if [ ! -e ~/.gopath ]; then
		mkdir ~/.gopath
	fi
	export GOPATH=~/.gopath
	export PATH=$PATH:$GOPATH/bin
fi
