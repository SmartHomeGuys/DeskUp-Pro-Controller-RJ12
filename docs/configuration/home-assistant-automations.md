# Example Home Assistant Automations

## Automations
1. [Announce on Alexa if sat down for 30 mins and nag me at 35](#Announce-on-Alexa-if-sat-down-for-30-mins-and-nag-me-at-35)
2. todo
3. [Hey Google Raise the Desk](#Hey-Google-Raise-the-Desk)


## 1. Announce on Alexa if sat down for 30 mins and nag me at 35
Makes an announcement on Alexa if:
- Someone is in the room (using a presence sensor)
- And if the desk has been idle at a sitting height for 30 mins.

```
alias: Notify if Sat down for too Long at Office Desk
description: ""
triggers:
  - alias: Office desk hasnt moved for 30 mins
    trigger: numeric_state
    entity_id:
      - sensor.deskup_pro_controller_idle_time
    above: 0
    id: Sat down 30
    value_template: "{{ state.state | float == 1800 }}"
  - alias: Office desk hasnt moved for 35 mins
    trigger: numeric_state
    entity_id:
      - sensor.deskup_pro_controller_idle_time
    above: 0
    id: Sat down 35
    enabled: true
    value_template: "{{ state.state | float == 2100 }}"
conditions:
  - alias: Only warn if desk height is at sitting height, so < 80 cm
    condition: numeric_state
    entity_id: sensor.deskup_pro_controller_desk_height
    below: 80
    enabled: true
  - condition: state
    entity_id: binary_sensor.office_presence_group
    state: "on"
actions:
  - choose:
      - conditions:
          - condition: trigger
            id:
              - Sat down 30
        sequence:
          - alias: Send Notification to Office Alexa
            action: notify.alexa_media_office_echo
            metadata: {}
            data:
              data:
                type: announce
                method: speak
              message: You have been sat down too long
            enabled: true
      - conditions:
          - condition: trigger
            id:
              - Sat down 35
        sequence:
          - alias: Send Notification to Office Alexa
            action: notify.alexa_media_office_echo
            metadata: {}
            data:
              data:
                type: announce
                method: speak
              message: You are still sat down! Time to stand up
            enabled: true
mode: single
```


## 3. Hey Google Raise the Desk
The DeskUp Pro has a Cover entity. Exposing this entity to Google Home allows it to be controllable as a device in Google Home.

One option is to use the Home Assistant Matter Hub addon to expose the device to Google Home.

<img src="images/Automation-GoogleHome-Cover.jpg" height="500px" />

Unfortunately the Google Home App does not allow you to choose the cover as a device to control in automations, but the preview web editor does.
http://home.google.com

![](images/Automation-GoogleHome-WebEditor.jpg)

```
metadata:
  name: Raise Office Desk
  description: Scripted automation

automations:
  starters:
    - type: assistant.event.OkGoogle
      eventData: query
      is: raise the desk

  actions:
    - type: device.command.OpenClose # Set the open-close state of the device
      # Indicates the percentage that a device is opened, where 0 is closed and 100 is fully open. [Available parameter options: openPercent, openDirection]
      openPercent: 100
```
