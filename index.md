---
title: Gazillions of worthless opinions
layout: default.liquid
---
## Shitposts
{% for post in collections.posts.pages %}
#### [{{ post.title }}]({{ post.permalink }})
{% endfor %}
