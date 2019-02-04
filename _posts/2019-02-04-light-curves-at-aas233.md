---
layout: post
title: Light curves at AAS233
sub_heading: ''
date: ''
tags: []
banner_image: ''
related_posts: []

---
At [AAS233](https://aas.org/meetings/aas233) this year Wilfred presented a [talk](https://drive.google.com/open?id=1-iu4V4G7fj6_jp250zn2AblGoSSYmrRKi7gZHSX8-qE) on some of the image processing work that he has been doing as part of his PhD.

The talk was mostly focused on the data obtained from [PAN012](https://projectpanoptes.org/teams/pan012/) as part of Aru's Caltech summer internship. The focus, of course, being the recovered transit of HD189733 b.

![](/uploads/2019/02/04/lc01.png)

There is still plenty of work to be done on the image processing end. In particular you will notice the blue channel is entirely missing as it not playing well at this point. The inset equation refers to the recovered transit fit compared to that of the literature value.

Additionally, some of the (7 minute!) talk focused on the ability of a PANOPTES telescope to do long-term follow up of some of the TESS sectors.

Here you can see the overlap between targets defined in the TESS [CTL](https://tess.mit.edu/science/tess-input-catalogue/) for [Sector 06](https://tess.mit.edu/observations/sector-6/) Camera 01 and PAN001 (cut down to similar viewing areas), demonstrating how much you can do with just $5000 (and only one camera was operating at the time!):

![TESS Sector 06 and PAN001 Overlap](/uploads/2019/02/04/sec06_pan001_overlap.png)

Wilfred also showed some examples of where the processing is failing as well as succeeding.

The processing algorithm automatically finds the "best" comparison stars for a given target (details coming soon!). Here is the light curve for the closest match to HD189733b during the transit, showing a nice flat curve:

![](/uploads/2019/02/04/lc02.png)

Nice [Detla Scuti](https://en.wikipedia.org/wiki/Delta_Scuti_variable):

![Delta Scuti](/uploads/2019/02/04/lc04.png)

One issue still being worked on are updates to the dynamic aperture, which sometimes fails. Here another source enters the aperture during certain frames, causing a noticeable problem:

![Bad periodic error](/uploads/2019/02/04/lc05.png)