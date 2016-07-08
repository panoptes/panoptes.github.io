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
