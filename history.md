---
title: PANOPTES History and Science Mission
layout: default
---

<br/>

# A Brief History of PANOPTES

PANOPTES got its start in late 2010 as a small hobby project of Olivier Guyon.
He started experimenting with automated DSLR-based systems to take pretty
pictures and rapidly began to wonder about the potential scientific capabilities
of such a system. A DSLR provides a large pixel count at a comparatively low
price when compared to "scientific grade" CCDs commonly used on small telescopes
which makes it appealing for collecting data at low cost, but there were
obstacles to overcome.

## Automation

Olivier constructed a prototype automated camera system, but could only obtain
limited data from home due to poor weather. Olivier, like many of the original
PANOPTES team members lives in Hilo, Hawaii -- the rainiest city in the United
States. Some areas of Hilo average over
[175 inches (4.56 meters)](http://rainfall.geography.hawaii.edu/interactivemap.html)
of rain per year.

At the time, another eventual PANOPTES team member, Josh Walawender, was working
on a different small robotic telescope project which was located at the
[Mauna Loa Observatory (MLO)](https://www.esrl.noaa.gov/gmd/obop/mlo/) run by
NOAA on the slopes of Mauna Loa. With his help, the original test unit of
PANOPTES was hosted by MLO and infrastructure (power and networking) was
provided through the Variable Young Stellar Objects Survey (VYSOS) project.

By this time others had joined the project and formed the initial PANOPTES team.
Based on experience at Mauna Loa, the hardware of PANOPTES was tested and
refined. We were able to demonstrate that low cost hardware could be made to
operate reliably under adverse weather conditions even without a protective dome
or roof to protect the equipment.

## Image Processing

In addition to the operational testing, Olivier also developed an algorithm to
obtain accurate photometry from the DSLR images. This was challenging because
DSLRs have a Bayer color filter array in front of the detector which gives them
the ability to obtain color images. This filter array places a small red, green,
or blue filter over each pixel such that each 2x2 group of four pixels has one
red sensitive pixel, two green sensitive pixels, and one blue sensitive pixel.
The values for the other two colors are then interpolated for each pixel. For
example, for a green pixel, the green value is measured and the red and blue
values are interpolated from the neighboring red and blue pixels adjacent to the
green pixel.

This color pixel array normally makes determining the brightness of a star
difficult because of the star's small size. The majority of the light for in
focus stars falls on to a single pixel, so that star will appear different
brightness depending on whether it happened to fall on a red, green, or blue
pixel.

To get around this, Olivier's algorithm generates a comparison stellar image
based on selecting other stars in the image which fall on the same position in
the RGGB color filter pattern and which are similar in shape (and other
properties) to the star being measured. By watching how stars with the same
"errors" due to the color filter array (and other effects) change in brightness
due to those "errors" over many images, we can compare their behavior to the
star being measured and see if it has brightened or faded during a particular
image sequence.

By averaging the results of many observations from many cameras, we can obtain a
very accurate measurement of any changes in a star's brightness over time. This
opens up an interesting scientific area for exploration with PANOTPES: exoplanet
transits. With a large number of PANOPTES units scattered over the world, we can
obtain high quality, continuous monitoring of moderately bright stars (roughly
9th to 12th magnitude) for exoplanet transits.

## Science

The science goal of PANOPTES is to survey moderately bright stars (roughly 9th
to 12th magnitude) to look for exoplanet transits. These stars are much brighter
than the typical star studied by
[NASA's Kepler mission](https://en.wikipedia.org/wiki/Kepler_\(spacecraft\)) and
thus are likely to be closer to Earth which should make those planets easier to
separate from their star.

Thanks to its highly distributed network of units, PANOPTES can provide nearly
continuous observations using units around the globe, and observe large parts of
the sky. This flexibility complements professional transit surveys that use a
smaller number of telescopes, such as Kepler or
[TESS](https://tess.gsfc.nasa.gov/index.html).

PANOPTES will find new exoplanets that can be studied in detail with larger
telescopes using techniques such as radial velocity, transit spectroscopy, and
direct imaging. In fact, some of the PANOPTES team also work on extreme adaptive
optics systems such as the
[SCExAO project at Subaru Telescope](https://www.subarutelescope.org/Projects/SCEXAO/)
which can be used to image nearby planetary systems, so the link between these
two interests is that PANOPTES can find targets that extreme AO systems (like
SCExAO) can then follow up on.
