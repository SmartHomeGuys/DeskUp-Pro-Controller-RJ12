
### Notes on how to flash the latest version to a new device for a customer
- Make sure in Home Assistant the 'DeskUp Pro Controller' does not exist as a device or under ESPHome Builder.
- In a Chrome browser go to: https://smarthomeguys.github.io/DeskUp-Pro-Controller-RJ12/Setup.html
- Choose the 'Install' option, connect it to Wi-Fi
- Test the device on a desk.
- After testing, reflash the device again using the 'Install' option but this time 'Skip' adding it to Wi-Fi.
- Unplug and package up for shipping.
- Remove the 'DeskUp Pro Controller' device from Home Assistant so it does not exist as a device under integrations or under ESPHome Builder.



### Notes on how to release a new version
- Make code changes locally (avoiding using Git) on a development version of a DeskUp Pro device.
- No need to worry about version numbers at this point.

- Once development is complete update the base.yaml with a new version number.
- Install again onto the development device and check the new version number is there.
- Copy the changed files from Home Assistant's local folder into the Git folder (locally on a laptop).
- Update CHANGELOG.md
- Commit and push to GitHub.
- Wait 1 minute for any local GitHub cached files to expire from cache.


- Run powershell command BuildDeskUpProRJ12Release.ps1 found in c:\[userfolder]\esphome
- This will build a firmware version for all 3 variants (S3, C6, C6 with encryption).

  - In VSCode the 6 bin files and a firmware.md5 file for each should already be listed under commits. 
  - Update the version number in all 3 manifest json files
  - Wait until the the code changes are committed to Git for 24 hours due to caching in user's Home Assistant's of files downloaded from Git.
  - Now check these updated files into Git

- Draft then publish a new Release version in Github using the changelog notes as its content, making sure to add a tag and setting this as the latest version.
https://github.com/SmartHomeGuys/DeskUp-Pro-Controller-RJ12/releases


![](images/HomeAssistant-Showing-Update-Available.png)

- Users Home Assistant clients should now start saying an updated version is available to install.
