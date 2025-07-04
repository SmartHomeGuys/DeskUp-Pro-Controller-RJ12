# Setup using Bluetooth 
The device already comes with the firmware flashed, but needs to be connected to Wi-Fi.

_Note: When you first power on the DeskUp Pro it's Led will be solid Red, this just means it is not connected to your Wi-Fi, once it is the Led will be off._

If your Home Assistant is already setup to use a Bluetooth Proxy then just attach the DeskUp Pro to your desk’s RJ12 port.  This will provide it power and it will be automatically detected in Home Assistant (usually within 30 seconds).

If it’s not detected, try restarting Home Assistant.

![](images/Setup-Bluetooth-Device-Discovered2.png)

Click ‘Add’

![](images/Setup-Bluetooth-Do-You-Want-To-Setup-Question2.png)

Click 'submit' and enter your Wi-Fi details when asked (this can take 20 seconds).

![](images/Setup-Bluetooth-WiFi.png)


After entering Wi-Fi details, click 'Submit' and the following box will appear.

![](images/Setup-Bluetooth-After-WiFi-Setup2.png)

You will notice behind the popup a new device was detected.

You can either:
- Close this popup
- Or follow that link which will guide you through adding the device to Home Assistant.

If you click close without following that link you will see a new device is detected and you will need to add it to Home Assistant following [this guide](add-to-home-assistant.md).  


