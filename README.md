# Making Standing Desks with RJ11/RJ12 ports Smart

## ⚠️ Note this project is a work in-progress right now, hoping to be completed by end June 2025. 

Have you purchased a standing desk only to find you don't stand up!  Then if you have a desk controller with an RJ11/RJ12 port we have a device called 'DeskUp Pro' that lets you control your desk from Home Assistant ([see some examples below of how you could automate it](#example-automations-you-could-create-that-integrate-with-your-desk))

It connects over Wi-Fi to Home Assistant from there you can control your standing desk from your phone, automations and voice.

All the existing functionality of the desks controller is retained. If you use the desk's control panel to move the desk it's height is instantly updated in Home Assistant.

### ADD PRODUCT IMAGE HERE

## What's shown in Home Assistant
<p align="center">
  <img src="images/DeskUpPro-Controls.jpg" height="350px" />
  <img src="images/DeskUp-Pro-Cover-Slider.jpg" height="350px" />
  <img src="images/DeskUpPro-Sensors.jpg" height="350px" />
  <img src="images/DeskUpPro-Configuration.jpg" height="350px" />
</p>


### Specs
- The firmware of the DeskUp Pro Controller is based on ESPHome
- The device itself uses an ESP32 chip that is powered by the desks controller over the RJ11/RJ12 Cable, so no USB cable is needed to power it.
- Protocol used is 2.4ghz Wi-Fi 
- Device can be connected to Home Assistant during setup using USB C cable (not supplied), Bluetooth, Captive Portal (Wi-Fi hotspot)



### Example automations you could create  with your desk
- If you're sitting for too long, automatically raise the desk to standing height.
  - Or announce on a smart speaker that you have been sat down too long.
  - Or maybe flash a light
- If you ignore it then 5 mins later have it nag you to stand up until you do!
- After lunchtime raise the desk so you start the afternoon standing up (maybe trigger this as you walk into the room if you have a motion sensor).
- Prefer to do meetings standing up, then if your calendar is exposed to Home Assistant you can automate it to raise the desk 1 minute before your meeting starts.
- At the end of the working day lower the desk when you turn off the office light or leave the room.
- Setup a Home Assistant dashboard so you can have an unlimited number of preset height buttons e.g. maybe each family member prefers a different sit & stand desk height.
- Want to control your desk from something else then as long as it can either integrate with Home Assistant or call a webhook you can.
- The DeskUp Pro device even has an RGB Led on it, and whilst the DeskUp Pro code doesn't use it we've exposed it to Home Assistant so you can use it in automations.
- etc, there are many possibilities.

### This project is open source, and in this Github repository you can find
- Instructions on how to build/wire up the ESP32.
- The full source code to control the desk.
- Example Home Assistant dashboard cards.
- Example Home Assistant Automations.

_This is a product of reverse engineered code where each of the desks functions was extracted by the community, if your interested all of this can be found here:_

https://community.home-assistant.io/t/maidesite-standing-desk-with-esphome/602293


This product builds on that work by:
- Enhancing the original ESPHome yaml code from the community to include more features and some bug fixes.
- Describing in detail how to wire up the ESP32 board which is all documented in this Git repository so you can do the same.  
- Made all this free to use for your own personal use.

However if you would prefer to avoid:
- Buying the parts
- Soldering it all together
- 3d printing a case
- Downloading & flashing the firmware

And would simply like to get a device pre-built, in a box that you can plug in to your desk and be automating it in 10 minutes then you can purchase one from our eBay shop.

### TODO ADD EBAY LINK


#### ⚠️ Check Compatibility
- You must be running Home Assistant.
- Any standing desk that has a free RJ11 / RJ12 port is likely to be compatible.
- Before you decide to build or buy check the compatibility of your [desk here](docs/compatibility.md).

You should understand the risks before purchasing, it's your responsibility to determine if its fit for your purpose. 


### What's in the box if I bought one?
- DeskUp Pro device with attached RJ12 cable flashed with the latest firmware
- Housed in a 3D printed case
- Velcro adhesive
- Getting started guide

### We test every device before we ship it
- After building a device we flash it with the latest firmware.
- We plug it into one of our desks and connect it to Home Assistant where we check the device reads the sensor values from the desk and the button controls move the desk.
- We unplug and plug back in the device multiple times to check the cable and components are connected securely.
- Finally we reflash the firmware and package it up in bubble wrap for shipping.


### Documentation
[Setup a purchased device](docs/setup/README.md)

Build one yourself TODO

[Configure the device in Home Assistant](docs/configuration/README.md)


