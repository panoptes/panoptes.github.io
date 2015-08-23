---
title: Testing PANOPTES Software
layout: default
---

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
