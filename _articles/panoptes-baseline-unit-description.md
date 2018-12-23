---
title: PANOPTES Baseline Unit Description
tags:
- article
- design
- building
date: 2018-12-16 20:29:34 +0000
sub_heading: ''
banner_image: "/uploads/2018/12/16/pan001_with_labelled_components.png"
slug: ''

---
# Author: James Synge (Beta Builder, PAN006)

The first Baseline PANOPTES unit, PAN001, was upgraded in March 2017 to the condition shown below. This page will describe what its various components do, and how they work together; however, it does not go into how the captured images are processed to extract scientifically useful data; for more on that, read [Olivier Guyon’s pages](https://www.naoj.org/staff/guyon/09allskysurvey.web/content.html) describing the early history of Project PANOPTES, and the paper by [Gee, Guyon, Walawender, Jovanovic and Boucher](http://arizona.openrepository.com/arizona/handle/10150/622806).

![](/uploads/2018/12/16/pan001_with_labelled_components.png)

### Control Box

We’ll start with the control box as it runs the show. We’re using a robust Pelican Case as the housing for a small computer, the power management system, and some sensors & connectors which connect to the rest of the PANOPTES unit; the Pelican case keeps the rain and snow out, though we do cut big holes in the side for an air inlet and two smaller holes for air outlet and for wires.

![](/uploads/2018/12/16/pan001_control_box_overview.png)

### 

Computer & PANOPTES Observatory Control System

The brains of a PANOPTES unit is a small computer running **POCS**, the [PANOPTES Observatory Control System](https://github.com/panoptes/POCS). The computer is an Intel NUC, a small form factor PC connected to the internet and via USB to the rest of the unit, enabling it to talk to the two DSLR cameras, the equatorial mount and the two Arduinos that provide it the ability to read data from sensors and to control switches.

> Internet access is not strictly necessary, as the unit can collect and store images locally, simply choosing the best available field(s) each night. However, internet access enables remote monitoring, debugging and upgrading of the software, and of course prompt reporting of results.

The PC has one or more drives for storage of captured images, computed light curves, POCS and the operating system. Unlike a standard PC, this one does not have a monitor, keyboard or mouse attached, though sometimes that is done during servicing of the unit, such as debugging software or upgrading the firmware in the cameras.

POCS manages the process of fetching a list of fields to observe (currently from a local file, eventually also from the PANOPTES server), capturing images of the highest priority fields visible in the night sky, computing the brightness of the stars in each image, and building light curves for stars across images, and finally uploading those results to the PANOPTES server. POCS also measures and records temperature, humidity, wind speed and more; these will enable analysis to determine if there are some sensor readings that indicate unfavorable conditions for observing (e.g. if the dew point is close to the ambient temperature, then the lenses are likely to fog over, or if it is too windy for the cameras to be stable).

Before capturing images, and throughout the night, POCS monitors the weather sensors to determine whether conditions are good for observing, or whether the mount (and hence the cameras) should be parked; this position, with the cameras pointed straight down at the ground on the east side of the mount, is the one orientation in which the cameras and mount are protected from rain. At the end of the night, no matter what the weather is, the mount is moved to the parked position to protect the cameras from falling dust & pollen, as well as from sunlight: looking even obliquely at the sun could heat up the lenses and cameras enough to destroy them.

### Electrical Power

The control box has cables entering it for internet access and mains power (i.e. electricity: AC 120V/60Hz in much of the Americas, AC 240V/50Hz in most of the rest of the world). The components of a PANOPTES unit require DC electricity at 12V or lower, so the mains power is delivered to a Power Supply Unit (PSU) that performs the conversion. For conversion from AC 120V, we use a [PowerStream PST-SP12AL](https://www.powerstream.com/12V-backup.htm), which also acts as a battery backup for the system: it charges an attached 12V battery when mains power is available, but if that fails it immediately switches over to using the battery to continue supplying​ power to the rest of the system. The PSU also provides a signal indicating whether mains power is available; because a power outage could be of any duration, POCS uses the lack of mains power as a signal that it should park the mount.

![](/uploads/2018/12/16/pan001_power_distribution.png)

The PSU is connected to the Power Board, a custom built board which enables controlled and monitored distribution of power within the PANOPTES unit. The board has relays enabling it to individually​ switch on and off the power to the PC, weather station, equatorial mount, camera box and fan (used to cool the control box). In addition, it can measure the electric current used by the whole system, the equatorial mount, the camera box and the fan; collecting this and other sensor data over time will allow us to learn more about the system’s behavior.

##### 12V… Nominally

A battery listed as 12V usually has a higher voltage than that… unless it is drained of power. A 12V lead-acid battery, such as that used here, is composed of 6 cells arranged in a series circuit, which adds together the voltages of each cell: around 1.8V when drained, to almost 2.3V when fully charged, so almost 13.8V at maximum. To charge such a battery, a voltage of anywhere from 2.3V to 2.45V per cell is required, with the selected voltage affecting the charging rate, and being limited by the ambient temperature (if it is hot, a lower voltage must be used to avoid damaging the battery). As a result, the PSU must be adjusted so that its output voltage is above 12V (somewhere in the range 12.9 to 13.8V is required [according to supplier of the PSU](https://www.powerstream.com/SLA.htm)), else it won’t charge the battery.

All of this means that while a PANOPTES unit is listed as using 12 volts DC internally, in reality the voltage is around 10% higher than that. All of the PANOPTES components connected to the “12V” power lines have been selected such that they accept that range; the lowest limit is the Intel NUC, at DC 19V.

##### Battery Life

It should be noted that rechargeable batteries have a limited lifetime. Unfortunately, with backup batteries this often isn’t noticed until a power failure when the battery also fails. If you’re building a PANOPTES unit, put an entry in your calendar for the following year to checking on the battery. If it can’t hold a charge, then replace it.

### Telemetry Board

The relay control lines and the sensor signal lines are routed to a ribbon cable that is connected to another custom board, the Telemetry Board, via a ribbon cable. This board has an Arduino Micro, which is connected to the ribbon cable and also to three thermometers placed at various points around the control box and a temperature/humidity sensor placed near the air intake. The [Arduino runs software](https://github.com/panoptes/PACE/tree/develop/telemetry_board) that gathers the signals from all of the the sensors and reports them to POCS via USB; it also listens for instructions regarding the relays sent over the same USB connection from POCS, and sets them to the requested state. This enables POCS to turn off the cameras and mount during the day, to turn the cooling fan on when the control box gets too hot, etc. The Arduino connects to the PC via a USB hub, enabling POCS to read the sensor values and to control the relays.

### Internal Communication

POCS interacts with the rest of the components of a PANOPTES unit via USB, as shown below.

![](/uploads/2018/12/16/pan001_usb_connections.png)

As you can see, some components don’t speak USB natively, but instead require an adapter (one for each) to translate between their older (and simpler) serial protocols and USB.

> USB (Universal Serial Bus) also uses a serial protocol, but one that is quite a bit more complicated to implement. The simpler protocols also have the advantage that they can work over quite long cables, while USB 2.0 is limited to 5 meters.

The unused ports on the USB hub enable connecting a keyboard & mouse when debugging or modifying the setup of a PANOPTES unit.

### Camera Enclosure

At the “other end” of a PANOPTES unit from the Computer Box is the Camera Enclosure, carried by the Equatorial Mount. This protective box keeps the DSLR cameras used to image the night sky, and their supporting electronics dry, though only when in the parked position: there are two great big holes in the side for the lenses, so parking the mount rotates the enclosure so that those holes are on the bottom, facing down at the ground.

The cameras are Canon Rebel SL1s (aka EOS 100D), the cheapest of the Canon DSLRs at this writing. Attached to those are Rokinon 85mm f/1.4 lenses, which provide a large field of view: 15 degrees x 10 degrees; as a result, a typical image of the night sky will contain 10s of thousands of stars. Note that the use of two cameras is not related to binocular vision. It provides us with more images to process, but at a lower cost than one camera with a larger lens with twice the light gathering of the two smaller lenses.

A DC 12V power line and USB cable are fed through the mount and into the bottom of the enclosure. The DC 12V line is split to go to both a USB Hub and to the Camera Board. The Camera Board has:

* Two camera power circuits, each with a voltage regulator that outputs the DC 9V that the cameras require and a solid-state relay for switching the power to the camera on or off.
* A 3-axis accelerometer used for measuring the orientation of the board. Note that when just sitting on the ground, an accelerometer measures 1G in the direction of the center of the earth (i.e. which direction is down); with suitable adjustment for the alignment of the accelerometer within the enclosure, we can use this to determine the orientation of the enclosure.
* A connector for attaching a cable in turn connected to a temperature and humidity sensor.
* An [Arduino Micro running software](https://github.com/panoptes/PACE/tree/develop/camera_board) that reports the sensor data to POCS over the USB connection, and reads instructions from POCS regarding turning the cameras on or off.

As shown in the USB diagram above, the USB cable goes to a USB Hub, which is then connected to the cameras and to the Camera Board, providing POCS the ability to control each camera separately, and via the Camera Board to switch the cameras on and off as desired.

The cameras are attached to a ½” thick aluminum plate via the standard ¼-20 screws used for camera tripods. Below that plate is a pair of plates that sandwich the bottom of the plastic enclosure, holding it firmly. The camera plate attaches to the top plate of that pair, and the bottom plate of that pair is attached to a Vixen dovetail plate; that last plate is the one gripped by the equatorial mount.

### Equatorial Telescope Mount

This type of mount is used for tracking the stars as they move across the night sky… actually, the mount rotates at the same rate that the earth rotates, but in the opposite direction, undoing the effect of the earth’s rotation, thus aiming the mount’s payload at the same point on the celestial sphere as the earth rotates. Furthermore, this type of mount keeps the camera’s field of view constant during tracking, unlike with an alt-azimuth mount where the field of view rotates as the mount tracks the center of the field.

PANOPTES is using iOptron mounts, either an iEQ30 Pro or an iEQ45 Pro; the latter has a higher carrying capacity, but is otherwise very similar. The iEQ30 Pro is shown in the following diagram.

![](/uploads/2018/12/16/ioptron_ieq30_pro.png)

We modify this by removing the polar scope (which is in the RA axis), and running cables in from the computer box through the polar scope’s location, and then into the hollow DEC axis, and up into the Camera Enclosure that is secured to the mount by the dovetail clamp. Weatherproofing is added to keep water out of the motors, electronics, and the bearings of the RA and DEC axes. The pictured hand controller is not used; instead a USB-to-Serial cable is connected to the mount control electronics, by which POCS controls the mount.