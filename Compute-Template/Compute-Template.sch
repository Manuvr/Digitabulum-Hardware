EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Compute-Template-cache
EELAYER 25 0
EELAYER END
$Descr User 6299 5118
encoding utf-8
Sheet 1 1
Title "Compute PCB Template"
Date "2017-06-17"
Rev "1"
Comp "Manuvr, Inc"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1100 1300 2    39   ~ 0
PIN_0
Text Label 1100 1600 2    39   ~ 0
VCC0
Text Label 1100 2600 2    39   ~ 0
USB_D-
Text Label 1100 2500 2    39   ~ 0
USB_D+
Text Label 1700 1200 0    39   ~ 0
ALERT
Text Label 1100 2100 2    39   ~ 0
ISEL
Text Label 1700 2100 0    39   ~ 0
SPI2_CS
Text Label 1700 1400 0    39   ~ 0
~LED_INT
Text Label 1100 1500 2    39   ~ 0
GND
Text Label 1700 1800 0    39   ~ 0
CPLD_OE
Text Label 1700 1500 0    39   ~ 0
~REQ
Text Label 1700 2200 0    39   ~ 0
SPI2_MOSI
Text Label 1700 2000 0    39   ~ 0
SPI2_CLK
Text Label 1700 1300 0    39   ~ 0
~LED_RESET
Text Label 1100 2200 2    39   ~ 0
I2C_SDA
Text Label 1700 2400 0    39   ~ 0
SPI1_MOSI
Text Label 1700 2500 0    39   ~ 0
SPI1_MISO
Text Label 1700 2300 0    39   ~ 0
SPI1_CLK
Text Label 1700 1600 0    39   ~ 0
SPI1_CS
Text Label 1700 1900 0    39   ~ 0
~CPLD_RESET
Text Label 1700 2600 0    39   ~ 0
IRQ_WAKEUP
Text Label 1700 1700 0    39   ~ 0
CPLD_EXT_CLK
Text Label 1100 1400 2    39   ~ 0
~SHUTDOWN
Text Label 1100 2300 2    39   ~ 0
I2C_SCL
$Comp
L CAPARRAY_4 CARY2
U 1 1 590EDA84
P 3250 2800
F 0 "CARY2" H 3250 2200 60  0000 C CNN
F 1 "100nF" H 3250 3350 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 3250 2800 60  0001 C CNN
F 3 "" H 3250 2800 60  0000 C CNN
	1    3250 2800
	0    -1   1    0   
$EndComp
Text Label 3800 3100 0    39   ~ 0
GND
Text Label 3800 2500 0    39   ~ 0
VCC0
Text Label 5050 1950 1    39   ~ 0
GND
$Comp
L GND #PWR01
U 1 1 590EDA85
P 5050 2100
F 0 "#PWR01" H 5050 1850 50  0001 C CNN
F 1 "GND" H 5050 1950 50  0000 C CNN
F 2 "" H 5050 2100 50  0000 C CNN
F 3 "" H 5050 2100 50  0000 C CNN
	1    5050 2100
	1    0    0    -1  
$EndComp
$Comp
L CAPARRAY_4 CARY1
U 1 1 590EF85F
P 3250 2050
F 0 "CARY1" H 3250 1450 60  0000 C CNN
F 1 "100nF" H 3250 2600 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 3250 2050 60  0001 C CNN
F 3 "" H 3250 2050 60  0000 C CNN
	1    3250 2050
	0    -1   1    0   
$EndComp
Text Label 3800 2350 0    39   ~ 0
GND
Text Label 3800 1750 0    39   ~ 0
VCC0
$Comp
L CONN_01X01 P4
U 1 1 590EDA5D
P 4900 2850
F 0 "P4" H 4900 2950 50  0000 C CNN
F 1 "CONN_01X01" V 5000 2850 50  0001 C CNN
F 2 "manuvr_logo:ManuvrLogo" H 4900 2750 50  0000 C CNN
F 3 "" H 4900 2850 50  0000 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
Text Label 4650 2850 2    39   ~ 0
GND
Wire Wire Line
	4650 2850 4700 2850
Connection ~ 3400 1750
Wire Wire Line
	2900 1750 4200 1750
Connection ~ 3150 1750
Wire Wire Line
	3150 1750 3150 1800
Wire Wire Line
	3400 1750 3400 1800
Connection ~ 3650 1750
Wire Wire Line
	3650 1750 3650 1800
Wire Wire Line
	2900 1800 2900 1750
Connection ~ 3650 2350
Wire Wire Line
	3650 2350 3650 2300
Connection ~ 3400 2350
Wire Wire Line
	3400 2350 3400 2300
Connection ~ 3150 2350
Wire Wire Line
	3150 2300 3150 2350
Wire Wire Line
	2900 2350 2900 2300
Wire Wire Line
	2900 2350 4200 2350
Connection ~ 3400 2500
Wire Wire Line
	1650 2500 1700 2500
Wire Wire Line
	1650 2600 1700 2600
Wire Wire Line
	5050 1950 5050 2100
Wire Wire Line
	2900 2500 3800 2500
Connection ~ 3150 2500
Wire Wire Line
	3150 2500 3150 2550
Wire Wire Line
	3400 2500 3400 2550
Connection ~ 3650 2500
Wire Wire Line
	3650 2500 3650 2550
Wire Wire Line
	2900 2550 2900 2500
Connection ~ 3650 3100
Wire Wire Line
	3650 3100 3650 3050
Connection ~ 3400 3100
Wire Wire Line
	3400 3100 3400 3050
Connection ~ 3150 3100
Wire Wire Line
	3150 3050 3150 3100
Wire Wire Line
	2900 3100 2900 3050
Wire Wire Line
	2900 3100 3800 3100
Wire Wire Line
	1700 2400 1650 2400
$Comp
L HiRose-02X15 P1
U 1 1 59192722
P 1400 1900
F 0 "P1" H 1400 2700 50  0000 C CNN
F 1 "HiRose-02X15" V 1400 1900 50  0000 C CNN
F 2 "r2Parts:DF12(4.0)-30DS-0.5V(86)" H 1400 750 50  0001 C CNN
F 3 "" H 1400 750 50  0000 C CNN
	1    1400 1900
	-1   0    0    -1  
$EndComp
Text Label 1100 1700 2    39   ~ 0
VCC0
Text Label 1100 1800 2    39   ~ 0
GND
Text Label 1100 1900 2    39   ~ 0
GND
Text Label 1100 2000 2    39   ~ 0
VCCUSB
Text Label 1100 2400 2    39   ~ 0
GND
Wire Wire Line
	1650 1200 1700 1200
Wire Wire Line
	1650 1300 1700 1300
Wire Wire Line
	1650 1400 1700 1400
Wire Wire Line
	1650 1500 1700 1500
Wire Wire Line
	1650 1700 1700 1700
Wire Wire Line
	1650 1800 1700 1800
Wire Wire Line
	1650 1900 1700 1900
Wire Wire Line
	1650 2000 1700 2000
Wire Wire Line
	1650 2100 1700 2100
Wire Wire Line
	1650 2200 1700 2200
Wire Wire Line
	1650 2300 1700 2300
Wire Wire Line
	1100 2600 1150 2600
Wire Wire Line
	1350 2850 1350 2900
Wire Wire Line
	1350 2900 1500 2900
Wire Wire Line
	1450 2900 1450 2850
Connection ~ 1450 2900
Text Label 1500 2900 0    39   ~ 0
GND
Wire Wire Line
	1100 1200 1150 1200
Wire Wire Line
	1100 1300 1150 1300
Wire Wire Line
	1100 1400 1150 1400
Wire Wire Line
	1100 1500 1150 1500
Wire Wire Line
	1100 1600 1150 1600
Wire Wire Line
	1100 1700 1150 1700
Wire Wire Line
	1100 1800 1150 1800
Wire Wire Line
	1100 1900 1150 1900
Wire Wire Line
	1100 2000 1150 2000
Wire Wire Line
	1100 2100 1150 2100
Wire Wire Line
	1100 2200 1150 2200
Wire Wire Line
	1100 2300 1150 2300
Wire Wire Line
	1100 2400 1150 2400
Wire Wire Line
	1100 2500 1150 2500
Wire Wire Line
	1650 1600 1700 1600
$Comp
L IANS_CAP_POLARIZED C2
U 1 1 59197092
P 4200 2100
F 0 "C2" V 4300 2000 39  0000 C CNN
F 1 "100uF" V 4400 2100 39  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 4200 2100 60  0001 C CNN
F 3 "" H 4200 2100 60  0000 C CNN
	1    4200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2350 4200 2200
Wire Wire Line
	4200 1750 4200 1850
Text Label 1100 1200 2    39   ~ 0
CHIP_PU
Text Label 3050 1200 2    39   ~ 0
ALERT
Text Label 4500 900  2    39   ~ 0
SPI2_CS
Text Label 3050 1100 2    39   ~ 0
~LED_INT
Text Label 5100 1100 0    39   ~ 0
CPLD_OE
Text Label 5100 900  0    39   ~ 0
~REQ
Text Label 4500 1000 2    39   ~ 0
SPI2_MOSI
Text Label 4500 800  2    39   ~ 0
SPI2_CLK
Text Label 3050 1300 2    39   ~ 0
~LED_RESET
Text Label 4500 1200 2    39   ~ 0
SPI1_MOSI
Text Label 4500 1300 2    39   ~ 0
SPI1_MISO
Text Label 4500 1100 2    39   ~ 0
SPI1_CLK
Text Label 5100 800  0    39   ~ 0
SPI1_CS
Text Label 5100 1200 0    39   ~ 0
~CPLD_RESET
Text Label 5100 1300 0    39   ~ 0
IRQ_WAKEUP
Text Label 5100 1000 0    39   ~ 0
CPLD_EXT_CLK
Text Label 3650 1300 0    39   ~ 0
USB_D-
Text Label 3650 1200 0    39   ~ 0
USB_D+
Text Label 3650 800  0    39   ~ 0
ISEL
Text Label 3650 900  0    39   ~ 0
I2C_SDA
Text Label 3650 1100 0    39   ~ 0
~SHUTDOWN
Text Label 3650 1000 0    39   ~ 0
I2C_SCL
Text Label 3050 1000 2    39   ~ 0
VCC0
Text Label 3050 900  2    39   ~ 0
VCCUSB
Text Label 3050 800  2    39   ~ 0
GND
Wire Wire Line
	4500 800  4550 800 
Wire Wire Line
	4500 900  4550 900 
Wire Wire Line
	4500 1000 4550 1000
Wire Wire Line
	4500 1100 4550 1100
Wire Wire Line
	4500 1200 4550 1200
Wire Wire Line
	4500 1300 4550 1300
Wire Wire Line
	3050 800  3100 800 
Wire Wire Line
	3050 900  3100 900 
Wire Wire Line
	3050 1000 3100 1000
Wire Wire Line
	3050 1100 3100 1100
Wire Wire Line
	3050 1200 3100 1200
Wire Wire Line
	3050 1300 3100 1300
Wire Wire Line
	5050 800  5100 800 
Wire Wire Line
	5050 900  5100 900 
Wire Wire Line
	5050 1000 5100 1000
Wire Wire Line
	5050 1100 5100 1100
Wire Wire Line
	5050 1200 5100 1200
Wire Wire Line
	5050 1300 5100 1300
Wire Wire Line
	3600 800  3650 800 
Wire Wire Line
	3600 900  3650 900 
Wire Wire Line
	3600 1000 3650 1000
Wire Wire Line
	3600 1100 3650 1100
Wire Wire Line
	3600 1200 3650 1200
Wire Wire Line
	3600 1300 3650 1300
$Comp
L CONN_02X06 P2
U 1 1 5944AFFB
P 4800 1050
F 0 "P2" H 4800 1400 50  0000 C CNN
F 1 "CPLD" H 4800 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 4800 700 50  0001 C CNN
F 3 "" H 4800 -150 50  0000 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X06 P3
U 1 1 5944B0D6
P 3350 1050
F 0 "P3" H 3350 1400 50  0000 C CNN
F 1 "BackPlane" H 3350 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 3350 700 50  0001 C CNN
F 3 "" H 3350 -150 50  0000 C CNN
	1    3350 1050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
