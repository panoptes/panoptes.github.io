---
title: Installing the Software
layout: default
---

# Installing the Software

This document will present an overview of how to get started coding within Project PANOPTES, from setup to `git commit`.

# Bootstrap

{% include add_note.html note="Have you bootstrapped your system? This is the ideal way to install all the software and create a consistent environment that your PANOPTES unit is expecting." %}

{% highlight bash linenos %}
wget https://raw.githubusercontent.com/panoptes/Hardware/master/bootstrap.sh && bash bootstrap.sh
{% endhighlight %}

This will install all required software, download the repositories, and set up all the relevant environment variables that you need. In particular, it assumes you have something like the following in your `.bashrc`:

{% highlight bash linenos %}
export PANDIR=/var/panoptes/
export POCS=$PANDIR/POCS
export PIAA=$PANDIR/PIAA
export PACE=$PANDIR/PACE
{% endhighlight %}

We will refer to these as `$POCS`, `$PANDIR`, etc. throughout the site.

## Log Files
Log files are stored in `$POCS/logs/`.  To watch the main log file:

{% highlight bash linenos %}
tail -f $POCS/logs/panoptes.log
{% endhighlight %}

_**TODO:** How to change running log levels_
