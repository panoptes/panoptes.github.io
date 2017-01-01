---
title: News/Status
layout: default
---

# PANOPTES News

<ul>
  {% for post in site.posts %}
    <li>
    {{ post.date | date: "%Y-%m-%d" }}:
    <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

# Photos

<ul>
  <li><a href="https://goo.gl/photos/LwoM29edh67nQx4i9">Pretty Pictures</a></li>
  <li><a href="https://goo.gl/photos/ri3w6naZHdnwDJYU8">Build Photos</a></li>
  <li><a href="https://goo.gl/photos/vmK66pis8aUCwVBM6">AstroDay 2016 (Hilo, HI)</a></li>
  <li><a href="https://goo.gl/photos/dZ31DJ4UQucZK949A">Explore JPL 2016 (Pasadena, CA)</a></li>
  <li><a href="https://goo.gl/photos/it7qpYvbSgSNgAYs9">Misc</a></li>
</ul>
