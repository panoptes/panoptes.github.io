---
title: Interactive PANOPTES Software Development
layout: default
---

## Interactive Shell
While doing development, it is often easiest to use the object interactively. [IPython](http://ipython.org/) is an interactive python shell that offers some nifty features.

{% highlight bash linenos %}
CD $POCS

ipython
{% endhighlight %}

From here you will be in a running shell. To get started:

{% highlight python linenos %}
import panoptes.panoptes as panoptes
pan = panoptes.Panoptes()
{% endhighlight %}

_**TODO:** Better description_
