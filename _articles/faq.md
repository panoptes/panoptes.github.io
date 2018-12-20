---
title: Frequently Asked Questions
tags:
- faq
- questions
- help
date: 2018-12-16 21:06:14 +0000
sub_heading: ''
banner_image: ''
slug: ''

---
# Questions about the project

### What is Project PANOPTES?

PANOPTES (Panoptic Automated Network of Observatories for a Public Transiting Exoplanets Survey) is a citizen science project which aims to build a worldwide network of low cost, robotic telescopes used to detect transiting exoplanets.

The name is a [backronym](https://en.wikipedia.org/wiki/Backronym) which references [Argus Panoptes](https://en.wikipedia.org/wiki/Argus_Panoptes), a mythical creature of ancient Greece with the ability to see in all directions at all times. Our ambition is to build a collaborative, world-wide network of observatories that will survey the night sky for nearby exoplanets.

### How many PANOPTES telescopes are there, and where are they located?

As of May 2018, there are 3 that have been completed:

1. The prototype on Mauna Loa in Hawaii, known as PAN001
2. PAN006, the first unit built by somebody other than the original team, just following the instructions. It is at Wheaton College in Massachusetts.
3. PAN008, the first unit built using a Raspberry Pi rather than an Intel NUC as its computer. Currently in Sydney, Australia, but will be relocated to Siding Springs Observatory, also in Australia.

In addition to those operational units, there is also a completed unit placed inside the [‘Imiloa Astronomy Center](http://imiloahawaii.org/), a science and cultural museum located in Hilo, Hawai’i.

There at least 11 others in various stages, from fund-raising through final assembly. Active building is happening in California, New Mexico and Arizona. High schools in Georgia, South Carolina, Pennsylvania and Pistoia, Italy are participating as part of a US-Italy Virtual Robotics Exchange; those schools are currently acquiring parts, with building likely to start in the next school year.

### How long does it take to build a PANOPTES unit?

Building your first PANOPTES unit will probably take a few weeks, assuming one person is doing the build full time. Check our instructions to make sure you have all the parts, and to get a good idea of what the steps are and the tools that you’ll need.

However, many schools will want to build a PANOPTES unit over the course of weeks or an entire semester. PANOPTES should be viewed as an educational tool and so taking time to build a unit, while also doing lesson plans about what is being done, would be an invaluable experience for the students.

### I live in the city. Is it worth building a PANOPTES unit with all of the light pollution?

From a science perspective, an individual unit in a city is limited, but when that unit is networked with all the other units, the data becomes useful. However, from an educational perspective, an individual unit in a city is extremely powerful because it allows students with limited opportunity to become directly involved in cutting-edge science.

### How many stars with exoplanets have you found? What planets has PANOPTES found or confirmed?

It’s early in the project, with only 3 units built so far. The early prototyping for Project PANOPTES determined that a 1% dip in brightness could be measured, and that a deeper dip caused by a known exoplanet could be confirmed.

### Can I make one with one camera?

Yes, definitely! A very early PANOPTES prototype had a single camera, while a later prototype had 4 cameras. The choice of two was made to optimize the science data collected for the money, but one camera is definitely better than none!

### Can I use a telescope I already have and add it to the PANOPTES network? (Why or why not?)

We designed PANOPTES with the idea that other hardware could be plugged in to the control system, however our focus has been on supporting the core mission and the core components. As a result, incorporating new hardware in to a PANOPTES unit is possible, but would require an effort to write software to control the new hardware and make it work with the PANOPTES software (both the control software and the analysis software). This has been done successfully, the Huntsman Telephoto Array project has adopted our control software POCS and built in hardware support for their hardware.

### Are there instructions on the website on how to build it, especially relating to the circuit parts?

Yes, there are detailed assembly instructions for both the mechanical and electrical components of the telescope.

### Do you sell them already built?

No, we haven’t reached the point where there is enough demand for that to be economical.

### Can I buy a kit?

The design is still evolving as new builders teach us how to improve things, so we haven’t yet worked with a vendor to offer such a kit. We would also need quite a few builders making this purchase each month for a vendor to be willing to offer such a kit.

### Could you either pre-make a few that could be bought, or make it into a kit that I could buy and then assemble myself?

So far, we aren’t in a position to take that on. See the answers above.

### Which companies or organizations are sponsors of this project?

NASA (via the Jet Propulsion Laboratory) is supporting Project PANOPTES via a Universe of Learning grant under award number NNX16AC65A to the Space Telescope Science Institute, working in partnership with Caltech/IPAC, the Jet Propulsion Laboratory, Smithsonian Astrophysical Observatory, and Sonoma State University. NASA and JPL are not responsible for the Project PANOPTES materials, nor any opinions, findings, conclusions or recommendations expressed on the Project PANOPTES site.

Google Cloud is providing support for the project. We upload the collected images to Google Cloud Storage, and from there, they can be retrieved by anyone. We are working on an automated system for processing those images to produce light curves, which will run on Google Compute Engine.

### How is PANOPTES related to other exoplanet projects?

Project PANOPTES is part of the Universe of Learning, with connections to other ground-based observing programs like the Harvard-Smithsonian Center for Astrophysics’ MicroObservatory Network and Sonoma State University’s Gamma-Ray Large Area Space Telescope (GLAST) Optical Robotic Telescope (GORT).

### Will PANOPTES coordinate in any way with the NASA TESS mission?

PANOPTES units will be able to help verify and validate the exoplanets discovered by TESS. In order for an exoplanet to be confirmed, a candidate exoplanet must be viewed three times in two different ways.

# Questions about astronomy/astrophysics

### What is an exoplanet?

An exoplanet is a planet that is orbiting a star other than our Sun.

### Can you detect the size of an exoplanet?

The diameter of the planet, relative to that of its star, can be computed from the the fraction of the star’s light that is blocked by the planet. However, a fairly accurate measurement of the change is required, while PANOPTES is focused on detecting that a dip in brightness is occurring repeatedly.

[This page](https://www.sfu.ca/colloquium/PDC_Top/astrobiology/discovering-exoplanets/calculating-exoplanet-properties.html) has more detail about how various properties of a planet can be determined.

### How can I find an exoplanet transit to view/record?

Swarthmore College offers [a web page](http://astro.swarthmore.edu/transits.cgi) that will show you transits expected to occur over the next several nights, with time, sky location, angle above the horizon, etc. You enter the location from which you are observing, either a well known observatory or a location specified by latitude and longitude. Here are some other resources to investigate:

* [www.exoplanets.org](http://www.exoplanets.org/) (all kinds of info and other links)
* [www.exoplanet.eu](http://www.exoplanet.eu/) (database of exoplanets)
* [https://exoplanetarchive.ipac.caltech.edu/](https://exoplanetarchive.ipac.caltech.edu/ "https://exoplanetarchive.ipac.caltech.edu/") (NASA exoplanet archive)
* [https://exoplanets.nasa.gov/the-search-for-life/exoplanets-101/](https://exoplanets.nasa.gov/the-search-for-life/exoplanets-101/ "https://exoplanets.nasa.gov/the-search-for-life/exoplanets-101/")

# Questions about participating

### Is there a way to get involved without building a unit?

Absolutely! Among the options are:

* Help spread the word about Project PANOPTES and the collaboration between astronomers of all levels to your community.
* Mentor others who lack some of the skills that you have. For example, help a teacher to lead a class though the build process or guide some students as they learn about photometry and exoplanets.
* Review the existing documentation, suggest improvements, translate it into another language, or write some new documentation or articles for the project.
* Help out with the software, both the operational software that runs the telescope, and the analysis software for extracting light curves. There is always room for improvement.
* Further refine the design of the telescope, such as evaluating another mount, camera or lens.
* Help us with designing and creating demos that explain exoplanets, light curves and related topics. These could be real world experiments to be conducted by students, software that runs in a browser, or come up with something we’ve not thought of!

### How do I get involved?

Point your browser at [https://forum.projectpanoptes.org](https://forum.projectpanoptes.org "https://forum.projectpanoptes.org"), create an account so that you can post there (i.e. click the Sign Up button in the upper right), then post a message on the forum introducing yourself and telling the community about how you would like to be involved (e.g. building a unit, mentoring students, etc.). For example, if you plan to build a unit, you could post to the [Building PANOPTES](https://forum.projectpanoptes.org/c/building) category.

If you would prefer to contact the core team privately, send an email to [info@projectpanoptes.org](mailto:info@projectpanoptes.org).

### What kind of volunteers does Project PANOPTES need?

In this golden age of astronomy, science discoveries are no longer limited to those with advanced astronomy degrees; Project PANOPTES allows learners of all ages and backgrounds to join the search to discover new exoplanets! If you have skills or interest in electronics, data \[science or management\], optics, software \[for hardware, front stack, middleware, back end\] or education, you can help!

### Why would educators be interested in participating?

Project PANOPTES provides students interested in Science, Technology, Engineering and Mathematics (STEM) a unique opportunity to participate in a global citizen science project. Using relatively inexpensive components, students and citizen scientists can build and operate an autonomous observatory that will identify exoplanet candidates for further investigation. PANOPTES presents participants with an opportunity to become involved at all levels within an exoplanet discovery project.

### What can students learn from building and operating a PANOPTES telescope?

Students gain experience with working as a team, skills with hand or power tools, an understanding of equatorial telescope mounts and how that is related to the rotation of the Earth, learn the various methods of detecting exoplanets, how photometry (measuring the brightness of stars) is applied, and much more.

Specifically, students would learn these skills:

* Teamwork in a real science project
* Experience using hand tools such as drills, drill presses, soldering irons, and screwdrivers
* Reading and working with schematic electronics diagrams, mechanical drawings / blueprints
* Following written technical instructions for the build of the unit
* Understanding electronics vocabulary and design
* Soldering components and wires to boards
* Using Linux commands and performing Linux operating system installations
* Assembly of the boards and components into the unit
* Testing at each phase of assembly
* Astronomy, including working with and understanding equatorial telescope mounts
* Photometry - measuring the brightness of stars
* Understanding the data that is gathered and how it will be used
* Possibly writing and submitting a paper to a scientific publication

### How much technical knowledge is needed to build PANOPTES?

PANOPTES has been designed to be built by people with moderate technical skills or with a mentor who can help teach those skills. You should try to build units as a team with classmates / friends.

### What skills are needed to build a PANOPTES unit?

PANOPTES units are designed to be fairly easy to assemble. If you know how to operate a drill and a screwdriver, you can probably assemble a PANOPTES unit. The one skill that is less common is soldering; this is used to attach the electronic components to circuit boards. Check out our step-by-step instructions.

### Do I need to be an astronomer to volunteer?

No. Anyone with moderate technical skills can build an PANOPTES unit, but there are also opportunities to participate which do not involve building a unit: working on software, helping with documentation, mentoring build groups, and assisting with data reduction are some examples of other ways to participate.

# Questions about the equipment

### Why does it cost so much/so little?

Depending on your background, country, and income, US $5,000 either sounds very expensive for two cameras, or surprisingly inexpensive for a completely automated observatory. The PANOPTES team has worked hard to produce a reliable design that can be built without tools that are expensive or hard to come by, yet is able to detect a 1% dip in brightness of stars of interest (i.e. those out to about 40 parsecs, the same as TESS). As far as we know, there isn’t another design for an automated, all-weather, robotic telescope that can be built for less. Other FAQs explore the specific hardware choices.

### Why use a Canon SL1? Can I use another camera?

The Canon SL1 (now discontinued) was selected because it was the least expensive of the Canon DSLRs, yet had the same image sensor as several more expensive cameras. A full-frame DSLR, which has a larger sensor, equivalent to a 35mm film camera, would be a nice choice, but they can cost as much as an entire PANOPTES telescope. Nikon DSLRs were evaluated, but even when asked to do zero processing of the image, they still do some sharpening of the star images, which reduces the ability to accurately assess the brightness of stars.

The primary requirements for a camera are:

* A large number of pixels (the Canon SL1 is an 18 megapixel camera); these enable the relative photometry algorithm developed for PANOPTES to find many comparison stars in the image.
* [gPhoto2 support](http://www.gphoto.org/doc/remote/); this open source software package supports many cameras and is used by PANOPTES to control the Canon cameras, allowing us to automate the taking of pictures and then downloading them from the camera.
* [POCS support](https://github.com/panoptes/POCS); this is the PANOPTES Observatory Control System, which uses gPhoto2. For each type of camera we’ll need to discover the settings that are needed to take long exposure photos without the camera processing the image.

If you already have a DSLR or other camera that you would like to try with POCS and/or for a PANOPTES telescope, please take a look at the PANOPTES forum to see if we’ve discussed that camera, and if not, post a question. If you know how to program, you can help out by adding a driver to POCS enabling support for your camera (see [this file for the Canon SL1 support](https://github.com/panoptes/POCS/blob/develop/pocs/camera/canon_gphoto2.py)).

### Why use a Rokinon 85mm lens? Can I use another lens?

As far as we know, there isn’t another camera and lens commercially available at a lower price that achieves the quality of image produced by the combination of a Canon SL1 and Rokinon 85mm manual focus lens. However, if you’ve already got another lens, let’s discuss it on [the PANOPTES forum](https://forum.projectpanoptes.org/).

### Why use an iOptron iEQ30 Pro telescope mount? Can I use another one?

Given the aims of Project PANOPTES, the design requires the use of a motorized, computer controlled telescope mount with a tracking precision of well under 10 arcseconds of error over a single exposure (2 minutes), and under 1 arcminute over an hour, and a payload capacity of at least 20 lbs (around 9 kg).

Furthermore, the mount needs to be able to be weatherproofed. None of the commercially available mounts appear to be designed to be outside when it rains or snows, so the PANOPTES team selected this mount which it is possible to weatherproof. We would love to have help in assessing other mounts that are no more expensive than the iOptron.

The PANOPTES software is known to work with two iOptron models: the iEQ30 Pro (used with PAN001 and PAN006) and the iEQ45 Pro (this is used by PAN005); the latter can carry a high payload, so would be useful if you’re thinking of building a telescope with more and/or heavier cameras.

The software likely works with other iOptron models that support the same communications protocol by which the computer controls the mount, but they haven’t been tested yet. Support for telescope mounts made by Software Bisque has been added by the folks working on the Huntsman Telescope Array in Australia.

We’re interested in trying out the iOptron CEM25P at some point; this model has a sufficient payload capacity, looks like it can be weatherproofed, and is at least US $200 less expensive than the iOptron iEQ30 Pro.

### Why are there two cameras? Can it see in 3D?

PANOPTES does not see in 3D. While the two cameras are reminiscent of our two eyes which give us depth perception, PANOPTES has two cameras in order to gather more data. By mounting two cameras, we double the amount of data that a single PANOPTES unit can collect while only increasing the cost by a small fraction. We will be looking at designing versions of PANOPTES units which can hold four or even more cameras in the future.

### Why not one camera and a bigger lens?

The price of camera lenses and telescopes increases much faster than the aperture increases. A single lens of twice the area of the Rokinon 85mm with the same focal ratio (i.e. 120mm at f/1.4) would be much more than double the price, though comparisons are hard to make because only certain combinations of focal length and focal ratio are available commercially. As an extreme comparison, the Mitakon Speedmaster 135mm f/1.4 lens retails for around US $3,000, or 10 times the price of the Rokinon.

### Why not take a longer/shorter exposure?

There are trade-offs to be made regarding exposure length. Among the most obvious are:

Longer exposures:

* Collect more light, allowing us to see dimmer stars.
* But bright stars may saturate the sensor (i.e. the sensor records its maximum value for a pixel, and can’t measure the photons received after that point).
* Also collect more sky background (e.g. the scatter light pollution from electric lights).
* Greater chance to have the image ruined by a cloud pass through the field of view.
* More dark current accumulates during the exposure.

Shorter exposures:

* Collect less light, so we can’t capture enough light from dimmer stars to measure their brightness to a useful level of precision.
* But bright stars don’t saturate the sensor, so we can accurately measure their brightness.
* We get the same amount of read noise on each image, so altogether we’re reading more noise when reading more images with shorter exposure durations.

Furthermore, the mechanical shutter of a DSLR has a limited number of uses (e.g. 100,000 is the warranteed value for the Canon SL1), so a longer exposure extends the time before that number of shutter actuations is reached.

### Does it have a computer in it?

Yes. The design includes a small computer called an Intel NUC. The NUC is based on the same type of processor as found in a typical laptop or Windows PC, i.e. some variant of the [Intel x86 architecture](https://en.wikipedia.org/wiki/X86). The builder of a PANOPTES unit chooses how much memory to put into the computer, though a minimum of 4 GB is recommended. The same is true of disk or flash for storage: the builder decides how much storage to put into the computer, though a minimum of 32 GB is probably necessary; and the less that is present, the more important it is to have a good internet connection for daily uploads of the images.

### How does it work (how is it controlled)?

The telescope is controlled by the PANOPTES Observatory Control System ([POCS](https://github.com/panoptes/POCS)). This open source software is custom built for PANOPTES by volunteers, and extended as desired to support additional hardware used for some applications of POCS. For example, the folks working on the Huntsman Telescope Array in Australia added support for telescope mounts made by Software Bisque, and the builder of PAN006 added support for Astrohaven Domes.

### Why not use a Raspberry Pi?

We are in the process of evaluating the [Raspberry Pi](https://en.wikipedia.org/wiki/Raspberry_Pi) (RPi), and think it may make a good choice for PANOPTES in the long-term.

For those who aren’t familiar with it, the RPi is a small single-board computer, with an area similar to that of a credit card. Unlike the Intel NUC, the RPi is based on the kind of processor used in many mobile phones: an [ARM processor](https://en.wikipedia.org/wiki/ARM_architecture). Unlike the Intel NUC, the amount of memory is fixed on each board, with the recent Model 3 B+ having 1 GB of memory. While this is plenty for many embedded systems, it isn’t a lot when it comes to running Linux, several Python programs for managing the system, and especially for simultaneously analyzing multiple images. Furthermore, the processor is considerably slower than a typical Intel NUC, so it takes much longer to perform a key operation: analyzing the images captured to determine if the telescope is pointed in the correct direction.

Another issue is that the open source software used on the computer is very often available in precompiled and pretested for the x86. The same can not yet be said for the Raspberry Pi, for which we must often download the source code for programs of interest and build them on the Raspberry Pi. Since it is much slower than the NUC, this significantly slows the process of setting up, and updating, the system.

Nonetheless, we are interested in the Raspberry Pi because it is so much cheaper than the NUC ($35 vs. at least $150, counting the cost of adding memory to the NUC), and also because it exposes GPIO pins that can be used to interact with hardware devices such as temperature and humidity sensors, which might simplify the electronics design of PANOPTES.

If you’re interested in helping us with this project, please let us know.

### How do you get the pictures from the camera?

PANOPTES uses gphoto2, open source software for controlling digital cameras, including downloading the images from the cameras immediately after the images are taken.

### How does it upload the pictures?

The existing units are all at sites that have good internet connections, which are used in the morning to upload the images recorded the preceding night.

If you want to build a unit that is far from an internet connection, you’ll want to include an external hard drive (SSD) for image storage, and periodically visit the unit to swap that external hard drive for an empty one, after which you’ll take the full drive back to “civilization” (now defined as a place with a fast internet connection!) and upload the recorded images to PANOPTES central store of images. How often you can visit the telescope will determine how big a drive you need.

### How much internet bandwidth is needed?

As calculated elsewhere in this FAQ, a PANOPTES telescope could produce up to 12 GB per night. To upload that within 24 hours (i.e. before the next night’s upload needed to start), the telescope would need an internet connection of about 139kB/second, or just over 1.1Mb/second. Note though, that it would be rare for a scope to have such great skies that so much data would be produced.

### Can it run on Wi-Fi, or do I need a hard-wired (Ethernet) internet connection?

The Intel NUC and Linux supports both, though no set up is required for the Ethernet connection, making it slightly easier to work with.

### Can it run on photovoltaic (PV) / solar power?

Yes, it would certainly be possible to do so. Internally, the system uses DC 12V power, which could easily be supplied directly from batteries that are part of a solar power system. In principle, one would just need to assemble a solar panel, charge controller, and appropriately sized battery to run the unit “off grid”, however we haven’t yet had any experience doing so at this point. The only change needed would be in the AC detector, a safety mechanism used to determine when AC power is lost, at which point PANOPTES automatically “parks” the mount (i.e. aims the cameras at the ground).

### How much power is needed?

The 12V components of the system draw at most about 100 watts, if they were all drawing their maximum amount… which is not likely. The most power hungry component is the NUC, which is rated to draw up to 65 watts, but in practice draws much less. Based on that, we can estimate that the system will need somewhere around 1 kilowatt hour per day.

### How many solar panels/batteries are needed?

This very much depends on the location where the telescope, panels and batteries will be located. Among the considerations are:

1. Latitude - The further the unit is from the equator, the less power will be collected during winter days, yet the winter nights are longer, so the system will be active (moving the mount, taking pictures) for longer.
2. Obstructions - Trees, hills and buildings can all block sunlight from reaching the solar panels, reducing the collecting time.
3. Weather - Cloudy days mean less power will be collected, but those tend to go along with cloudy nights too, so less power would be needed.
4. Temperature - Batteries tend to be most efficient in the range 20℃ to 30℃ (68℉ to 86℉). If the environment is much hotter or colder, batteries don’t perform as well, so more can be needed.

Some of these considerations call for more batteries to be used, some for more solar panels, and some for both. If you’re exploring this, you may wish to consult with a PV system installer or at least an online PV sizing calculator.

### Does it move?

Yes, the telescope mount has two motors in it, allowing it to aim the cameras at any point in the sky; once aimed properly, it can move the RA axis slowly to track the stars as they move across the sky (i.e. as the earth rotates).

### Do the stars trail in the image?

No, the telescope mount’s purpose is to prevent star trails, allowing us to collect multi-minute exposures without streaks.

### How do you charge the batteries in the camera? Don’t they run out?

During the build, we permanently replace the batteries with an adapter that allows us to supply DC power to the cameras over a cable. This avoids the need to recharge batteries periodically.

### Why don’t you use the cameras to determine if it is cloudy?

The purpose of using the cloud sensor is to enable detecting conditions that would damage the cameras or their lenses. If we pointed the cameras at the sky while it is raining, we’d risk water getting into the lenses, which would likely ruin the lenses permanently.

### Why not use a video camera?

(TODO FILL THIS OUT)

### Why not just point a cell phone camera (or similar) straight up?

While cell phone cameras are improving dramatically, they fundamentally collect fewer photons than larger lens and sensor combinations such as DSLRs. This limits their scientific applicability. That said, we are watching developments in this technology.

# Questions about the process/algorithm

### How many stars are in an image?

PAN001, located on Mauna Loa in Hawaii, can see 10’s of thousands of stars in an image. In more light polluted locations, the sky background will keep us from seeing the dimmer stars that PAN001 can see.

### What happens if stars are too close together?

PANOPTES won’t be able to measure the brightness of the individual stars unless there is a clear gap between them. Those stars will have to be ignored.

### How long is an exposure?

For the three units that are operating as of May, 2018, we are using a 2 minute exposure. That may be optimized slightly as we learn more about the data quality at various sites.

### How often do you take pictures?

Almost continuously: after each 2 minute exposure the images are analyzed briefly to determine if the tracking of the mount is still good, or if the aim or tracking rate needs to be adjusted. This takes some 5 to 20 seconds to perform (it varies based on the computer used).

### Can this really work with a DSLR?

Yes. Over the years camera sensors have improved greatly, including:

* Higher pixel counts in the same area, which means that stars that used to be too close together to distinguish are now separated.
* More bits per pixel, which means that we can more precisely distinguish between brightness values.
* Lower noise, allowing us to make use of those additional bits per pixel (i.e. with higher noise, the additional bits could just be filled with noise).

These and other improvements have made the modern DSLR an increasingly useful device for science. We would still love to be able to buy a dedicated astronomy camera of similar capability for the same price as a mass-market DSLR, but that isn’t likely any time soon.

### Can this really work with an 85mm lens?

Yes. Combined with the Canon SL1, this lens produces a 10° x 15° field of view, allowing for thousands or 10s of thousands of stars to be captured in each image. The core PANOPTES photometry algorithm depends on having lots of stars in each image for comparison.

### How much data does a PANOPTES telescope produce?

This depends on a variety of factors, including the weather (how clear the night sky is) location of the telescope, the season (i.e. the length of the night), the number of images captured each hour (“the cadence”), the size of the image produced by each camera (based on the number of megapixels), and the number of cameras. Let’s break it down for PAN001, located at 19.5° N in Hawaii:

* On a clear night on the winter solstice, there are around 11 hours of astronomical night.
* With two minute exposures and a 15 second break between exposures, PANOPTES can take around 27 images per hour per camera.
* There are two cameras, for around 54 images per pair of cameras per hour.
* The Canon SL1 is an 18 megapixel camera, from which a FITS format file of about 20 megabytes is produced for each image.

So, 20 MB/image * 54 images/hour * 11 hours/night = 11,880 MB/night, or nearly 12 gigabytes. During the summer, the night is shorter, so less data will be collected.

### How does it decide where to look?

Each PANOPTES telescope has a copy of [the target list](https://github.com/panoptes/POCS/blob/develop/resources/targets/simple.yaml), currently focused on well known exoplanets for the purpose of calibration. [POCS](https://github.com/panoptes/POCS) reads this file at the start of the evening, determines which targets are best positioned for observing (e.g. those that are far enough above the horizon, and that will stay far enough above the horizon for at least 2 hours). POCS calls on [astroplan](https://github.com/astropy/astroplan) for doing the scheduling.

Longer term, we will extend POCS so that with two additional options: a local override so that the owner of a telescope can easily specify targets without editing that target list; and the ability to fetch targets from a central server (e.g. to refresh the target list, or to learn of high priority targets, such as for performing a TESS follow-up). This fetch will only be useful for those telescopes that also have an internet connection.

### How do we know what part of the sky we should look at?

As above, the telescope automatically selects targets.

### Can multiple cameras work together to create a better image?

For the purpose of Project PANOPTES, i.e. finding exoplanets, the observations from each camera (a sequence of images) are processed separately, producing light curves for each star of interest (a brightness measurement at the time of each image). The measurements from multiple cameras of a particular star can be combined; when they are for the same time, the values can be used to determine an average value and an error bar (i.e. we can fit a curve to the set of points).

# Questions about the Data

### How can I look at my own PANOPTES data, i.e. the images and the resulting light curves from my own PANOPTES unit?

The images are stored locally on the telescope (for a while) and are uploaded to Google Cloud Storage for permanent storage and for processing. The images and light curves in Google Cloud Storage will be publicly readable (still TBD). Contact the team for access.

Note that the local storage is typically limited to a few months or weeks of images, so eventually the locally stored images will need to be deleted to make room for more; how soon that happens varies based on the rate at which the images are being collected and the size of the disk in your system.

### How can I look at someone else’s PANOPTES data?

The images and light curves are stored based on the identifier of the PANOPTES unit, so if you know the identifier you can find the data. Again, contact the team for access.

# List of Terms & Acronyms

* [Arcminute](https://en.wikipedia.org/wiki/Minute_and_second_of_arc) - 1 60th of a Degree; abbreviated with a single quote or an apostrophe: **‘**. The Sun appears about 32 arcminutes across, or 0.53 degrees, and the moon is just slightly smaller in appearance, at 31 arcminutes across.
* [Arcsecond](https://en.wikipedia.org/wiki/Minute_and_second_of_arc) - 1 60th of an Arcminute; abbreviated with a double quote or double apostrophe: **″**. For PAN001, the pixels are about 10 arcseconds (10″) across.
* [Celestial Sphere](https://en.wikipedia.org/wiki/Celestial_sphere)
* [DC - Direct Current](https://en.wikipedia.org/wiki/Direct_current)
* [DEC - Declination](https://en.wikipedia.org/wiki/Declination). See RA below.
* [Degree](https://en.wikipedia.org/wiki/Degree_(angle)) - Angular measurement; abbreviated with a degree sign: **°**. The field of view of the PAN001 cameras is approximately 10° x 15°, or 150 square degrees.
* DSLR - digital single lens reflex (camera)
* GB - gigabyte
* kg - kilograms
* lbs - pounds
* mm - millimeters
* [NUC - Intel Next Unit of Computing](https://en.wikipedia.org/wiki/Next_Unit_of_Computing), a small computer
* PANOPTES - Panoptic Astronomical Networked Observatories for a Public Transiting Exoplanets Survey
* [RA - Right Ascension](https://en.wikipedia.org/wiki/Right_ascension); along with Declination, these are the measurements astronomers use to specify where in the sky a celestial object is located. RA is analogous to Longitude, but applied to the celestial sphere rather than the surface of the earth.
* [STEM - Science, Technology, Engineering, and Mathematics](https://en.wikipedia.org/wiki/Science,_technology,_engineering,_and_mathematics)
* [TESS - Transiting Exoplanet Survey Satellite](https://en.wikipedia.org/wiki/Transiting_Exoplanet_Survey_Satellite)
* Unit - A single PANOPTES robotic telescope is also known as a PANOPTES unit.