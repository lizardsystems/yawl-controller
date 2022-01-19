![image](https://user-images.githubusercontent.com/4923679/149402476-306efe19-1e98-4770-9b0e-16290bc4a205.png)

# ESPHome

## FastLED firmware

https://esphome.io/components/light/fastled.html
https://github.com/FastLED/FastLED


## NeopixelBus firmware

https://esphome.io/components/light/neopixelbus.html


## Flash firmware

Download flasher https://github.com/esphome/esphome-flasher/releases
Open the flasher tool.
 - Serial port: select COM port where the device is connected (there is probably only one option).
 - Firmware: Browse to the location where you downloaded your compiled firmware and select your firmware.

![image](https://user-images.githubusercontent.com/4923679/150183719-f0c19bbd-f6de-4fff-8127-51d3ef30a4f7.png)

- Click Flash ESP and wait.

The device will be flashed now, you can follow the progress in the console window.
When finished writing the firmware, switch off device.

## Connecting dongle to Wi-Fi network

When you are using ready-to-use firmware, at the first start, the dongle will create its own network "Midea AC Fallback Hotspot". 

Type password for Fallback Hotspot. Default: yawl_1234!@#$

When you are connecting to the fallback network, the web interface should open automatically (see also login to network notifications). If it doesn't open, you may also navigate to http://192.168.4.1/ manually in your browser.

![image](https://user-images.githubusercontent.com/4923679/124567130-61863c00-de4c-11eb-86be-49ea9a270f94.png)

In this web interface, you may manually override the WiFi settings.

Additionally, you may upload a new firmware file.

## See also
 - https://esphome.io/guides/getting_started_hassio.html
