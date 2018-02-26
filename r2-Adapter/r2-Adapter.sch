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
EELAYER 25 0
EELAYER END
$Descr User 6299 5512
encoding utf-8
Sheet 1 1
Title "Digitabulum Test Harness"
Date "2017-06-17"
Rev "1"
Comp "Manuvr, Inc"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1600 1650 0    39   ~ 0
I2C1_SCL
Text Label 1000 1950 2    39   ~ 0
Vbatt
Text Label 1000 1150 2    39   ~ 0
CPLD_OE
Text Label 1600 1050 0    39   ~ 0
TMS
Text Label 1000 950  2    39   ~ 0
TDI
Text Label 1600 2050 0    39   ~ 0
VCC
Wire Wire Line
	1000 2050 1050 2050
Wire Wire Line
	1000 1650 1050 1650
Wire Wire Line
	1000 1750 1050 1750
Wire Wire Line
	1000 1850 1050 1850
Wire Wire Line
	1000 1950 1050 1950
Wire Wire Line
	1000 2150 1050 2150
Wire Wire Line
	1000 2250 1050 2250
Wire Wire Line
	1000 2350 1050 2350
Wire Wire Line
	1000 1350 1050 1350
Wire Wire Line
	1000 850  1050 850 
Wire Wire Line
	1000 950  1050 950 
Wire Wire Line
	1000 1050 1050 1050
Wire Wire Line
	1000 1150 1050 1150
Wire Wire Line
	1000 1250 1050 1250
Wire Wire Line
	1000 1450 1050 1450
Wire Wire Line
	1000 1550 1050 1550
Wire Wire Line
	1550 1650 1600 1650
Wire Wire Line
	1550 1750 1600 1750
Wire Wire Line
	1550 1850 1600 1850
Wire Wire Line
	1550 1950 1600 1950
Wire Wire Line
	1550 2050 1600 2050
Wire Wire Line
	1550 2150 1600 2150
Wire Wire Line
	1550 2350 1600 2350
Wire Wire Line
	1550 1350 1600 1350
Wire Wire Line
	1550 850  1600 850 
Wire Wire Line
	1550 950  1600 950 
Wire Wire Line
	1550 1050 1600 1050
Wire Wire Line
	1550 1150 1600 1150
Wire Wire Line
	1550 1250 1600 1250
Wire Wire Line
	1550 1450 1600 1450
Wire Wire Line
	1550 1550 1600 1550
Text Label 1600 950  0    39   ~ 0
TDO
Text Label 1000 1050 2    39   ~ 0
TCK
Text Label 1600 1150 0    39   ~ 0
~CPLD_RESET
Text Label 1600 1950 0    39   ~ 0
Vbatt
Text Label 1000 1750 2    39   ~ 0
I2C1_SDA
Text Label 1600 1350 0    39   ~ 0
CPLD_GPIO_0
Text Label 1000 1550 2    39   ~ 0
SPI1_MISO
Text Label 1000 1850 2    39   ~ 0
~REQ
Text Label 1000 1350 2    39   ~ 0
SPI2_MOSI
Text Label 1600 1550 0    39   ~ 0
IRQ_WAKEUP
Text Label 1600 850  0    39   ~ 0
CPLD_EXT_CLK
Text Label 1600 1450 0    39   ~ 0
SPI1_MOSI
Text Label 1000 1450 2    39   ~ 0
SPI1_CLK
Text Label 1000 1250 2    39   ~ 0
SPI2_CLK
Text Label 1600 1250 0    39   ~ 0
SPI2_CS
Text Label 1000 850  2    39   ~ 0
SPI1_CS_0
Text Label 1600 1750 0    39   ~ 0
~LED_INT
Text Label 1000 1650 2    39   ~ 0
~LED_RESET
Text Label 1600 2250 0    39   ~ 0
GND
Text Label 1600 2350 0    39   ~ 0
GND
Text Label 1000 2250 2    39   ~ 0
GND
Text Label 1000 2150 2    39   ~ 0
VCC
$Comp
L CONN_01X01 P8
U 1 1 584BE8FA
P 1650 3200
F 0 "P8" H 1650 3300 50  0000 C CNN
F 1 "HOLE" V 1750 3200 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_DIN965_Pad" H 1650 3200 50  0001 C CNN
F 3 "" H 1650 3200 50  0000 C CNN
	1    1650 3200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 584BFD50
P 1900 3200
F 0 "P9" H 1900 3300 50  0000 C CNN
F 1 "HOLE" V 2000 3200 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_DIN965_Pad" V 2000 3100 50  0000 C CNN
F 3 "" H 1900 3200 50  0000 C CNN
	1    1900 3200
	0    1    1    0   
$EndComp
Text Label 1000 2350 2    39   ~ 0
GND
$Comp
L CONN_01X01 P12
U 1 1 584C56F1
P 3700 3200
F 0 "P12" H 3700 3300 50  0000 C CNN
F 1 "CONN_01X01" V 3800 3200 50  0001 C CNN
F 2 "manuvr_logo:ManuvrLogo" H 3700 3100 50  0000 C CNN
F 3 "" H 3700 3200 50  0000 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
NoConn ~ 1600 1850
$Comp
L CONN_02X16 P7
U 1 1 586BA1F9
P 1300 1600
F 0 "P7" H 1300 2450 50  0000 C CNN
F 1 "CONN_02X16" V 1300 1600 50  0000 C CNN
F 2 "Digitabulum-r2:DF12(3.0)-32DS-0.5V(86)" H 1300 650 39  0001 C CNN
F 3 "" H 1300 500 50  0000 C CNN
F 4 "DF12-32DS-0.5V(86)" H 1300 750 39  0001 C CNN "Manu_Number"
F 5 "Hirose Electric Co Ltd" H 1300 1600 39  0001 C CNN "Manu_Name"
F 6 "H5205CT-ND" H 1300 1600 39  0001 C CNN "Digikey_Number"
	1    1300 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2250 1600 2250
NoConn ~ 1000 2050
NoConn ~ 1600 2150
NoConn ~ 1900 3000
NoConn ~ 1650 3000
Text Label 3400 3200 2    39   ~ 0
GND
Wire Wire Line
	3400 3200 3500 3200
$Comp
L CONN_02X05 P2
U 1 1 5882FD79
P 4900 1650
F 0 "P2" H 4900 1950 50  0000 C CNN
F 1 "CONN_02X05" H 4900 1350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 4900 1250 50  0001 C CNN
F 3 "" H 4900 450 50  0000 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
Text Label 5250 1550 0    39   ~ 0
VCC
Wire Wire Line
	5150 1550 5250 1550
NoConn ~ 5150 1650
NoConn ~ 4650 1750
NoConn ~ 5150 1750
Text Label 5250 1450 0    39   ~ 0
GND
Wire Wire Line
	5250 1450 5150 1450
Text Label 5250 1850 0    39   ~ 0
GND
Wire Wire Line
	5250 1850 5150 1850
Text Label 4550 1650 2    39   ~ 0
TMS
Text Label 4550 1550 2    39   ~ 0
TDO
Text Label 4550 1850 2    39   ~ 0
TDI
Text Label 4550 1450 2    39   ~ 0
TCK
Wire Wire Line
	4550 1850 4650 1850
Wire Wire Line
	4650 1650 4550 1650
Wire Wire Line
	4550 1550 4650 1550
Wire Wire Line
	4550 1450 4650 1450
Text Label 2900 1700 2    39   ~ 0
I2C1_SCL
Text Label 3500 1300 0    39   ~ 0
VCC
Text Label 2900 1600 2    39   ~ 0
~CPLD_RESET
Text Label 3500 1200 0    39   ~ 0
Vbatt
Text Label 3500 1500 0    39   ~ 0
CPLD_GPIO_0
Text Label 2900 1900 2    39   ~ 0
IRQ_WAKEUP
Text Label 2900 1500 2    39   ~ 0
CPLD_EXT_CLK
Text Label 2900 2100 2    39   ~ 0
SPI1_MOSI
Text Label 2900 1400 2    39   ~ 0
SPI2_CS
Text Label 3500 1800 0    39   ~ 0
~LED_INT
Text Label 3500 1400 0    39   ~ 0
GND
Text Label 3500 1600 0    39   ~ 0
CPLD_OE
Text Label 3500 1700 0    39   ~ 0
I2C1_SDA
Text Label 3500 2000 0    39   ~ 0
SPI1_MISO
Text Label 3500 1900 0    39   ~ 0
~REQ
Text Label 2900 1300 2    39   ~ 0
SPI2_MOSI
Text Label 3500 2100 0    39   ~ 0
SPI1_CLK
Text Label 2900 1200 2    39   ~ 0
SPI2_CLK
Text Label 2900 2000 2    39   ~ 0
SPI1_CS_0
Text Label 2900 1800 2    39   ~ 0
~LED_RESET
$Comp
L CONN_02X10 P1
U 1 1 58830F95
P 3200 1650
F 0 "P1" H 3200 2200 50  0000 C CNN
F 1 "CONN_02X10" V 3200 1650 50  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_Socket_LongPads" H 3200 2250 50  0001 C CNN
F 3 "" H 3200 450 50  0000 C CNN
	1    3200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1200 2950 1200
Wire Wire Line
	2900 1300 2950 1300
Wire Wire Line
	2900 1400 2950 1400
Wire Wire Line
	2900 1500 2950 1500
Wire Wire Line
	2900 1600 2950 1600
Wire Wire Line
	2900 1700 2950 1700
Wire Wire Line
	2900 1800 2950 1800
Wire Wire Line
	2900 1900 2950 1900
Wire Wire Line
	2900 2000 2950 2000
Wire Wire Line
	2900 2100 2950 2100
Wire Wire Line
	3450 1200 3500 1200
Wire Wire Line
	3450 1300 3500 1300
Wire Wire Line
	3450 1400 3500 1400
Wire Wire Line
	3450 1500 3500 1500
Wire Wire Line
	3450 1600 3500 1600
Wire Wire Line
	3450 1700 3500 1700
Wire Wire Line
	3450 1800 3500 1800
Wire Wire Line
	3450 1900 3500 1900
Wire Wire Line
	3450 2000 3500 2000
Wire Wire Line
	3450 2100 3500 2100
$Comp
L CONN_01X02 P3
U 1 1 58831C28
P 5150 3250
F 0 "P3" H 5150 3400 50  0000 C CNN
F 1 "CONN_01X02" V 5250 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5050 2900 50  0001 C CNN
F 3 "" H 5150 3250 50  0000 C CNN
	1    5150 3250
	1    0    0    -1  
$EndComp
Text Label 4900 3300 2    39   ~ 0
Vbatt
Text Label 4900 3200 2    39   ~ 0
GND
Wire Wire Line
	4900 3200 4950 3200
Wire Wire Line
	4900 3300 4950 3300
$EndSCHEMATC
