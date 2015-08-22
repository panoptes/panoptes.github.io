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

# PANOPTES Status

We have been operating a prototype DSLR-based system at the Mauna Loa observatory since late 2010 to identify and solve the main technical challenges.  This prototype was upgraded to our new baseline design in January 2015.

We are currently finalizing the design, documentation, and software of the "baseline unit" which will be completely open source.

Once the baseline is tested and documented, we will be seeking out individuals and groups who have a solid technical background to build the first generation of units.  These first generation builders will help us refine our design and instructions for subsequent builders.

If you are interested in building a PANOPTES unit, please [contact us](contact.html).

For more frequent updates on the project status, please consider joining the PANOPTES [Google Group](contact.html).
