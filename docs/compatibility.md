# ⚠️ Check if your desk is compatible
There is **no guarantee** that the DeskUp Pro device will work with your desk as desk manufacturers can change their specifications at anytime even on the same model number.

This is a product of reverse engineering, so until you try it on your desk there is no way to be 100% certain that it will or won't work.

You should understand these risks before purchasing any components to build this yourself or if you purchase a prebuilt one from the shop. It's your responsibility to determine if its fit for your purpose. 

Your desk must also have a free RJ12 port on the controller (6 pins):
- Sometimes it's an RJ11 port which is the same size it just has 4 pins. Which is fine because even with the 6 pin RJ12 we only use 4 wires anyway. The 1st and last wires are not used.
- Sometimes the controller will indicate an RJ11/12 with an 'F' next to it.

![](images/MaidsiteDeskControlBox-Back.jpg)

Below is a list of desks we know should be compatible since they send the same desk hex codes. The DeskUp Pro code was written for Maidesite controllers and has been used by people in that community.  The other desks have been used on a similar open source project which uses exactly the same desk control code as ours, full details are below. 

This is not a complete list as any desk with an RJ11 / RJ12 port could work.

## Summary of Compatible Desks or Controllers
- Maidesite TH2 Plus Art
- Maidesite T2 Pro
- Maidesite T2 Pro Plus
- Maidesite SC2 Pro
- Maidesite EL2 Pro Art
- Maidesite EL2 Plus Art
- Maidesite S2B Pro
- Desktopia Pro X
- IKEA Uppspel
- Jiecang JCB35M11C, Jiecang JCHT35K72C (so probably any Jiecang might work)
- Omnidesk
- Desktronic Home One
 
_If your desk works but is not in the list please let us know by logging an issue for us to update this page so we can help other people._

## Incompatible Desks or Controllers
- IKEA Mittzon
- Vonhaus Desk with controller model: M200-23-CH


## Working Desks in more Detail

### Maidesite desks using the Premium controller 
These desks should be compatible as they come with this controller. The TH2 Plus Art desk was the desk used when creating this project which was originally on the <a href="https://www.maidesite.co.uk/pages/buyer-guide">Maidesite forum</a>. Members of this community have used some of these desks.

- TH2 Plus Art
- T2 Pro
- T2 Pro Plus
- SC2 Pro
- EL2 Pro Art
- EL2 Plus Art
- S2B Pro

![](images/MaidesiteDeskControlBox-Premium.png)
![](images/MaidsiteDeskControlBox-Back.jpg)


### Maidesite desks using the Standard controller
These desks should be compatible as they come with this controller:

- T1 Pro
- SN1

A member of the community confirmed the SN1 works <a href="https://community.home-assistant.io/t/maidesite-standing-desk-with-esphome/602293/3?">in this post</a>.  Therefore the other Maidesite desks using the Standard controller should also be compatible.

![](images/MaidesiteDeskControlBox-standard.png)


## Other manufacturer desks or controllers that should be compatible
Members of the community have tested these desks or controllers on other similar projects to this one, which send the same commands so there is a good chance these are compatible.


### Desktopia Pro X
Confirmed working once the correct pins were specified in config. 

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/430">Mentioned here in the last post in this chain</a>.

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/420">Start of the chain</a>

They used the Rocka84 repo which confirms the cable pins do match the ones used in this project. And desk hex codes also <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/diy/desk-hex-codes.md">match</a>.

That post also suggests the desk can go to sleep so you may need to enable the 'Send wake up command'.


### Ikea Uppspel
Confirmed working using RJ11 cable (4 pins which is fine as RJ12 has 6 but only uses 4)

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/443">Read article here</a>

They used the Rocka84 repo which confirms the cable pins do match the ones used in this project. And desk hex codes also <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/diy/desk-hex-codes.md">match</a>.


### Jiecang JCB35M11C
  
Confirmed as device used at top of 
<a href="https://github.com/Rocka84/esphome_components/blob/a083c17882361c58071b85d45587c410582cda75/components/jiecang_desk_controller">this post</a>

<a href="https://www.jiecang.com/product/jcb35m11c.html">Image of device</a>

This is the controller used by Rocka84 on his repo so this confirms the cable pins do match the ones used in this project. And desk hex codes also <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/diy/desk-hex-codes.md">match</a>.


### Jiecang JCHT35K9-003-v4 used on a Desky Duel Sit Stand Frame

Desk used <a href="https://desky.com.au/products/dual-sit-stand-desk-frame">is this one</a> and confirmed working on the Rocka code <a href="https://community.home-assistant.io/t/maidesite-standing-desk-with-esphome/602293/17">in this post</a>

They used the Rocka84 repo which confirms the cable pins do match the ones used in this project. And desk hex codes also <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/diy/desk-hex-codes.md">match</a>.


### Jiecang JCHT35K72C
Confirmed partially working in <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/issues/2">issue 2 here</a>

Preset buttons & sensors on this controller are confirmed as working, but using the height control slider to set the height to a specific value doesn't work. Its likely this controller doesn't support this capability. 

But most of the automations you can do would use the buttons and sensors. However since the cover control also uses the slider's set height capability and Google Assistant or Alexa both use the cover control (if you expose it to these) you wont be able to control the desk from these Assistant's.


**It's very likely that other Jiecang controllers are supported too which are used on Fully Jarvis and Desky desks.**


## Omnidesk
Confirmed working <a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/449">in this post</a>

They used the Rocka84 repo which confirms the cable pins do match the ones used in this project. And desk hex codes also <a href="https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/blob/main/docs/diy/desk-hex-codes.md">match</a>.

But you may need to toggle on the 'Send wake up command' as the desk controller may go to sleep, this will wake the desk controller up then send the button command you asked for.


## Desktronic Home One

Confirmed working by GitHub user <a href="https://github.com/nurtext">nurtext</a>.

Uses a whitelabeled Jiecang JCB36NE2 control box.

<a href="https://www.jiecang.com/product/jcb36ne2.html">Image of device</a>

But you may need to toggle on the 'Send wake up command' as the desk controller may go to sleep, this will wake the desk controller up then send the button command you asked for.

**It's very likely that the Desktronic Home Pro is also using a Jiecang controller and therefore may work.**


## Links to other community info used when compiling this list
<a href="https://www.maidesite.co.uk/pages/buyer-guide">https://www.maidesite.co.uk/pages/buyer-guide</a>

<a href="https://github.com/phord/Jarvis#physical-interface-rj-12">https://github.com/phord/Jarvis#physical-interface-rj-12</a>

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790?u=mahko_mahko">https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790?u=mahko_mahko</a>

A comparison of the different community projects and reverse engineered desk hex codes [can be found here](diy/desk-hex-codes.md).
