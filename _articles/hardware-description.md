---
title: Hardware Description
tags: []
date: 2018-12-17 10:34:53 +0000
sub_heading: ''
banner_image: ''
slug: ''
published: false

---
# Hardware

The hardware for a PANOPTES baseline unit is divided in to three components:

## The Camera Box

The camera box encloses the two cameras and lenses along with an electronics (arduino) board and a USB hub. One power and one signal (USB) cable come up through the mount to the camera box. The USB hub then splits the USB signal out to the arduino and to both cameras. The power goes to the electronics board which regulates it down to the appropriate voltage for the cameras.

The electronics board contains several sensors including the accelerometer to sense the orientation of the camera box.

[Build Instructions »](https://projectpanoptes.org/hardware/camera_box.html)

***

## The Mount and Tripod/Pier

The PANOPTES baseline uses an iOptron iEQ30 Pro mount to which we add weatherproofing. The mount can either sit on the standard tripod, or on an optional PANOPTES designed pier for more permanent installation.

A PANOPTES unit does not require a traditional observatory enclosure (e.g a dome or roll off roof). It is designed to withstand weather when it is in its park position. This greatly simplifies the build and the software for the system.

[Build Instructions »](https://projectpanoptes.org/hardware/pier.html)

***

## The Control Box

The control computer, power supplies, and supporting electronics all sit in a weatherproof enclosure next to the mount. A PANOPTES unit is designed to be self contained, requiring only input external power and internet connectivity.

[Build Instructions »](https://projectpanoptes.org/hardware/control_box.html)