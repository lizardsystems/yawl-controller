![wled_logo_akemi](https://user-images.githubusercontent.com/4923679/149402904-e135a6fa-ae00-4d32-b50a-784e71b2ab5c.jpg)

# WLED

## Download ready-to-use firmware

### YAWL firmware
You may download a ready-to-use firmware [yawl_controller.bin ](firmware/WLED/bin/yawl_controller.bin).

### Standard firmware

You can get further information on the various WLED firmware versions https://kno.wled.ge/basics/install-binary/

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

## Hardware Setup

### GPIO Pinout
| Pin | Function | 
| --- | ---|
| GPIO0 | Push Button | 
|  GPIO1 | LED CLK |
|  GPIO2 | LED DATA |
|  GPIO4 | IR Receiver |
| GPIO12 | Relay | 
| GPIO14 | Temperature Sensor |


### 3-Wire LED Strip 
![image](https://user-images.githubusercontent.com/4923679/153913842-a6593142-24aa-42bf-b5f6-6cd16dcb8917.png)

1. Select 3-wire LED Strip like a WS281x
2. Data GPIO: 2 

### 4-Wire LED Strip
![image](https://user-images.githubusercontent.com/4923679/153906778-40c47fa6-e71f-48ec-b544-236a7a92fa7b.png)

1. Select 4-wire LED Strip like a APA102
2. GPIOs: 
   - Data GPIO: 2
   - Clk GPIO: 1

### Temperature
![image](https://user-images.githubusercontent.com/4923679/153916175-8572cc5b-27c6-4c6d-8495-6753ef247217.png)

YAWL Controller uses GPIO 14 for temperature sensor DS18B20 (DALLAS)

![image](https://user-images.githubusercontent.com/4923679/148069147-21314ace-1a82-47b7-acb2-ea9d739f3b82.png)

### IR receiver
![image](https://user-images.githubusercontent.com/4923679/153915303-2f04856f-2a47-42df-bd29-26eec64e2434.png)

YAWL controller uses GPIO 4 for IR receiver. 

Information about infrared receivers https://kno.wled.ge/interfaces/infrared/

### Relay
![image](https://user-images.githubusercontent.com/4923679/153915486-dcda3746-a0f0-44ca-b5f8-ebd2ef675e6c.png)

YAWL controller uses GPIO 12 for controlling relay. 

Installing relay https://kno.wled.ge/features/relay-control/

### Button
![image](https://user-images.githubusercontent.com/4923679/153915630-30d3ab58-f2f6-416a-92d7-ade93570c406.png)

YAWL controller uses GPIO 0 for button. 


## Multi-strip Support

You are able to use multiple LED outputs from one yawl-controller. Pins and LED numbers can be easily configured in LED settings, you don't need to re-compile code for your specific setup. You may use use two specific LED pins, GPIO1 (CLK) and GPIO2 (DATA) for two 3-wires strips 

### GPIO Pinout
| Pin | Function | 
| --- | ---|
|  GPIO1 | LED DATA #1 |
|  GPIO2 | LED DATA #2 |

### Wiring

![image](https://user-images.githubusercontent.com/4923679/163726799-2877ba38-890b-4cbf-9c9d-28ccb5137bf1.png)




### WLED Config

![image](https://user-images.githubusercontent.com/4923679/163726769-a2f8e913-083c-44bf-8a74-44ece65049ac.png)







