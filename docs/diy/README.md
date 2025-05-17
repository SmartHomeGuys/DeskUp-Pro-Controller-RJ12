# Everything you need to know to build a DeskUp Pro device yourself

To automate your desk, what we are going to make is the cable below with an RJ12 port at one end and wire it up to an ESP32 at the other.  But before you buy anything check the likely compatibility of your [desk here](/docs/compatibility.md).

## Materials needed
- An ESP32, I used an ESP-S3 Zero/Mini:

- An RJ12 to RJ12 Cable (6P6C)

- Wire Stripper, Preciva Automatic Cable Stripper and Cutter Tool

[Amazon.co.uk](https://amzn.to/3FbW10A) or [Amazon.com](https://amzn.to/4iwLz20)

- Soildering Iron


Cut the RJ12 cable to the desired length to fit under your standing desk, then use the wire stripper tool to strip the following wires and optionally attach the connectors.


## RJ12 to ESP32 Pin Mapping

| RJ12 Cable | Cable Colour | ESP32 Pin Used |
| PIN 1 | White | Unused |
| PIN 2 | Brown | GND (labelled GND in image) |
| PIN 3 | Red   | GPIO4 (labelled 4 in image) |
| PIN 4 | Green | 5V (labelled 5V in image) |
| PIN 5 | Yellow| GPIO1 (labelled 1 in image) |
| PIN 6 | Blue  | Unused |