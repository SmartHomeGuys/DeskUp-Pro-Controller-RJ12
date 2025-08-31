# ⚠️ Check if your desk is compatible
There is **no guarantee** that the DeskUp Pro device will work with your desk as desk manufacturers can change their specifications at anytime even on the same model number.

This is a product of reverse engineering, so until you try it on your desk there is no way to be 100% certain that it will or won't work.

You should understand these risks before purchasing any components to build this yourself or if you purchase a prebuilt one from the shop. It's your responsibility to determine if its fit for your purpose. 

Your desk must also have a free RJ12 port on the controller (6 pins):
- Sometimes it's an RJ11 port which is the same size it just has 4 pins. Which is fine because even with the 6 pin RJ12 we only use 4 wires anyway. The 1st and last wires are not used.
- Sometimes the controller will indicate an RJ11/12 with an 'F' next to it.

![](images/MaidsiteDeskControlBox-Back.jpg)

Below is a list of desks we know should be compatible. This is not a complete list as any desk with an RJ11 / RJ12 port could work.

## Summary of Compatible Desks or Controllers
- Maidesite TH2 Plus Art
- Maidesite T2 Pro
- Maidesite T2 Pro Plus
- Maidesite SC2 Pro
- Maidesite EL2 Pro Art
- Maidesite EL2 Plus Art
- Maidesite S2B Pro
- Desktopia Pro X
- IKEA MITTZON
- IKEA Uppspel
- Jiecang JCB35M11C (so probably any Jiecang might work)
- Omnidesk
 
_If your desk works but is not in the list please let us know by logging an issue for us to update this page so we can help other people._

## Desks in more Detail

### Maidesite desks using the Premium controller 
These desks should be compatible as they come with this controller and members of the community have used some of these.

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
This has a very similar design to the Premium one above but as of now no one in the community has tested it. 

It has the same 4 presets and nudge up/down as the Premium controller above does, it just has a slightly different screen layout. It does have an RJ12 port. There is a good chance these might be compatible.

- T1 Pro
- SN1

![](images/MaidesiteDeskControlBox-standard.png)


## Other manufacturer desks or controllers that should be compatible
Members of the community have tested these desks or controllers on other similar projects to this one, which send the same commands so there is a good chance these are compatible.


### Desktopia Pro X
Confirmed working once the correct pins were specified in config (<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/420">mentioned here if you read the entire chain</a>)


### IKEA MITTZON

Confirmed working in <a href="https://github.com/phord/Jarvis/issues/33">in post 3</a>


### Ikea Uppspel
Confirmed working using RJ11 cable (4 pins which is fine as RJ12 has 6 but only uses 4)

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/443">Read article here</a>


### Jiecang JCB35M11C
  
Confirmed as device used at top of 
<a href="https://github.com/Rocka84/esphome_components/blob/a083c17882361c58071b85d45587c410582cda75/components/jiecang_desk_controller">this post</a>

<a href="https://www.jiecang.com/product/jcb35m11c.html">Image of device</a>

<br />

**It's very likely that other Jiecang controllers are supported too which are used on Fully Jarvis and Desky desks.**


## Omnidesk
Confirmed working <a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790/449">in this post</a>

But you may need to toggle on the 'Send wake up command' as the desk controller may go to sleep, this will wake the desk controller up then send the button command you asked for.


## Links to other community info used when compiling this list
<a href="https://www.maidesite.co.uk/pages/buyer-guide">https://www.maidesite.co.uk/pages/buyer-guide</a>

<a href="https://github.com/phord/Jarvis#physical-interface-rj-12">https://github.com/phord/Jarvis#physical-interface-rj-12</a>

<a href="https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790?u=mahko_mahko">https://community.home-assistant.io/t/desky-standing-desk-esphome-works-with-desky-uplift-jiecang-assmann-others/383790?u=mahko_mahko</a>

A comparison of the different community projects and reverse engineered desk hex codes [can be found here](/docs/diy/desk-hex-codes.md).

