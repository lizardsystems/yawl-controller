# yawl-controller
Yet another WLED controller
![yawl-controller](images/yawl-controller_preview.jpg)

This is the ESP8266 based wireless pixel controller to drive adressable LED stripes like Neopixel/SK6812/WS2801/etc using WLED.

This repository contains a schematic and PCB layout for a yawl-controller.

### Some credits before start

Thanks to [Christian Schwinne aka Aircoookie](https://github.com/Aircoookie) who created an excelent [WLED Project](https://github.com/Aircoookie/WLED) - a fast and feature-rich implementation of an ESP8266/ESP32 webserver to control NeoPixel (WS2812B, WS2811, SK6812) LEDs or also SPI based chipsets like the WS2801 and APA102!.

Schematics are based on manufacturers datasheets but some component values come from [Adafruit Learning System](https://learn.adafruit.com/) so thanks to Adafruit for keeping their products open source.

## Idea

Small and simple device for 5V addressable LED strips with minimum components and fully assembled by PCB manufacturing service in standard case.

## Schematic

This is the schematic of YAWL controller

![Schematic](schematic/Schematic_yet_another_wled_controller.png)

Download pdf file [Schematic_yet_another_wled_controller.pdf](Schematic_yet_another_wled_controller..pdf)

## PCB 
Dimensions: 
 - Width x Height: 59x32mm
 - Thickness: 1.6mm
 
### 2D View
![2D View](images/yawl-controller-2D-top.png)

### 3D View
![3D View](images/yawl-controller-3D.png)

### Case

PCB is designed for [AK-S-80](datasheets/AK-S-80.pdf) case

![Case](https://user-images.githubusercontent.com/4923679/147881432-e5d43037-fedc-42a0-b894-20ac5c828562.png)

## Ordering and manufacturing

 - Gerber files: [Gerber_PCB_yet_another_wled_controller.zip](fabrication/Gerber_PCB_yet_another_wled_controller.zip)
 - BOM file: [BOM_PCB_yet_another_wled_controller.csv](fabrication/BOM_PCB_yet_another_wled_controller.csv)
 - BOM file (JLCPCB): [BOM_PCB_yet_another_wled_controller_(JLCPCB).xls](fabrication/BOM_PCB_yet_another_wled_controller_(JLCPCB).xls)
 - CPL file: [PickAndPlace_PCB_yet_another_wled_controller.csv](fabrication/PickAndPlace_PCB_yet_another_wled_controller.csv)

## Hardware

PCB manufactured by JLCPCB

![PCB](images/pcb_preview.jpg)

PCB and the case 

![pcb and case](images/pcb_and_case_preview.jpg) ![pcb_in_case](images/pcb_in_case_preview.jpg)

## Ready to use firmware

### WLED
You may use ready bin file .

### ESPHOME

## Compiling

## Flashing


## Installing

![Installing](images/yawl-controller_with_strip_preview.jpg)


## Resources
 - [WLED](https://github.com/Aircoookie/WLED) 
 - [ESPHOME](https://esphome.io/)
 
