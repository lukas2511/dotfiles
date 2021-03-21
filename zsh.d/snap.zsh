if [ -e "/snap/bin" ]; then
	export PATH="${PATH}:/snap/bin"
fi

if [ -e "/var/lib/snapd/snap/bin" ]; then
	export PATH="${PATH}:/var/lib/snapd/snap/bin"
fi
