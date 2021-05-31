---
title: "pop some bash automatically, get smart everyday"
published_date: "2021-05-31 05:48:54 +0000"
layout: default.liquid
is_draft: false
---
#### I knew the title is lame but this is actually useful I did it I promise

put this into your bashrc/zshrc

```
cowsay -f $(cowsay -l | tail -n +2 | xargs -n1 | shuf -n 1) $(whatis $(ls /usr/share/man/man1 | shuf -n 1 | cut -d. -f1) 2>/dev/null)
```

The random cowsay part is way more crutial than you think. You won't ignore those command line tips once a huge ascii image showed up.
