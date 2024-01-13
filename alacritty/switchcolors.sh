#!/usr/bin/env bash

set -e
set -o pipefail

cd ~/.config/alacritty

current="$(readlink colors.toml)"

if [ "${current}" = "colors-dark.toml" ]; then
	ln -sf colors-light.toml colors.toml
else
	ln -sf colors-dark.toml colors.toml
fi

touch alacritty.toml
