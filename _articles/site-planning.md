---
tags: []
title: Site Planning
sub_heading: How to plan for a PANOPTES install
banner_image: ''
slug: ''
published: false

---
## Location / Environment

There are a number of factors to consider when actually selecting a site location. Some of these options are preferences, e.g. light pollution at site, whether the entire horizon is visible or not, etc, and will depend on the site-specific details.

**Access to sky:** In general, you want to make sure you have access to a good chunk of the night sky (although this feasibly could just be half of the sky), from about 30° elevation and upward. It is okay if there are some obstructions at some places as the unit can be marked to avoid these areas.

The best way to find the ideal location (if you have a choice from several) is to stand in the location where you are considering installing the unit and raising your arm to point at the tallest object you can see around you as shown in Figure 1 below. Then turn 360 degrees and check that that is indeed the highest object. Once you have confirmed this, point at the original tall object with your arm and get a friend to measure the height of your fingertips from the ground, the height of your armpit above the ground and the length of your arm (these are indicated by the purple arrows in Figure 1.

!\[\](https://docs.google.com/drawings/d/sGTzsDmJJoWCyIuyz4kVHRw/image?w=395&h=336&rev=67&ac=1&parent=1xyxNN4ve371p61c3DBlsfyeH6woJkyOvByuhj3Wj2eI =395x336)

_Figure 1: How to check the elevation of objects surrounding a potential PANOPTES site._

Once you have these dimensions you can use trigonometry to calculate the angle of elevation. The following equation can be used:

![](/uploads/2019/08/22/elevation.png)

If you are going after specific targets you may not need to have a constant minimum elevation all the way around the horizon. For example, if you are in the North, and want to look at more Southern targets, you could move your unit closer to obstructions in the North so that the southern elevation limit is reduced and you can look closer to the horizon. This is at the discretion of the installer but the default is to have a constant horizon limit at a given site.

**Light pollution:** It’s actually okay to be located in a city or other location that has a lot of light pollution. While we would rather have darker skies, brighter skies can actually be used to look at brighter targets, which are often too bright for a dark sky location. The default stars that PANOPTES searches are in the V magnitude range of 8-12, but in a bright location we can look at magnitude 6-8 by having shorter exposure times. There will not be as many viable targets but they are still scientifically interesting and valid targets.

**Weather:** The PANOPTES unit has no enclosure to protect against the weather. When bad weather is detected the unit “looks down” so that the camera lenses don’t get ruined. The weather-proofing that is specific to each unit should be done with respect to this parked position. The current baseline unit (PAN001) has happily weathered a number of blizzards (\~3-5 inches of snow), 150kph winds, rain, and at least one major earthquake.

**Animals:** Perhaps one of the larger concerns are bugs and/or birds. While we have not had any reported problems with these it should be noted that there are many places where bugs could find a nice warm home. The underside of the control box for PAN008 (Australia) became home to a number of red-backed spiders, which are poisonous and can be deadly. The current design tries to seal off all large cavities but one should be aware of the possibilities.

## Physical Footprint

A PANOPTES unit is relatively compact, however it does require some space to operate. There are two aspects to the physical footprint, the mount and the control box.

##### Mount

Ground: The mount and pier, along with the range of motion of the mount, occupies about one (1) square meter of space.

Vertical: With the mount assembled on the pier according to the current design the mount sits about one (1) meter tall.

Ideally this footprint is available as a concrete pad to which the pier can be mounted and given full range of motion.

##### Control Box

Ground: The control box is a [Pelican 1560](https://www.pelican.com/us/en/product/cases/protector/1560) and needs about 65x50cm.

Vertical: The control box can fit within about a 30cm vertical space with the lid closed.

Note that the Control Box does not necessarily need to be located next to the mount itself assuming you run the cables appropriately (note well, USB 2 cables have a finite length over which they can operate so test that the length of cable you have chosen works well before making it long, 10-12 ft will work, longer needs to be tested). Check the forums for examples of some different setups people have done.

## Power

The system requires access to a mains power connection, either 120V or 230V depending on your host country. The UPS system built as part of the [Power Board](https://docs.google.com/document/d/1A91cS6mInqHBecLHhUG1eggTJb13dPNvwCaTSvFpjB8/edit?usp=sharing) should handle the conversion to the 12V system used by the unit.

Depending on where the unit is located with respect to the mains outlet this could involve running some longer extension cords to the unit.

**Solar Power:** Currently there are no units that are running on solar power although there has been a lot of interest. The baseline design calls for a 12V backup battery, which is used primarily to park the unit during mains power loss, however this could be replaced with a 24V battery and feasibly be used for operations. Extra costs would be associated with this option (for instance, it would require an inverter, solar panels, etc.). If interested in building a solar-powered unit please contact [info@projectpanoptes.org](mailto:info@projectpanoptes.org) or check the [forums](https://forum.projectpanoptes.org).

## Communications / Internet

Each PANOPTES unit will generate about 20GB of data per night (\~10GB / camera) that is uploaded to a Google Storage Bucket. The units can run a lossless compression algorithm which can reduce this by a factor of 3-4. This will help reduce bandwidth requirements.

There are various ways that this requirement can be overcome. The original PANOPTES prototype merely stored all of the files on an external hard-drive, which was physically collected every 2-3 months. A 4-terabyte USB harddrive costs about $90 USD and will store well over a year’s worth of data.

If you would like to build a unit in a remote location that doesn’t not have a reliable internet connection please reach out to [info@projectpanoptes.org](mailto:info@projectpanoptes.org) to discuss ideas. There may also be related topics in the [forum](https://forum.projectpanoptes.org).

## Cable routing

Once the location of the source of power and network have been identified, it’s important to determine how the cables will be routed to the PANOPTES unit. For example, at Maunaloa above ground conduits were allowed (see Figure 2 below), while at Mt Wilson the conduits have to be buried under ground to prevent trip hazards as there was a higher volume of foot traffic.

## Elevating the Control Box

In areas where there is significant leaf litter or where there is snow, you may consider lifting the control box off the ground to prevent the leaf litter or snow blocking the cable and fan ports which could cause the fan to burn out. On Maunaloa we built a small frame from scrap that elevated the control box by about 1ft which helped.

!\[\](https://docs.google.com/drawings/d/saFW0r-6w9myCWawRtoYn1g/image?w=445&h=375&rev=7&ac=1&parent=1xyxNN4ve371p61c3DBlsfyeH6woJkyOvByuhj3Wj2eI =445x375)

_Figure 2: Show the Maunaloa unit with the control box elevated on a frame to prevent snow blocking the ports._

## Security

Hopefully security is not a major concern, but you should be aware that there is some valuable equipment both in the control box as well as in the camera box, not to mention the mount itself. The Pelican Case that is used for the control box does have holes for a padlock, which will at least prevent idle theft. The easiest and most likely item to steal would be the camera box itself as it could easily be removed (snipping the wires) and contains two cameras that people might find useful.

Realistically the bigger concern is problem simple vandalism. Units should have a webcam pointed at them for normal operations and this could help identify vandals after the fact.