# Making a Maidesite Standing Desk Smart

This is a device that allows you to control your Maidesite standing desk from Home Assistant. 

It simply plugs into the desk controllers RJ12 port and after connecting it to your home's Wi-Fi will appear in Home Assistant as a device allowing you to control your desk from your phone or from automations.  

All the existing functionality of the desks controller is retained. In fact when you use the desk controller to move the desk it's height is updated in Home Assistant.

### ADD HA IMAGES HERE

The firmware is based on ESPHome and the device itself uses an ESP32 chip that is powered by the desks controller over the RJ12 Cable.

### Example automations you could create that integrate with your desk
- If you're sitting for too long, automatically raise the desk to standing height.
  - Or announce on a smart speaker that you have been sat down too long.
  - Or maybe flash a light
- If you ignore it then 5 mins later have it nag you to stand up until you do!
- At the end of the working day lower the desk when you turn off the office light or leave the room.
- Setup a Home Assistant dashboard so you can have an unlimited number of preset buttons e.g. maybe different heights for each family member.
- etc, there are many possibilities.

### This project is open source, and in this Github repository you can find
- Instructions on how to build/wire up the ESP32 controller.
- The full source code to control the desk. 
- Example Home Assistant dashboard cards.
- Example Home Assistant Automations.

However if you'd like to get a device pre-built, in a box and ready to go you can purchase one from my eBay shop.

### ADD EBAY LINK

### Instructions
Build one yourself TODO

[Setup a prebuilt device](docs/setup/README.md)

