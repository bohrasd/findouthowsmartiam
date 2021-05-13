---
title: "you don't even need a browser to watch youtube video"
published_date: "2021-05-13 08:59:38 +0000"
layout: default.liquid
is_draft: false
---
# Just a bash one-liner will do

Well an API KEY still needed which is a bummer

```
mpv https://www.youtube.com/watch?v=$(curl -G
https://www.googleapis.com/youtube/v3/search?part=snippet\&type=video\&maxResults=30\&key=YOUR_YOUTUBE_API_KEY \
--data-urlencode "q=the ink spot" \ # your search term here
| jq -r '.items[] | ([.id.videoId,.snippet.title] | join(":"))' \
| fzf --with-nth=2.. --delimiter=: \
| cut -d: -f1 -)
```
