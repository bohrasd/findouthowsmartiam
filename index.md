---
title: Gazillions of worthless opinions
layout: default.liquid
---
## I mean..

You see, a lot of choices here, and each one of them implicitly indicated some sort of opinion, like I'm so sick of the javascript shitstorm so I ought to use motherf\*\*\*ingwebsite css, like I'm so picky for RAM usage so I gotta use a rust binary to generate my static website, like I'm using neovim with all those plugins reproduced with some nix config in a chromebook and all those fanciness etcetera etcetera.

But deep down, you know that I know that you know that I don't care. There's a huge world, a sparse and vacant universe out there to explore and all you care is some bits and bytes on your little chromebook? ...

## Shitposts
{% for post in collections.posts.pages %}
#### [{{ post.title }}]({{ post.permalink }})
{% endfor %}
