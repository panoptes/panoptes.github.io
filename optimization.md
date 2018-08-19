---
title: PANOPTES Hardware Choices
layout: default
---

## Why this combination of cameras and lenses?

Be warned, this answer may take some time. :)

In short, PANOPTES is designed to be optimally cost efficient.  As such, we often make choices which are not optimal for the amount of science produced by a single unit, but which will provide maximal __science per dollar__.

Choosing DSLR cameras, for example, provides us a very low cost detector.  A comparable pixel count scientific CCD, might cost 5-10 thousand dollars, while a DSLR costs a few hundred dollars.  Pixel count is a limiting factor in how much information can be gathered in a single image, so having a large number of pixels is valuable.

Finding a way to use the images from DSLRs [for accurate photometry](https://www.naoj.org/staff/guyon/09allskysurvey.web/56photometry.web/content.html) despite their [Bayer color filter array](https://en.wikipedia.org/wiki/Bayer_filter) was one of the early breakthroughs in the PANOPTES project.  This enabled us to use detectors which were an order of magnitude cheaper in __pixels per dollar__ than "scientific grade" CCD cameras.  

Once cameras with a Bayer filter array are an option for us, the current status of the market means that consumer grade DSLRs with APS-C sized detectors offer a good combination of price and pixel count.  The Canon Rebel series was what we chose initially, but the choice of Canon brand cameras is somewhat arbitrary:  in principle, any interchangeable-lens camera with a similar pixel count and cost which also provides access to unprocessed, "raw" images would work similarly well.

The choice of consumer DSLR cameras also means we have access to consumer camera lenses.  In astronomical surveys, a simple metric to help evaluate survey speed is called _etendue_.  Etendue is intended to be a "rule of thumb" level metric, not a complete analysis.  Etendue is the product of the survey telescope's aperture (i.e. area in square meters) and its field of view (i.e. area in square degrees).  Further reading on etendue can be found [here](https://en.wikipedia.org/wiki/Etendue) and [here](https://www.mikewoodconsulting.com/articles/Protocol%20Winter%202012%20-%20Etendue.pdf)  In simple terms, one might imagine that to survey the night sky at a particular depth (to a particular faintness limit) we might choose a big telescope with a small field of view.  This would mean we take a short exposure of each area of the sky (the large aperture means we collect more light and so need less exposure time), but we need to take many different exposures to cover a large area.  Alternatively, we might choose a smaller telescope with a larger field of view.  This means we would take longer individual exposures, but we would need fewer of them to cover the same area.  Those might work out to be the same total survey efficiency.  The concept of etendue tries to capture that balance.

When PANOPTES was originally conceived, etendue was used as a guide, more specifically etendue per dollar (you're starting to see by now that "per dollar" is a PANOPTES theme).  Some rough etendue estimates by Olivier Guyon suggested that APS-C sized DSLR sensors combined with fast 85mm focal length camera lenses was a very good etendue per dollar option.

A somewhat more detailed analysis was later performed by PANOPTES team member Josh Walawender.  The PANOPTES analysis algorithm needs many stars in a single field of view in order to do the many comparisons needed to obtain accurate photometry, so he examined what lens (when used with our chosen DSLR) would provide the highest number of stars per image.  Using a model of the stellar population of the Milky Way Galaxy and assuming a telescope pointing somewhere near, but somewhat off of the galactic plane and combining that with an estimate of what the signal to noise would be for stars of a given brightness observed by various telescope aperture and focal lengths, he plugged in the specifications for a number of commercially available camera lenses and determined that the best combination would be an 85mm f/1.4 Rokinon lens (the same focal length and f-ratio combination guessed at by Olivier Guyon using the simpler etendue metric).

In addition to providing nearly optimal etendue per dollar, the "many DSLR camera + lenses" solution offers two practical advantages for the PANOPTES project:

1. Each unit is moderately priced, making it possible for citizen scientists and schools to build and deploy them.  
2. Exoplanet transits are identified by averaging measurements from many individual units, so noises and errors of individual units are efficiently averaged away.
