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
