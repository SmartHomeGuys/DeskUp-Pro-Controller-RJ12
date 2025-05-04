# Making a Maidesite Standing Desk Smart

This is a device that simply plugs into the Maidesite desk controllers RJ12 port which then allows you to control your standing desk from Home Assistant. 

After plugging it into the desks RJ12 port and connecting it to your home's Wi-Fi it will appear in Home Assistant as a device allowing you to control your desk from your phone or from automations.  

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

#### ⚠️ Check Compatibility before you buy
- Your Maidesite desk must have a free RJ12 port on the controller.
- There is no guarantee that this device will work with your desk due to the different models out there. and the desk manufacturer can change their specifications at anytime even with the same model number.
- As this is a product of reverse engineering, until you try it on your desk there is no way to be 100% certain that it will or won't work.
- The credit goes to the community of people who collaborated to reverse engineer the Maidesite desk controller

LIST OF DESKS HERE

You should understand this risk before purchasing as its your responsibility to determine if its fit for your purpose. The credit community helped build

If you have any questions, please contact me and I will be happy to help!


### Instructions
Build one yourself TODO

[Setup a prebuilt device](docs/setup/README.md)

