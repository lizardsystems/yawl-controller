![image](https://user-images.githubusercontent.com/4923679/149402476-306efe19-1e98-4770-9b0e-16290bc4a205.png)

# ESPHome

## FastLED or NeoPixelBus
You may create your own firmaware using ESPHome and FastLED or NeoPixelBus library or download ready to use firmware.

For more information about FastLED library:
- ESPHome FastLED Light Platform https://esphome.io/components/light/fastled.html
- FastLED repository https://github.com/FastLED/FastLED
- ESPHome NeoPixelBus Light Platform https://esphome.io/components/light/neopixelbus.html
- NeoPixelBus repository https://github.com/Makuna/NeoPixelBus

### Download ready to use firmware

Download firmware [yawl-controller-fastled.bin](yawl-controller-fastled.bin) or  [yawl-controller-neopixelbus.bin](yawl-controller-neopixelbus.bin) from this repository.

### Build the firmware itself

Download YAML configuration file [yawl-controller-neopixelbus.yaml](yawl-controller-neopixelbus.yaml) or [yawl-controller-neopixelbus.yaml](yawl-controller-neopixelbus.yaml) from this repository and compile using ESPHome.

Please read [Getting Started with ESPHome](https://esphome.io/guides/getting_started_command_line.html) and [Getting Started with ESPHome and Home Assistant](https://esphome.io/guides/getting_started_hassio.html)

### Build the firmware from command line

If you want to flash firmware from command line you may skip this section and go to "**Flash using command line**"

 1) Edit file **env.cmd** from yawl-controller/firmware/ESPHome/ directory. 
   - Set `PYTHON_PATH` to Python installed on your system.
   - Set `ESPHOME_VENV` to path to virtual environment where ESPHome will be installed.
   - Set `ESPHOME_REPO` to url for ESPHome repository. Default: https://github.com/esphome/esphome
   - Set `ESPHOME_BRANCH` to branch name or tag in ESPHome repository. Default: release
 2) Run **install_esphome.cmd**. The latest version of ESPHome will be installed.
 3) Run **compile_fastled.cmd** or **compile_neopixelbus.cmd**. The firmware will be compiled and copied to yawl-controller/firmware/ESPHome/ directory. yawl-controller-fastled.bin or yawl-controller-neopixelbus.bin will be updated.  

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

### Flash using ESPHome Flasher

- Download flasher https://github.com/esphome/esphome-flasher/releases
 - Open the flasher tool.
   - Serial port: select COM port where the controller is connected (there is probably only one option).
   - Firmware: Browse to the location where you downloaded your compiled firmware and select your firmware.
   - Click Flash ESP and wait.

![esphome_flash](https://user-images.githubusercontent.com/4923679/151590660-6e98db55-7a78-4dfe-8a78-77da908318fc.gif)

The controller will be flashed now, you can follow the progress in the console window.
When finished writing the firmware, switch off controller.

### Flash using command line

1) Edit file **env.cmd** from yawl-controller/firmware/ESPHome/ directory. 
   - Set `PYTHON_PATH` to Python installed on your system.
   - Set `ESPHOME_VENV` to path to virtual environment where ESPHome will be installed.
   - Set `ESPHOME_REPO` to url for ESPHome repository. Default: https://github.com/esphome/esphome
   - Set `ESPHOME_BRANCH` to branch name or tag in ESPHome repository. Default: release
2) Run **install_esphome.cmd**. The latest version of ESPHome will be installed.

Once done, you can then go ahead and run the following command **flash_fastled.cmd** or **flash_neopixelbus.cmd** which will instruct ESPHome to flash YAWL controller firmware. This will take a minute or two to complete, at which point you will then be asked how you want to upload. Select the option for serial and it should begin to upload.

![yawl_flash](https://user-images.githubusercontent.com/4923679/151590128-faa4d04a-c57a-415d-8368-c978568b5062.gif)

Assuming everything was successful, you can now disconnect everything from the USB adaptor.

## Connect controller to Wi-Fi network

When you are using ready-to-use firmware, at the first start, the controller will create its own network "yawl-controller-XXXXXX". 

When you are connecting to the fallback network, the web interface should open automatically (see also login to network notifications). If it doesn't open, you may also navigate to http://192.168.4.1/ manually in your browser.

![image](https://user-images.githubusercontent.com/4923679/124567130-61863c00-de4c-11eb-86be-49ea9a270f94.png)

In this web interface, you may manually override the WiFi settings.

Additionally, you may upload a new firmware file.

## See also
 - https://esphome.io/guides/getting_started_hassio.html
