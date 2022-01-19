![image](https://user-images.githubusercontent.com/4923679/149402476-306efe19-1e98-4770-9b0e-16290bc4a205.png)

# ESPHome

## FastLED

You may create your own firmaware using FastLED platform or download ready to use firmware.

For more information about FastLED library:
- ESPHome FastLED Light Platform https://esphome.io/components/light/fastled.html
- FastLED repository https://github.com/FastLED/FastLED

### Download ready to use firmware

Download firmware [yawl-controller-fastled.bin](yawl-controller-fastled.bin) from this repository.

### Build the firmware itself

Download YAML configuration file [yawl-controller-neopixelbus.yaml](yawl-controller-neopixelbus.yaml) from this repository and compile using ESPHome.

Please read [Getting Started with ESPHome](https://esphome.io/guides/getting_started_command_line.html) and [Getting Started with ESPHome and Home Assistant](https://esphome.io/guides/getting_started_hassio.html)

## NeopixelBus
You may create your own firmaware using NeoPixelBus library or download ready to use firmware.

For more information about NeoPixelBus library:
- ESPHome NeoPixelBus Light Platform https://esphome.io/components/light/neopixelbus.html
- NeoPixelBus repository https://github.com/Makuna/NeoPixelBus

### Download ready to use firmware

Download firmware [yawl-controller-neopixelbus.bin](yawl-controller-neopixelbus.bin) from this repository.

### Build the firmware itself

Download YAML configuration file [yawl-controller-neopixelbus.yaml](yawl-controller-neopixelbus.yaml) from this repository and compile using ESPHome.

Please read [Getting Started with ESPHome](https://esphome.io/guides/getting_started_command_line.html) and [Getting Started with ESPHome and Home Assistant](https://esphome.io/guides/getting_started_hassio.html)

## Connect controller to computer


## Flash firmware

Download flasher https://github.com/esphome/esphome-flasher/releases
Open the flasher tool.
 - Serial port: select COM port where the controller is connected (there is probably only one option).
 - Firmware: Browse to the location where you downloaded your compiled firmware and select your firmware.

![image](https://user-images.githubusercontent.com/4923679/150183719-f0c19bbd-f6de-4fff-8127-51d3ef30a4f7.png)

- Click Flash ESP and wait.

The controller will be flashed now, you can follow the progress in the console window.
When finished writing the firmware, switch off controller.

## Connect controller to Wi-Fi network

When you are using ready-to-use firmware, at the first start, the controller will create its own network "yawl-controller-XXXXXX". 


When you are connecting to the fallback network, the web interface should open automatically (see also login to network notifications). If it doesn't open, you may also navigate to http://192.168.4.1/ manually in your browser.

![image](https://user-images.githubusercontent.com/4923679/124567130-61863c00-de4c-11eb-86be-49ea9a270f94.png)

In this web interface, you may manually override the WiFi settings.

Additionally, you may upload a new firmware file.

## See also
 - https://esphome.io/guides/getting_started_hassio.html
