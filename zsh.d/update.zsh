update-dotfiles() {
	cd ~/.dotfiles
	git stash save --keep-index autoupdate
	git pull
	git stash pop 2>/dev/null || true
	popd > /dev/null
}
