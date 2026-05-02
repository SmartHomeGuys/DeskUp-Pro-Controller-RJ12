# Calibrate a Fully Jarvis Desk

These desks report the memory height presets differently. Instead of using cm in the desk controller they use motor steps.  

Which means for these desks a calculation is needed to convert these to cm for displaying the correct value for the Desk M1, M2, M3, M4 Height sensors in Home Assistant or the web UI.


## To calibrate the desk:

1. Set your desk's M1 memory preset to be the physical minimum height of the desk.

2. Set your desk's M4 memory preset to be the physcial maximum height of the desk.

3. In the configuration section are 2 text boxes: Min Height & Max Height.
Set these to your desks physical minimum and maximum height limits.  Then restart the DeskUp Pro.

4. Change the 'Desk Control Code Variant' dropdown to be 'Fully Jarvis'

5. Press the 'Calibrate Fully Jarvis Desk' button.

6. Restart the DeskUp Pro

The 4 memory sensors should now show the correct value in cm.

### Don't know what the desks Physical Height Limits are?

You can try using the 'Send Heights to Log' button in the Diagnostics section.  

Once pressed this will display the min & max physical heights in the ESPHome Log or the Web UI. You can access the Web UI from a web browser using devicename.local in the browser URL.


## What's the calculation?

```
height = (rawHeight - minimum height motor steps) / counts per cm) + min height

Where counts per cm = (maximum height motor steps - minimum height motor steps) / (max height - min height)
```

## Thank's to members of the community
Debuging motor steps to cm wasn't easy and thanks go to 3 members who helped me resolve this issue:

@GuiGui2

@PedroTorresM

@bomberstudios