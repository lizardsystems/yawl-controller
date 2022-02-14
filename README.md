# Yet Another WLED Controller
This repository contains a schematic and PCB layout for a yet another WLED controller (yawl-controller).

This is the ESP8266 based wireless pixel controller to drive adressable LED stripes like WS2812B/APA102/WS2801/etc using WLED.

![image](https://user-images.githubusercontent.com/4923679/148744534-96b7fe6e-2540-4cbb-8c9c-11a14e8da290.png)

## Features
![image](https://user-images.githubusercontent.com/4923679/150126578-9ea5feae-1f16-45e6-b413-2ab0f7c7e3dc.png)
 - Compact: 60x35x19mm with case, 59x32x12mm  without case.
 - Supports 3-wire and 4-wire LED strips.
 - Fuse for overcurrent protection.
 - Reverse polarity protection.
 - Modern [SN74LVC2T45](https://www.ti.com/product/SN74LVC2T45) bus transceiver with voltage translation. [Why?](level-shifter.md)
 - Capacitor 1000 µF at 6.3V, smooths the voltage and sudden changes in demand for current from the LEDs.
 - IR receiver (optional).
 - Button (optional).
 - Dallas temperature sensor for measuring ambient temperature inside of enclosure (optional).
 - Connection to relay for reducing power consumption when seemingly switched off (optional).


## Some credits

Thanks to [Christian Schwinne aka Aircoookie](https://github.com/Aircoookie) who created an excelent [WLED Project](https://github.com/Aircoookie/WLED) - a fast and feature-rich implementation of an ESP8266/ESP32 webserver to control NeoPixel (WS2812B, WS2811, SK6812) LEDs or also SPI based chipsets like the WS2801 and APA102.

Schematics are based on manufacturers datasheets but some component values come from [Adafruit Learning System](https://learn.adafruit.com/) so thanks to Adafruit for keeping their products open source.

## The Idea

Small and simple device for 5V addressable LED strips with minimum components and fully assembled by PCB manufacturing service in standard case.

## Schematic

This is the schematic of YAWL controller

![Schematic](schematic/Schematic_yet_another_wled_controller.png)

Download pdf file [Schematic_yet_another_wled_controller.pdf](Schematic_yet_another_wled_controller..pdf)

## GPIO Pinout
| Pin | Function | 
| --- | ---|
| GPIO0 | Push Button | 
|  GPIO1 | LED CLK |
|  GPIO2 | LED DATA |
|  GPIO4 | IR Receiver |
| GPIO12 | Relay | 
| GPIO14 | Temperature Sensor |




## PCB 
Dimensions: 
 - Width x Height: 59x32mm
 - Thickness: 1.6mm
 
### 2D View
![2D View](images/yawl-controller-2D-top.png)

### 3D View
![3D View](images/yawl-controller-3D.png)

## Case

PCB is designed for [AK-S-80](datasheets/AK-S-80.pdf) case

![Case](https://user-images.githubusercontent.com/4923679/147881432-e5d43037-fedc-42a0-b894-20ac5c828562.png)

## Ordering and manufacturing

 - Gerber files: [Gerber_PCB_yet_another_wled_controller.zip](fabrication/Gerber_PCB_yet_another_wled_controller.zip)
 - BOM file: [BOM_PCB_yet_another_wled_controller.csv](fabrication/BOM_PCB_yet_another_wled_controller.csv)
 - BOM file (JLCPCB): [BOM_PCB_yet_another_wled_controller_(JLCPCB).xls](fabrication/BOM_PCB_yet_another_wled_controller_(JLCPCB).xls)
 - CPL file: [PickAndPlace_PCB_yet_another_wled_controller.csv](fabrication/PickAndPlace_PCB_yet_another_wled_controller.csv)

## Hardware

### PCB manufactured by JLCPCB

![image](https://user-images.githubusercontent.com/4923679/147882466-71f18676-8921-4882-8fba-cf14b765dff4.png)

### SMT assembled PCB

![image](https://user-images.githubusercontent.com/4923679/148696689-2e340bda-a2ca-41d7-a06a-2582eccb4c63.png)

### Manual soldering and assembling

![image](https://user-images.githubusercontent.com/4923679/148694897-022245fe-2545-4476-af9c-1e1aab210671.png)


- Fuse Holder [Micro](https://aliexpress.ru/item/4000541087990.html), Fuse 10A [Micro](https://aliexpress.ru/item/4000568246661.html) 
- IR Receiver (optional) [TSOP38238](https://aliexpress.ru/item/32834341300.html)
- Temperature Sensor (optional) [DS18B20](https://aliexpress.ru/item/32523899337.html)
- 3x Screw Terminal 5mm (optional) [2P](https://aliexpress.ru/item/4000084631795.html)
- Relay Screw Terminal 2.54mm (optional) [2P](https://aliexpress.ru/item/4000867583795.html)
- Push Button (optional) [6x6x9mm](https://aliexpress.ru/item/32912104842.html)
- DC Power Pigtail Female Plug [5.5x2.1mm](https://www.aliexpress.com/af/pigtail-dc-female-5.5x2.1mm.html)
- JST SM Connector [3pin](https://www.aliexpress.com/item/1718558728.html)
- Case (optional) [80x38x22mm-Black](https://aliexpress.ru/item/1005002656761229.html) or [style 2](https://aliexpress.ru/item/1005001677364663.html)


### Assembled device

![image](https://user-images.githubusercontent.com/4923679/148697657-2daef0c1-f44f-4adf-8553-6ab3f9439131.png)

With all optional parts

![image](https://user-images.githubusercontent.com/4923679/148697854-d7ea49c9-5123-4108-89c8-f2a3430f79d7.png)

### In case 

![image](https://user-images.githubusercontent.com/4923679/148698189-70a029c0-2643-460d-97d1-b1e7b7aec49e.png)

## Ready to use firmware

- [Custom WLED Firmware](firmware/WLED/)
- [Custom ESPHome Firmware](firmware/ESPHome)


## Resources
 - [WLED](https://github.com/Aircoookie/WLED) 
 - [ESPHOME](https://esphome.io/)
 
