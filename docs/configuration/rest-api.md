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

NOTE: As of ESPHome 2026.8.0 the api format is changing from using entity id to entity name, for example: from /sensor/desk_height to /sensor/Desk Height. Both formats will work until then. Also note the new format is case sensitive.  The old and new formats are listed below but it is advised to switch to the new format before 2026.8.0.
See https://esphome.io/web-api/index.html


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
- [Reset Idle Timer](#reset-the-idle-timer)
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
GET http://<ipnumberhere>/sensor/Desk Height
```
Response
```
{
  "name_id": "sensor/Desk Height",
  "id": "sensor-desk_height",
  "value": 102,
  "state": "102.0 cm"
}
```


### Get Desk Height Percentage
```
GET http://<ipnumberhere>/sensor/Desk Height Percent
```
Response
```
{
  "name_id": "sensor/Desk Height Percent",
  "id": "sensor-desk_height_percent",
  "value": 62.5,
  "state": "62.5 %"
}
```

### Get preset button M1, M2, M3, M4 height value from the desk
```
GET http://<ipnumberhere>/sensor/Desk M1 Height

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
{
  "name_id": "sensor/Desk M1 Height",
  "id": "sensor-desk_m1_height",
  "value": 70,
  "state": "70.0 cm"
}
```


### Get desk idle time in secconds
```
GET http://<ipnumberhere>/sensor/Idle Time
```
Response
```
{
  "name_id": "sensor/Idle Time",
  "id": "sensor-idle_time",
  "value": 7095,
  "state": "7095.0 s"
}
```

### Get desk idle timestamp in days, hh:mm:ss
```
GET http://<ipnumberhere>/sensor/Idle Timestamp
```
Response
```
{
  "name_id": "text_sensor/Idle Timestamp",
  "id": "text_sensor-idle_timestamp",
  "value": "02:07:50",
  "state": "02:07:50"
}
```

### Get desk Status
```
GET http://<ipnumberhere>/text_sensor/Desk Status
```
Response
```
{
  "name_id": "text_sensor/Desk Status",
  "id": "text_sensor-desk_status",
  "value": "Idle",
  "state": "Idle"
}
```

---

## Button Controls

### Move the desk to the specified height
```
POST http://<ipnumberhere>/number/Desk Height/set?value=80
```
Response
```
No data returned just a 200 OK status
```


### Press preset button M1, M2, M3, M4 on the desk
```
POST http://<ipnumberhere>/button/Desk M1/press

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
No data returned just a 200 OK status
```

### Press Nudge Down button on the desk
```
POST http://<ipnumberhere>/button/Desk Nudge Down/press
```
Response
```
No data returned just a 200 OK status
```

### Press Nudge Up button on the desk
```
POST http://<ipnumberhere>/button/Desk Nudge Up/press
```
Response
```
No data returned just a 200 OK status
```

### Stop the desk moving
```
POST http://<ipnumberhere>/button/Desk Stop/press
```
Response
```
No data returned just a 200 OK status
```


### Press Desk Memory Preset Buttons M1, M2, M3, M4
```
POST http://<ipnumberhere>/button/Set Desk M1/press

Changing m1 to m2, m3 or m4 for the other memory presets.
```
Response
```
No data returned just a 200 OK status
```

### Reset the Idle Timer
```
POST http://<ipnumberhere>/button/Reset Idle Timer/press
```
Response
```
No data returned just a 200 OK status
```

### Restart the ESP32 device
```
POST http://<ipnumberhere>/button/ESP32 Restart/press
```
Response
```
No data returned just a 200 OK status
```

---

## Number Controls

### Get Desk Height
```
GET http://<ipnumberhere>/number/Desk Height
```
Response
```
{
  "name_id": "number/Desk Height",
  "id": "number-desk_height",
  "value": "102.0",
  "state": "102.0 cm"
}
```

### Get Desk Min Height (as specified in configuration field)
```
GET http://<ipnumberhere>/number/Min Height
```
Response
```
{
  "name_id": "number/Min Height",
  "id": "number-min_height",
  "value": "62.00",
  "state": "62.00 cm"
}
```

### Set Desk Min Height (in configuration field)
```
POST http://<ipnumberhere>/number/Min Height/set?value=74
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Max Height (as specified in configuration field)
```
GET http://<ipnumberhere>/number/Max Height
```
Response
```
{
  "name_id": "number/Max Height",
  "id": "number-max_height",
  "value": "126.00",
  "state": "126.00 cm"
}
```

### Set Desk Max Height (in configuration field)
```
POST http://<ipnumberhere>/number/Max Height/set?value=126
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Down Offset by value (in mm)
```
GET http://<ipnumberhere>/number/Offset Down by
```
Response
```
{
  "name_id": "number/Offset Down by",
  "id": "number-offset_down_by",
  "value": "0",
  "state": "0 mm"
}
```

### Set Desk Down Offset by value (in mm)
```
POST http://<ipnumberhere>/number/Offset Down by/set?value=0
```
Response
```
No data returned just a 200 OK status
```

### Get Desk Up Offset by value (in mm)
```
GET http://<ipnumberhere>/number/Offset Up by
```
Response
```
{
  "name_id": "number/Offset Up by",
  "id": "number-offset_up_by",
  "value": "1",
  "state": "1 mm"
}
```

### Set Desk Up Offset by value (in mm)
```
POST http://<ipnumberhere>/number/Offset Up by/set?value=1
```
Response
```
No data returned just a 200 OK status
```

---

## Cover Control

### Get Cover details
```
GET http://<ipnumberhere>/cover/Height Slider
```
Response
```
{
  "name_id": "cover/Height Slider",
  "id": "cover-height_slider",
  "value": 0.18,
  "state": "OPEN",
  "current_operation": "IDLE",
  "position": 0.18
}
```

### Set Cover Position
```
POST http://<ipnumberhere>/cover/Height Slider/set?position=0.1

Allowed values 0.0 to 1.0
```
Response
```
No data returned just a 200 OK status
```

---

## Light Control (S3 Chips only support the LED)

### Get ESP32 Led Details
```
GET http://<ipnumberhere>/light/ESP32 LED
```
Response
```
{
  "name_id": "light/ESP32 LED",
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
POST http://<ipnumberhere>/light/ESP32 LED/turn_on?r=25&g=25&b=125
```
For more info view [this page](https://esphome.io/web-api/#light).

Response
```
No data returned just a 200 OK status
```

### Turn off the ESP32 Led
```
POST http://<ipnumberhere>/light/ESP32 LED/turn_off
```
Response
```
No data returned just a 200 OK status
```

