# Using the Rest API

Using the api is fairly simple as long as your using a Smart Home hub that sends local (on your house network) rest api calls.

Smart home hubs that should be able to send local Rest Api requests are:
- Homey Pro with flows or homey script
- Samsung Smartthings using web requester
- Apple Homebridge with http-webhooks
- Hubitat
- Probably others

Then you can make a call to the api endpoints using http e.g.

```
http://192.168.68.120/<api-endpoint>
```

## List of Api endpoints
Sensors
- [Get Desk Height](#get-desk-height)
- [Get Desk Height Percentage](#get-desk-height-percentage)
- [Get preset button M1, M2, M3, M4 height value from the desk](#get-preset-button-m1-m2-m3-m4-height-value-from-the-desk)
- [Get desk idle time in secconds](#get-desk-idle-time-in-secconds)
- [Get desk idle timestamp in days, hh:mm:ss](#get-desk-idle-timestamp-in-days-hhmmss)
- [Get desk Status](#get-desk-status)

Buttons
- [Move the desk to the specified height](#move-the-desk-to-the-specified-height)
- [Press preset button M1, M2, M3, M4 on the desk](#press-preset-button-m1-m2-m3-m4-on-the-desk)
- [Press Nudge Down button on the desk](#press-nudge-down-button-on-the-desk)
- [Press Nudge Up button on the desk](#press-nudge-up-button-on-the-desk)
- [Stop the desk moving](#stop-the-desk-moving)
- [Press Desk Memory Preset Buttons M1, M2, M3, M4](#press-desk-memory-preset-buttons-m1-m2-m3-m4)
- [Restart the ESP32 device](#restart-the-esp32-device)

Number Controls
- [Get Desk Height](#get-desk-height-1)
- [Get Desk Min Height (as specified in configuration field)](#get-desk-min-height-as-specified-in-configuration-field)
- [Set Desk Min Height (in configuration field)](#set-desk-min-height-in-configuration-field)
- [Get Desk Max Height (as specified in configuration field)](#get-desk-max-height-as-specified-in-configuration-field)
- [Set Desk Max Height (in configuration field)](#set-desk-max-height-in-configuration-field)
- [Get Desk Down Offset by value (in mm)](#get-desk-down-offset-by-value-in-mm)
- [Set Desk Down Offset by value (in mm)](#set-desk-down-offset-by-value-in-mm)
- [Get Desk Up Offset by value (in mm)](#get-desk-up-offset-by-value-in-mm)
- [Set Desk Up Offset by value (in mm)](#set-desk-up-offset-by-value-in-mm)

Cover Control
- [Get Cover details](#get-cover-details)
- [Set Cover Position](#set-cover-position)

Light Controls
- [Get ESP32 Led Details](#get-esp32-led-details)
- [Turn on the ESP32 Led and set the colour](#turn-on-the-esp32-led-and-set-the-colour)
- [Turn off the ESP32 Led](#turn-off-the-esp32-led)



## Sensor Controls

### Get Desk Height 
```
GET http://<ipnumberhere>/sensor/desk_height
```
Response
```
{
  "id": "sensor-desk_height",
  "value": 102,
  "state": "102.0 cm"
}
```


### Get Desk Height Percentage
```
GET http://<ipnumberhere>/sensor/desk_height_percent
```
Response
```
{
  "id": "sensor-desk_height_percent",
  "value": 62.5,
  "state": "62.5 %"
}
```

### Get preset button M1, M2, M3, M4 height value from the desk
```
GET http://<ipnumberhere>/sensor/desk_m1_height

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
{
  "id": "sensor-desk_m1_height",
  "value": 70,
  "state": "70.0 cm"
}
```


### Get desk idle time in secconds
```
GET http://<ipnumberhere>/sensor/idle_time
```
Response
```
{
  "id": "sensor-idle_time",
  "value": 7095,
  "state": "7095.0 s"
}
```

### Get desk idle timestamp in days, hh:mm:ss
```
GET http://<ipnumberhere>/sensor/idle_timestamp
```
Response
```
{
  "id": "text_sensor-idle_timestamp",
  "value": "02:07:50",
  "state": "02:07:50"
}
```

### Get desk Status
```
GET http://<ipnumberhere>/text_sensor/desk_status
```
Response
```
{
  "id": "text_sensor-desk_status",
  "value": "Idle",
  "state": "Idle"
}
```

---

## Button Controls

### Move the desk to the specified height
```
POST http://<ipnumberhere>/number/desk_height/set?value=80
```
Response
```
No data returned just a 200 OK status
```


### Press preset button M1, M2, M3, M4 on the desk
```
POST http://<ipnumberhere>/button/desk_m1/press

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
No data returned just a 200 OK status
```

### Press Nudge Down button on the desk
```
POST http://<ipnumberhere>/button/desk_nudge_down/press
```
Response
```
No data returned just a 200 OK status
```

### Press Nudge Up button on the desk
```
POST http://<ipnumberhere>/button/desk_nudge_up/press
```
Response
```
No data returned just a 200 OK status
```

### Stop the desk moving
```
POST http://<ipnumberhere>/button/desk_stop/press
```
Response
```
No data returned just a 200 OK status
```


### Press Desk Memory Preset Buttons M1, M2, M3, M4
```
POST http://<ipnumberhere>/button/set_desk_m1/press

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
No data returned just a 200 OK status
```

### Restart the ESP32 device
```
POST http://<ipnumberhere>/button/esp32_restart/press
```
Response
```
No data returned just a 200 OK status
```

---

## Number Controls

### Get Desk Height
```
GET http://<ipnumberhere>/number/desk_height
```
Response
```
{
  "id": "number-desk_height",
  "value": "102.0",
  "state": "102.0 cm"
}
```

### Get Desk Min Height (as specified in configuration field)
```
GET http://<ipnumberhere>/number/min_height
```
Response
```
{
  "id": "number-min_height",
  "value": "62.00",
  "state": "62.00 cm"
}
```

### Set Desk Min Height (in configuration field)
```
POST http://<ipnumberhere>/number/min_height/set?value=74
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Max Height (as specified in configuration field)
```
GET http://<ipnumberhere>/number/max_height
```
Response
```
{
  "id": "number-max_height",
  "value": "126.00",
  "state": "126.00 cm"
}
```

### Set Desk Max Height (in configuration field)
```
POST http://<ipnumberhere>/number/max_height/set?value=126
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Down Offset by value (in mm)
```
GET http://<ipnumberhere>/number/offset_down_by
```
Response
```
{
  "id": "number-offset_down_by",
  "value": "0",
  "state": "0 mm"
}
```

### Set Desk Down Offset by value (in mm)
```
POST http://<ipnumberhere>/number/offset_down_by/set?value=0
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Up Offset by value (in mm)
```
GET http://<ipnumberhere>/number/offset_up_by
```
Response
```
{
  "id": "number-offset_up_by",
  "value": "1",
  "state": "1 mm"
}
```

### Set Desk Up Offset by value (in mm)
```
POST http://<ipnumberhere>/number/offset_up_by/set?value=1
```
Response
```
No data returned just a 200 OK status
```

---

## Cover Control

### Get Cover details
```
GET http://<ipnumberhere>/cover/height_slider
```
Response
```
{
  "id": "cover-height_slider",
  "value": 0.18,
  "state": "OPEN",
  "current_operation": "IDLE",
  "position": 0.18
}
```

### Set Cover Position
```
POST http://<ipnumberhere>/cover/height_slider/set?position=0.1

Allowed values 0.0 to 1.0
```
Response
```
No data returned just a 200 OK status
```

---

## Light Control

### Get ESP32 Led Details
```
GET http://<ipnumberhere>/light/esp32_led
```
Response
```
{
  "id": "light-esp32_led",
  "state": "OFF",
  "color_mode": "rgb",
  "brightness": 255,
  "color": {
    "r": 255,
    "g": 255,
    "b": 255
  }
}
```

### Turn on the ESP32 Led and set the colour
```
POST http://<ipnumberhere>/light/esp32_led/turn_on?r=25&g=25&b=125
```
For more info view [this page](https://esphome.io/web-api/#light).

Response
```
No data returned just a 200 OK status
```

### Turn off the ESP32 Led
```
POST http://<ipnumberhere>/light/esp32_led/turn_off
```
Response
```
No data returned just a 200 OK status
```

