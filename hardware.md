---
title: Hardware
layout: default
---

The hardware for a PANOPTES baseline unit is divided in to three components:

# The Camera Box

<a class="btn btn-default btn-sm" href="#">
    <span class="fa-stack fa-lg">
        <i class="fa fa-square-o fa-stack-2x"></i>
        <i class="fa fa-wrench fa-stack-1x"></i>
    </span>
    [Build the Camera Box!](camera_box.html)
 </a>

The camera box encloses the two DSLR cameras and lenses along with an electronics (arduino) board and a USB hub.  One power and one signal (USB) cable come up through the mount to the camera box.  The USB hub then splits the USB signal out to the arduino and to both cameras.  The power goes to the electronics board which regulates it down to the appropriate voltage for the cameras.

<div class="media">
  <div class="media-left">
    <a href="#">
      <img class="media-object media-right" src="https://goo.gl/photos/StwZ3sh4qZC5wcma8" alt="PANOPTES Camera Box">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">PANOPTES Camera Box</h4>
    ...
  </div>
</div>

The electronics board contains several sensors including the accelerometer to sense the orientation of the camera box.

# The Mount and Tripod/Pier

The PANOPTES baseline uses an iOptron iEQ30 Pro mount to which we add weatherproofing.  The mount can either sit on the standard tripod, or on an optional PANOPTES designed pier for more permanent installation.

A PANOPTES unit does not require a traditional observatory enclosure (e.g a dome or roll off roof).  It is designed to withstand weather when it is in its park position.  This greatly simplifies the build and the software for the system.

# The Control Box

The control computer, power supplies, and supporting electronics all sit in a weatherproof enclosure next to the mount.  A PANOPTES unit is designed to be self contained, requiring only input external power and internet connectivity.
