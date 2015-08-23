---
title: Installing the Software
layout: default
---

# Installing the Software

This document will present an overview of how to get started coding within Project PANOPTES, from setup to `git commit`.

# Bootstrap

{% include add_note.html note="Have you bootstrapped your system? This is the ideal way to install all the software and takes care of all of the other steps below. Please try to bootstrap first and then follow along below if something goes wrong or you want more detail." %}

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

We will refer to these as `$POCS`, `$PANDIR`, etc. below.

## Log Files
Log files are stored in `$POCS/logs/`.  To watch the main log file:

{% highlight bash linenos %}
tail -f $POCS/logs/panoptes.log
{% endhighlight %}

_**TODO:** How to change running log levels_

## Tests
We ***cannot stress enough*** how important it is to write good tests. Plus it just makes it easier to develop.  We use [py.test] (http://pytest.org/latest/) (as per [astropy-affiliated-packages testing guidelines](http://astropy.readthedocs.org/en/latest/development/testguide.html))

py.test is simple to use. Tests should be place under any filename in a subfolder called `tests` within each submodule (e.g. `$POCS/panoptes/mount/tests`). Each file will be run by the testing suite (see below), but only the files and methods with `test_*` or `*_test` will run. See the [rules for test discovery](http://pytest.org/latest/goodpractises.html#conventions-for-python-test-discovery).

A simple example:

{% highlight python linenos %}
# $POCS/panoptes/tests/test_simple_observatory.py

import pytest

from ..observatory import Observatory

def test_no_config():
    """ Creates an Observatory without a config file. We expect this to
    fail with an AssertionError because an Observatory requires a config.
     """
    with pytest.raises(AssertionError):
        obs_1 = Observatory()
{% endhighlight %}

{% highlight bash linenos %}
$ cd $POCS
$ python setup.py test -t panoptes/tests/test_simple_observatory.py
running test
running build
running build_py
running build_scripts
============ test session starts ============

...<truncated>

============ 1 passed in 0.14 seconds ============
{% endhighlight %}

See the [testing guidelines](http://astropy.readthedocs.org/en/latest/development/testguide.html) for much more.

To run the entire test suite:

{% highlight bash linenos %}
$ cd $POCS
$ python setup.py test --coverage
{% endhighlight %}

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
