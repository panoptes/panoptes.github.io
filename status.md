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

# Papers, Articles, Videos, Press

* [OSCON interview with Wilfred Gee, PANOPTES](https://opensource.com/life/16/4/oscon-interview-wilfred-gee-panoptes) April 27, 2016
* [Presentation to OSON 2016](https://www.youtube.com/watch?v=qgpx9VefgzE) May 19, 2016
* [Presentation to Denver Astronomical Society](https://www.youtube.com/watch?v=ytsz3I5-n2c) February 14, 2014
* [JPL Night Sky Network TeleCon with Project PANOPTES](https://nightsky.jpl.nasa.gov/download-view.cfm?Doc_ID=528) September 24, 2013
