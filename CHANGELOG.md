# 2025.12.0
- Added a dropdown in the config section to allow different desk control code to be chosen.  This allows different hex codes to then be sent to the desk controller.  The Default is the original DeskUp Pro code, but we've added a Rocka option because whilst Rocka's Git Repo uses exactly the same hex codes as our default one it had 1 difference with the calculation to set the height on the Height Control. So adding this as an option in case anyone has issues with the Default, it also means we maybe able to expand this functionality later to support more desk types.
- Bump ESPHome version to 2025.11.4 which has a couple of notable enhancements to reduce the flash memory used and improve Wi-Fi reliability
https://esphome.io/changelog/2025.11.0/#enhanced-wifi-security-and-reliability

# C6 Chip (using desk code 2025.7.0)
- No code changed for the S3 chip or any desk functionality, just added support for the use of a SeeedStudio C6 chip

# 2025.7.0
- Changed to use esp-idf framework now due to ESPHome 2025.7.x causing out of flash storage space when using arduino.
- Updated the LED version to one supported by arduino.
- Changed the onboot priority from 800 down to 200 as the previous setting was resulting in the memory preset sensors M1 to M4 not being read at all or only partially on boot of the device.


# 2025.6.3
- Added the ability to send a wake up desk command prior to it sending the command requested. Can be toggled on with the 'Send Wake Up Cmd' switch in the configuration section.


# 2025.6.2
- Added a check that if Wi-Fi is disconnected it turns on the LED in solid red.
- Added missing entity/platform ids


# 2025.6.1
- Added Web Server to allow other smart home hubs to use the Rest API
- Added up and down offset fields which are in mm, these allow compensating the height of the desk when using the slider to move it, as sometimes it can be consistently off by a millimeter or 2 so this allows for fine tuning.
- New Desk Status sensor returns Idle, Raising, Lowering
- Added 4 Set Memory Preset buttons which when used set the height the desk is currently at to that preset.


# 2025.6.0
- Added a substitution variable to allow changing the ESP32 Led from the default of GRB (if required, as some chip batches can swap this to RGB). You have to have adopted the device in ESPHome Builder to use this.


# 2025.5.0
- Fixes a bug in the original community code where the slider didn't always move the desk, sometimes needing multiple presses before it did.
- Fixes a bug that now allows you to set the position of the desk from Home Assistant to a decimal point value rather than a whole number.
- Adds a Home Assistant Cover to the device so you have that option of controlling the desk.
- Adds min / max desk height fields to Home Assistant to allow setting the desk min/max heights without needing to recompile the yaml in ESPHome Builder.
- Adds the LED to the device in Home Assistant, because it might be useful for people to use in automations.  None of the code in this repo uses it.
- Adds a height of the desk in percent sensor.
- Adds an idle time in seconds sensor which is useful in automations.
- Adds a timestamp sensor in days, hh:mm:ss format that can be displayed on dashboards.
- Adds a reset the idle time back to 0 button which can be used in automations. 
