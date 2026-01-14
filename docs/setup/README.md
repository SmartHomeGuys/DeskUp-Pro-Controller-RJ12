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
If the device won't connect to Wi-Fi then:
- Ensure the device is close to Wi-Fi to rule out a poor signal.
- Rebooting your Wi-Fi routers can sometimes help especially with Unifi systems.
- Ensure the Wi-Fi your connecting to is 2.4 Ghz

If if still doesn't work then you can modify the Wi-Fi configuration yourself on the device, see [this guide](troubleshooting/troubleshooting-wifi-by-taking-control.md).