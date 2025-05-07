# 2025.6.0
- Release of the DeskUp Pro Controller as a product

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
