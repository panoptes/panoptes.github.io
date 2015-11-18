---
title: Power Board Assembly Instructions
layout: default
---

 {% include warning.html text="We do not advise people under the age of 18 to undertake this build without a parent or guardian present. In addition, although the build has been simplified so that most people can attempt it, a basic understanding and skill with everyday tools is necessary. If you are not familiar with these tools, please seek appropriate training/advise. " %}

<!-- {% include unit_note.html %} -->

<h3>Table of Contents</h3>

## Introduction

The power board is responsible for a number of features of the PANOPTES unit related to the electronics. Specifically, the power board is responsible for:

* To receive the main power from the 12V Power Supply (+UPS) and deliver it to the PANOPTES subsystems
* To sense the current consumed by the following subsystems for monitoring/debugging:
    * Main Current: I_main
    * Mount Current: I_mount
    * Camera Box Current: I_cam
    * Electronic box Fan Current: I_fan
* To power cycle (ON/OFF) the 12V supply to the following subsystems for safety/debugging:
    * Mount: 12V_Mount
    * NUC: 12V_NUC
    * Weather Station: 12V_Weather
    * Camera Box: 12V_Cam
    * Electronic box Fan: 12V_Fan
* To protect the PANOPTES subsystems from voltage spikes (surges) using Tranzorb diodes on each 12V line in addition to a commercial surge protector on the Main 12V line
* To be able to filter the 12V outputs depending on the load (damping)
* To standardize the connectors for the distribution of the 12V
* To help with debugging and calibration of the current sensors

### PANOPTES Electronic Box Hardware Synoptic

### Schematics

#### Current sensing of the Main Current

1. Receives 12V from power supply (12V_IN) on the jack 3.5mm connector
2. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
5. Current sensing with an ACS712 module, the corresponding output voltage being connected to a 2 point 90 degrees connector
6. Delivers the main 12V to all the 12V lines on the board

#### +5V from the electronic board to power the current sensors

1. Receives 5V from the Electronic Board on the jack 3.5mm connector for all the ACS712
2. In the next version a standalone 5V regulator should be implemented on this board to avoid current loops.
3. Some decoupling capacitors might be necessary

#### Power cycling, protection and filtering of the 12V NUC

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch receives the command signal from the Electronic Board to power ON/OFF the 12V_NUC
3. The command signal drives a NPN transistor to minimize the load on the Arduino:
    a.  NUC_ON=+5V ➔ 12V_NUC=12V
    b. NUC_ON=0V ➔ 12V_NUC=0V
4. LED to visualize if the line is ON (LED ON) or OFF (LED OFF)
5. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
6. Tranzorb diode clamps the output to 12V
7. Delivers the 12V_NUC through a 3.5mm jack connector
8. Not implemented: the RC network to filter/damp

#### Power cycling, current sensing, protection and filtering of the 12V MOUNT

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch receives the command signal from the Electronic Board to power ON/OFF the 12V_MOUNT
3. The command signal drives a NPN transistor to minimize the load on the Arduino:
    a. MOUNT_ON=+5V ➔ 12V_ MOUNT =12V
    b. MOUNT_ON=0V ➔ 12V_ MOUNT =0V
4. LED to visualize if the line is ON (LED ON) or OFF (LED OFF)
5. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
6. Current sensing with an ACS712 module, the corresponding output voltage being connected to a 2 point 90 degrees connector
7. Tranzorb diode clamps the output to 12V
8. Delivers the 12V_MOUNT through a 3.5mm jack connector
9. Not implemented: the RC network to filter/damp

#### Power cycling, current sensing, protection and filtering of the 12V FAN

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch receives the command signal from the Electronic Board to power ON/OFF the 12V_FAN
3. The command signal drives a NPN transistor to minimize the load on the Arduino:
    a. FAN_ON=+5V ➔ 12V_ FAN =12V
    b. FAN_ON=0V ➔ 12V_ FAN =0V
4. LED to visualize if the line is ON (LED ON) or OFF (LED OFF)
5. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
6. Current sensing with an ACS712 module, the corresponding output voltage being connected to a 2 point 90 degrees connector
7. Tranzorb diode clamps the output to 12V
8. Delivers the 12V_FAN through a 3.5mm jack connector
9. Not implemented: the RC network to filter/damp

#### Protection and filtering of the Electronic Board Current

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
3. Current sensing with an ACS712 module, the corresponding output voltage being connected to a 2 point 90 degrees connector
4. Tranzorb diode clamps the output to 12V
5. Delivers the 12V_ELECTRONICS through a 3.5mm jack connector
6. Not implemented: the RC network to filter/damp

#### Power cycling, current sensing, protection and filtering of the 12V CAMERAS

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch receives the command signal from the Electronic Board to power ON/OFF the 12V_CAMERAS
3. The command signal drives a NPN transistor to minimize the load on the Arduino:
    a. CAMERAS_ON=+5V ➔ 12V_ CAMERAS =12V
    b. CAMERAS_ON=0V ➔ 12V_ CAMERAS =0V
4. LED to visualize if the line is ON (LED ON) or OFF (LED OFF)
5. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
6. Current sensing with an ACS712 module, the corresponding output voltage being connected to a 2 point 90 degrees connector
7. Tranzorb diode clamps the output to 12V
8. Delivers the 12V_CAMERAS through a 3.5mm jack connector
9. Not implemented: the RC network to filter/damp

#### Power cycling, protection and filtering of the 12V WEATHER

1. Receives 12V_MAIN (see section Current sensing of the Main Current)
2. Male Header 2 points 2.54mm pitch receives the command signal from the Electronic Board to power ON/OFF the 12V_WEATHER
3. The command signal drives a NPN transistor to minimize the load on the Arduino:
    a. WEATHER_ON=+5V ➔ 12V_WEATHER=12V
    b. WEATHER_ON=0V ➔ 12V_WEATHER=0V
4. LED to visualize if the line is ON (LED ON) or OFF (LED OFF)
5. Male Header 2 points 2.54mm pitch in series to:
    a. Open the circuit (test, no current/no voltage)
    b. Current sensor calibration (current measurement with a tester)
6. Tranzorb diode clamps the output to 12V
7. Delivers the 12V_WEATHER through a 3.5mm jack connector
8. Not implemented: the RC network to filter/damp

#### Sensing of the Main Current on the commercial line (110V_AC) not implemented on the current version of the board

1. This circuit replaces the +5V voltage sourced initially used to detect the presence of 110VAC
2. The CR8400 magnetic sensor is placed around one conductor of the 100V commercial voltage input
3. 2 point connector 2.54mm pitch receives the output voltage of the CR8400
4. A diode bridge is used to rectify the output voltage of the sensor
5. The R2 resistor fixes the total gain of the sensor (see below)
6. C2 filters the rectified output voltage
7. A LM311 voltage comparator powered with +5V is used to compare the output voltage of the sensor with a user defined reference voltage derived from the main 12V with a potentiometer. The reference voltage must be adjusted to the voltage corresponding to the minimum nominal current consumed by PANOPTES.
8. COUT=+5V if the sensed voltage is higher than the reference one (110VAC is present) and 0V on the contrary
9. A LED indicates that 110VAC is sensed

### POPULATING THE POWER BOARD

The prototype board used to implement the first version of the Power Board was too small to be able to integrate all the desired functionalities because wrong references had been purchased. That is the reason why the cabling is a somehow messy.
Furthermore because some of the components don’t have a 2.54 pitch, bricolage is needed.

SSR

AWG 30-32

ACS712

12V_MOUNT CHANNEL (Current Sensing + Power Cycling + Protection)

CONNECTOR 2 POINT WIRE

Solder the cable so the isolation comes out at the cut part (no heat shrink needed) and insert the soldered part inside the connector

FURTHER IMPROVEMENTS

1. Use multicontact connectors (SUB-D 9 points) for the command (12V ON/OFF), sensed signals (Output of the ACS712 current sensors)
2. 5V voltage regulator on the Power Board
3. CR8400 sensor circuit on the Power Board
4. Larger prototype PCB
5. Custom PCB


## Next Steps

