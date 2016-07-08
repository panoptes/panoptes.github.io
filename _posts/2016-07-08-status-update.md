---
title: Status Update
layout: posts
date: 2016-07-08 17:00:00 -1000
---

# Current PANOPTES Status ({{ page.date }})

We are currently finalizing the design, documentation, and software of the "baseline unit" which will be completely open source in both hardware and software design.  

## Remaining Hardware Design Work

Much documentation needs to be updated or fleshed out, but the primary remaining hardware design task is to finalize our electronics: the arduino based system which monitors telemetry, provides power distribution, and allows remote control of power relays.  Our Mauna Loa unit (PAN001) uses an old version of the electronics built on a solderless breadboard (with some occasionally flaky connections) and without some features which we want in the new system.  The new system will also include numerous safety features which were not designed in to our original prototype electronics.

We expect the first released version of the electronics design to require the builder to solder components and wires on to a breadboard.  We eventually want to have a custom printed circuit board fabricated to reduce the workload.  We might even try to have a board pre-populated with components available as well, but these options will come as a later update.

## We are Looking for Beta Testers

While the baseline instructions and electronics design are being completed, we are now seeking out individuals and groups who have a solid technical background to build the first generation of units.  Builders in this phase will be testing our instructions (which may still be a work in progress) and our designs (multiple build may reveal unforeseen issues with the design), so they should be comfortable working with us in this beta tester role.  

These first generation builders will help us refine our design and our instructions and will hopefully be the first members of a growing PANOPTES online community and can help us recruit and mentor future generations of builders.  If you are interested in being a PANOPTES beta tester, please (contact us)[contact.html].

## Software

Currently, a lot of work is also going in to the observatory control system [POCS](https://github.com/panoptes/POCS) and too much is changing within that code to fully describe here.  If you are interested in the details of the code development, please follow [POCS on github](https://github.com/panoptes/POCS) or directly email [info@projectpanoptes.org](info@projectpanoptes.org) for more information.

In addition, we are beginning a project to take the image analysis algorithm developed by Olivier Guyon during our initial prototype phase and wrap a fully automated pipeline around it which can analyze the many tens of thousands of stars we expect to observe each night.  This pipeline will integrate with our cloud software (also in the early design phase) which will combine the data from many units to build up the sensitivity needed to detect exoplanet transits.
