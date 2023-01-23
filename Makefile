sync:
	rsync -avu --include='*.md' --exclude='*' --delete-excluded --delete ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Thoughts/ ./posts/
publish: sync
	git add . && git commit -m "Publishing to main" && git push origin master
