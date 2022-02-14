![wled_logo_akemi](https://user-images.githubusercontent.com/4923679/149402904-e135a6fa-ae00-4d32-b50a-784e71b2ab5c.jpg)

# WLED

## Download ready-to-use firmware

### YAWL firmware
You may download a ready-to-use firmware [yawl_controller.bin ](firmware/WLED/bin/yawl_controller.bin).

### Standard firmware

You can get further information on the various WLED firmware versions https://github.com/Aircoookie/WLED/wiki/Install-WLED-binary#what-binary-should-i-use

## Build custom firmware

Also you may compile the firmware by self using Visual Studio Code and Platformio. 
 - Download and install Git client: https://git-scm.com/downloads.
 - Download and install Visual Studio Code: https://code.visualstudio.com/download.
 - Install PlatformIO extension in Visual Studio Code: https://docs.platformio.org/en/latest//integration/ide/vscode.html#installation
 - Download WLED Github Master ZIP: https://github.com/Aircoookie/WLED/archive/refs/heads/master.zip
 - Unpack in directory somewhere
 - "Open folder" in Visual Studio Code
 - Build project with <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> hotkey
 - Build standard WLED.
 - If the file is created successfully then you can proceed to the next step, if not please read [this article](https://kno.wled.ge/basics/compiling-wled/) for more information.  
 - Copy [platformio_override.ini](platformio_override.ini) to WLED folder 
 - Build custom WLED firmware.
 - Please find built firmwae in WLED/build_output/firmware folder

![image](https://user-images.githubusercontent.com/4923679/150132210-8e55dea6-7241-4128-952f-d4d0f9c8a675.png)

If you still have questions for more information please read a step-by-step guide at [this page](https://kno.wled.ge/basics/compiling-wled/) of the WLED Wiki    

## Build the firmware from command line

 - Edit file **env.cmd** from yawl-controller/firmware/ESPHome/ directory. 
   - Set `PYTHON_PATH` to Python installed on your system.
   - Set `PLATFORMIO_VENV` to path to virtual environment where Platformio will be installed.
   - Set `PLATFORMIO_REPO` to url for Platformio repository. Default: https://github.com/platformio/platformio-core
   - Set `PLATFORMIO_BRANCH` to branch name or tag in Platformio repository. Default: master
   - Set `WLED_REPO` to url for WLED repository. Default: https://github.com/Aircoookie/WLED
   - Set `WLED_BRANCH` to branch name or tag in WLED repository. Default: master
 - Run **install_platformio.cmd**. The latest version of Platformio will be installed.
 - Run **compile.cmd**. The firmware will be compiled and copied to yawl-controller/firmware/WLED/ directory. File **yawl_controller_WLED_`{WLED_VERSION}`.bin** will be created, where `{WLED_VERSION}` - version of WLED.  

## Connect controller to computer

| YAWL Controller |	USB to Serial Adapter|
|---|---|
| 3.3v	| 3.3v |
| Ground	| Ground |
| IO0	| Ground |
| TX	| RX |
| RX	| TX |

![image](https://user-images.githubusercontent.com/4923679/151598448-9379adaf-c874-475b-8140-79478fdc33ec.png)

## Flash firmware
Download flasher https://github.com/esphome/esphome-flasher/releases
Open the flasher tool.
 - Serial port: select COM port where the controller is connected (there is probably only one option).
 - Firmware: Browse to the location where you downloaded your compiled firmware and select your firmware.

![image](https://user-images.githubusercontent.com/4923679/150178214-c61dcdcf-88b6-4364-8bb0-61961e2b77ff.png)

- Click Flash ESP and wait.

The controller will be flashed now, you can follow the progress in the console window.
When finished writing the firmware, switch off controller.

## Configure WLED

### Hardware setup
![image](https://user-images.githubusercontent.com/4923679/147888067-b07d6928-13c3-497c-85a1-d10180090272.png)
### Temperature
![image](https://user-images.githubusercontent.com/4923679/148069110-cbfe597f-3612-4c2d-83bb-04ac1af12bcc.png)
![image](https://user-images.githubusercontent.com/4923679/148069147-21314ace-1a82-47b7-acb2-ea9d739f3b82.png)
### IR receiver
### Relay
Installing relay https://kno.wled.ge/features/relay-control/
### Button

## 4-wire LED strip



