# Configure the DeskUp Pro in Home Assistant

Before you use the DeskUp Pro make sure to specify your desks min / max physical limits and familiarise yourself with the screen layout here:

[Screen Layout and what it all does](home-assistant-screen-layout.md)

[Firmware Updates](firmware-updates.md)

[Example Dashboard](home-assistant-dashboard.md)

[Example Automations](home-assistant-automations.md)


# Configure and use the DeskUp Pro with another Smart Home Hub

Before you use the DeskUp Pro make sure to specify your desks min / max physical limits using the built in Web server.  
[Read this page on why this is important](docs/configuration/home-assistant-screen-layout.md#max-height-defaults-to-cm).
You can also control every aspect of the DeskUp Pro with this interface.

To open the DeskUp Pro web interface enter this in a web browser: 
```
http://device-ip-number
```

<p align="center">
  <img src="images/WebServer-screen1c.jpg" height="320px" width=350px" />
  <img src="images/WebServer-screen2c.jpg" height="380px" width=350px" />
</p>

Once the device is configured with Min Height and Max Height values that match your needs use the rest api from your smart home hub to control your desk.

[Rest API](rest-api.md)

