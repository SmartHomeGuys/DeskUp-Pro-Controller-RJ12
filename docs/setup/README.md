# Setup your DeskUp Pro Controller
When you first power on the DeskUp Pro it's Led will be solid Red, this just means it is not connected to your Wi-Fi, once it is the Led will be off.

## Step 1: Connect to Wi-Fi
To do this choose from one of these options:

[Setup using Bluetooth (for Home Assistant users with a Bluetooth proxy)](setup-using-bluetooth.md)

[Setup using USB](setup-using-usb.md)

[Setup using Captive Portal (Wi-Fi Hotspot)](setup-using-captive-portal.md)


## Step 2: Add to Home Assistant (optional)
If you missed it in the previous guides, you can add the device so it appears in Home Assistant by following [this guide](add-to-home-assistant.md).  


## Step 3: Adopt the device in ESPHome in Home Assistant (Optional)
[Adopting in ESPHome Builder](adopting-in-home-assistant.md)


## Step 4: Configure the device
The last thing you need to do is specify your desk's physical minimum and maximum height limits.

[Configure the DeskUp Pro](../configuration/README.md)


## Troubleshooting

### 1. If the device won't connect to Wi-Fi
- Ensure the device is close to Wi-Fi to rule out a poor signal.
- Rebooting your Wi-Fi routers can sometimes help especially with Unifi systems.
- Ensure the Wi-Fi your connecting to is 2.4 Ghz

If if still doesn't work then you can modify the Wi-Fi configuration yourself on the device, see [this guide](troubleshooting/troubleshooting-wifi-by-taking-control.md).

### 2. Fully Jarvis Desk Memory Height Sensors are showing the wrong value

This is a known issue where these desks do not use cm for these sensors but motor steps.  But you can calibrate the Jarvis Desk by following [this guide](troubleshooting/calibrate-fully-jarvis-desk.md)

### 3. Desk moves but stops after a very short distance
Some desks respond to a command in Home Assistant but stop after moving a very short distance. 

This is not a bug in the DeskUp Pro but a configuration change that is needed on your desks controller to switch it to one-touch mode. To do this you need to have a controller with a display and not an up/down rocker. See these links for more details:

<a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/compatibility.md#boho-office-basic-line">Boho Office</a>
<br />
<a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/compatibility.md#hibitaro-komfort-m708">Hibitaro Komfort</a>
