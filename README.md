# DeskUp Pro - Standing Desk Controller (RJ12)
<table border="0">
  <tr>
    <td><a href="#%EF%B8%8F-check-compatibility">Check compatibility</a></td>
    <td><a href="docs/setup">Setup</a></td>
    <td><a href="docs/configuration">Configure</a></td>
    <td><a href="docs/diy">DIY</a></td>
  </tr>
</table>


If your standing desk controller has an RJ11 / RJ12 port use DeskUp Pro to integrate your desk with your smart home automation system to control your standing desk from your phone, dashboards, automations or voice.

DeskUp Pro has full integration with Home Assistant but any smart home hub that can send a Rest Api request is also supported using its [Api](docs/configuration/rest-api.md).

All the existing functionality of the desk's controller is retained.  Connect the DeskUp Pro to Wi-Fi, plug it into your desk controller and control your desk from your smart home system.

<p align="center">
  <img src="images/DeskUpPro-Top.jpg" height="180px" />
  <img src="images/DeskUpPro-UnderDesk.jpg" height="180px" />
  <img src="images/DeskUpPro-Top-White4.jpg" height="180px" />
</p>
<p align="center">
  <a href="https://www.ebay.co.uk/itm/226942026649" target="_blank"><img src="images/PurchaseOnEbay-Long3.jpeg" height="90px" /></a>
</p>


## What is shown in Home Assistant
<p align="center">
  <img src="images/DeskUpPro-Controls-black.jpg" height="350px" />
  <img src="images/DeskUp-Pro-Cover-Slider-black.jpg" height="350px" />
  <img src="images/DeskUpPro-Sensors-black.jpg" height="350px" />
  <img src="images/DeskUpPro-Configuration-black.jpg" height="350px" />
</p>

32 entities are exposed in Home Assistant that let you control every function of the DeskUp pro.

## Other smart home systems can use the built in Web Interface and its Rest API
<p align="center">
  <img src="images/WebServer-screen1-black.jpg" height="350px" width="320px" />
  <img src="images/WebServer-screen2-black.jpg" height="250px" width="320px" />
</p>

Every function of the DeskUp pro can be controlled using its [Api](docs/configuration/rest-api.md).

## Automations you could create for your desk
- If you're sitting down for too long, then automatically raise the desk to standing height.
  - Or announce on a smart speaker that you have been sat down too long.
  - Or maybe flash a light.
- If you ignore it then 5 mins later have it nag you to stand up until you do!
- Use voice e.g. Hey Google/Alexa raise my desk!
- After lunchtime raise the desk so you start the afternoon standing up (maybe trigger this as you walk into the room if you have a motion sensor).
- Prefer to do meetings standing up, then if your calendar is exposed to Home Assistant you could raise the desk 1 minute before your meeting starts.
- At the end of the working day lower the desk when you turn off the office light or leave the room.
- Setup a dashboard on your smart home hub so you can have an unlimited number of preset height buttons e.g. maybe each family member prefers a different sit & stand desk height.
- Want to control your desk from something else then as long as it can either integrate with Home Assistant or call a Rest Api you can.
- The DeskUp Pro device even has an RGB Led on it so you can use it in automations.
- etc, there are many possibilities.


## ⚠️ Check Compatibility
There is **no guarantee** that the DeskUp Pro device will work with your desk as desk manufacturers can change their specifications at anytime even on the same model number.

- This is a product of reverse engineering, so until you try it on your desk there is no way to be 100% certain that it will or won't work.

- Any standing desk that has a free RJ11 / RJ12 port could be compatible.

- Before you proceed check the compatibility of your [desk here](docs/compatibility.md).

You should understand the risks before purchasing, it's your responsibility to determine if its fit for your purpose. 

_This is a product of reverse engineered code where each of the desks functions were extracted by the community, not us [and can be found here](/docs/diy/desk-hex-codes.md). 
If you need help to determine if your desk might be compatible the community sites in the [need help section](#need-help) are a great place to go for advice._


### Specs
- The firmware of the DeskUp Pro is based on ESPHome
- The device itself uses an ESP32-S3 chip that is powered by the desk's controller over the RJ12 Cable, so no USB cable is needed to power it.
- Has a USB-C port for setup.
- Wi-Fi protocol used is 2.4ghz.
- Initial setup of the device to connect it to Wi-Fi can be done using a USB C cable (not supplied), Bluetooth (if you use Home Assistant and have a Bluetooth proxy) or a Captive Portal (Wi-Fi hotspot).

### More Product Images and Dimensions
<p align="center">
  <img src="images/DeskUpPro-Front.jpg" height="250px" />
  <img src="images/DeskUpPro-Bottom.JPG" height="250px" />
  <img src="images/DeskUpPro-Rear.JPG" height="250px" />
</p>
<p align="center">
  <img src="images/DeskUpPro-WireFrame2.png" height="350px" />
</p>


### What's in the box if I bought one?
- DeskUp Pro device with attached RJ12 cable flashed with the latest firmware
- Housed in a 3D printed case
- Getting started guide

Plus in this repository you will find:
- Example Home Assistant [dashboard cards](docs/configuration/home-assistant-dashboard.md).
- Example Home Assistant [automations](docs/configuration/home-assistant-automations.md).
- For other smart home systems use our [api documentation](docs/configuration/rest-api.md).


### We test every device before we ship it
- After building a device we flash it with the latest firmware.
- We plug it into one of our desks and connect it to Home Assistant where we check the device reads the sensor values from the desk and the controls move the desk.
- We unplug and plug the device back in multiple times to check the cable and components are connected securely.
- Finally we reflash the firmware and package it up in bubble wrap for shipping.


## Prefer to build one yourself 
In this Github repository you can find everything to do just that:
- Instructions on how to build/wire up the ESP32.
- The full source code to control the desk wriiten using community reverse engineered desk logic (from multiple git repos) we pulled together what we thought were the best bits into this project.
- We decided to make this a yaml only version of the code to make it easier for non c++ programmers to understand and change.
- Then added a number of our own features to it.
- You will need to use ESPHome Builder in Home Assistant to follow our guide.

However if you would prefer to avoid:
- Buying the parts
- Soldering it all together
- 3d printing a case
- Downloading & flashing the firmware

And would simply like to get a device pre-built, in a box that you can plug in to your desk and be automating it in 10 minutes then you can purchase one from our eBay store.

<p align="center">
  <a href="https://www.ebay.co.uk/itm/226942026649" target="_blank"><img src="images/PurchaseOnEbay-Long3.jpeg" height="90px" /></a>
</p>


## Documentation
[Setup a purchased device](docs/setup/README.md)

[Build one yourself](docs/diy/README.md)

[Configure the device for your smart home hub](docs/configuration/README.md)


## Need Help
The community sites are a great place to ask for advice, especially if it's to do with desk compatibility:

<a href="https://community.home-assistant.io/t/maidesite-standing-desk-with-esphome/602293">Maidesite desk forum</a>

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790?u=mahko_mahko">Forum for other desks</a>

If it's not a compatibility question, and prehaps you have an idea for a new feature to add, or find out there are other desk hex codes and know what they are and do, then log an issue to this Git Repo and we will try to help, or even better submit a pull request with the change.


## Why did I start this project?
I was finding I sat down at my desk too much and this was causing Sciatica so I wanted to integrate the desk into my Smart Home System and have Alexa nag me to stand up more!

I ended up combining code from a few different sources written by the community and then kept adding more features. I then realised that RJ12 devices were only available to people who could build their own device and had Home Assistant. 

That's when I decided to:
- Fully document everything I had done into this Git repository.
- Make the device accessible not only to Home Assistant but to any Smart Home system that can call a Rest Api.
- Sell DeskUp Pro devices to anyone that just wants to plug it in and start automating, but in the spirit of open source if you want to build your own all the details to do that are in here too.

### License
This project is licensed for **personal, non-commercial use only**.  
Redistribution, resale, or commercial use is **not permitted**.  
See the [LICENSE](./LICENSE) file for details.

