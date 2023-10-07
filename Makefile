sync:
	cp -r /Users/zhangzheyuan/Documents/Obsidian/Thoughts/*.jpg /Users/zhangzheyuan/Documents/Obsidian/Thoughts/*.md  ./posts/
publish: sync
	git add . && git commit -m "Publishing to main" && git push origin master
