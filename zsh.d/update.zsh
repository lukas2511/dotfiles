update-dotfiles() {
	cd ~/.dotfiles
	git stash save --keep-index autoupdate
	git pull
	git stash pop 2>/dev/null || true
	popd > /dev/null
	source ~/.dotfiles/zshrc
}

dotfiles-new-origin() {
	cd ~/.dotfiles
	git remote remove origin
	git remote add origin ${1}
	git fetch origin
	git branch --set-upstream-to=origin/master master
	update-dotfiles
	popd > /dev/null
}
