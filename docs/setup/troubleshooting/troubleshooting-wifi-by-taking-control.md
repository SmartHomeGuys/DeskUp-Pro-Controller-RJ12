# Troubleshooting - Modify the Wi-Fi Configuraiton by Taking Control

You need the ESPHome Intigration installed in Home Assistant.

This will create a new blank device in ESPHome overwritting the current firmware.  But we will put it back and enable you to change any Wi-Fi setting on the device until you find settings that work for your wi-fi network.

1.1. Open ESPHome on Home Assistant.

1.2. Click Create a new device -> New Device Setup.

1.3. Give it a name and install by using a USB cable connected to your laptop.

1.4. This wipes the device with brand new blank configuration but if may error saying it couldn't connect to Wi-Fi.  This is ok.

1.5. Edit the file and save the encryption key and OTA password somewhere else.

1.6. Copy the contents of the "DeskUpPro-Troubleshooting-WiFi.yaml" file (found in the same folder as this document), over the top of yours in ESPHome.  

Replacing the encryption key and OTA password with the ones you just copied elsewhere.

1.7. Uncomment the correct line in the packages section for your chip either S3 or C6.

1.8. Change the name and friendly name in the substitutions to match what you called the device.

1.9. Save the file, click install.  Choose by USB plug again.

What this yaml has done is added 1 line to the wifi section which isn't in the default yaml:

output_power: 8.5dB

This has helped connect a device before to Wi-Fi which was having issues. But now you have got full control to tweak any of the Wi-Fi settings until you find ones that work for your network. 

