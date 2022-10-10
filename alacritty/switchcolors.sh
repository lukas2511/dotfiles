#!/usr/bin/env bash

set -e
set -o pipefail

cd ~/.config/alacritty

current="$(readlink colors.yml)"

if [ "${current}" = "colors-dark.yml" ]; then
	ln -sf colors-light.yml colors.yml
else
	ln -sf colors-dark.yml colors.yml
fi

touch alacritty.yml
