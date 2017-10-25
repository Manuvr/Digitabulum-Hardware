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
LIBS:IansParts
LIBS:switches
LIBS:Provisioner-cache
EELAYER 25 0
EELAYER END
$Descr User 7905 7496
encoding utf-8
Sheet 1 1
Title "Digitabulum Dev Harness"
Date "2017-10-05"
Rev "1"
Comp "Manuvr, Inc"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X01 P3
U 1 1 584C56F1
P 1700 6300
F 0 "P3" H 1700 6400 50  0000 C CNN
F 1 "CONN_01X01" V 1800 6300 50  0001 C CNN
F 2 "manuvr_logo:ManuvrLogo" H 1700 6200 50  0000 C CNN
F 3 "" H 1700 6300 50  0000 C CNN
	1    1700 6300
	1    0    0    -1  
$EndComp
$Comp
L USB-MICRO-B CON1
U 1 1 58FD5CC6
P 4900 3350
F 0 "CON1" H 5050 3600 60  0000 C CNN
F 1 "USB-MICRO-B" H 4900 2900 39  0000 C CNN
F 2 "iansModules:USB_ZX62WRD-B-5PC" H 4900 3800 60  0001 C CNN
F 3 "" H 4900 3350 60  0000 C CNN
F 4 "ZX62WRD-B-5PC" H 4900 3350 60  0001 C CNN "Manu_Number"
F 5 "Hirose Electric Co Ltd" H 4900 3350 60  0001 C CNN "Manu_Name"
F 6 "H12192CT-ND" H 4900 3350 60  0001 C CNN "Digikey_Number"
	1    4900 3350
	-1   0    0    -1  
$EndComp
Text Label 1800 2300 0    39   ~ 0
VCC1
Text Label 1800 1900 0    39   ~ 0
VCCUSB
Text Label 5550 3050 0    39   ~ 0
VCCUSB
Text Label 5950 2250 2    39   ~ 0
VCC1
Text Label 4050 3950 0    39   ~ 0
VCC0
Text Label 4050 3050 0    39   ~ 0
USB_D-
Text Label 4050 3150 0    39   ~ 0
USB_D+
Text Label 950  1600 2    39   ~ 0
I2C_SDA
Text Label 950  1700 2    39   ~ 0
I2C_SCL
Text Label 1800 1100 0    39   ~ 0
Vlipo
Text Label 950  1000 2    39   ~ 0
ALERT
Text Label 2850 4450 2    39   ~ 0
ALERT
$Comp
L LED_Small D3
U 1 1 590A96D2
P 5250 5050
F 0 "D3" H 5100 5100 39  0000 L CNN
F 1 "Vcc1" H 5300 5150 39  0000 L CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 5250 5050 50  0001 C CNN
F 3 "" V 5250 5050 50  0000 C CNN
F 4 "LNJ347W83RA" H 5250 5050 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" H 5250 5050 60  0001 C CNN "Manu_Name"
F 6 "LNJ347W83RACT-ND" H 5250 5050 60  0001 C CNN "Digikey_Number"
	1    5250 5050
	-1   0    0    1   
$EndComp
Text Label 950  1300 2    39   ~ 0
ISEL
Text Label 4050 3550 0    39   ~ 0
ISEL
Text Label 950  1100 2    39   ~ 0
~2V5
Text Label 950  1200 2    39   ~ 0
~SHUTDOWN
Text Label 6550 1750 0    39   ~ 0
I2C_SCL_LV
Text Label 5950 2050 2    39   ~ 0
Vbatt
Text Label 5950 1250 2    39   ~ 0
CPLD_OE
Text Label 6550 1250 0    39   ~ 0
~CPLD_RESET
Text Label 6550 2050 0    39   ~ 0
Vbatt
Text Label 5950 1850 2    39   ~ 0
I2C_SDA_LV
Text Label 6550 1450 0    39   ~ 0
CPLD_GPIO_0
Text Label 5950 1650 2    39   ~ 0
SPI1_MISO
Text Label 5950 1950 2    39   ~ 0
~REQ
Text Label 5950 1450 2    39   ~ 0
SPI2_MOSI
Text Label 6550 1650 0    39   ~ 0
IRQ_WAKEUP
Text Label 6550 950  0    39   ~ 0
CPLD_EXT_CLK
Text Label 6550 1550 0    39   ~ 0
SPI1_MOSI
Text Label 5950 1550 2    39   ~ 0
SPI1_CLK
Text Label 5950 1350 2    39   ~ 0
SPI2_CLK
Text Label 6550 1350 0    39   ~ 0
SPI2_CS
Text Label 5950 950  2    39   ~ 0
SPI1_CS_0
Text Label 6550 1850 0    39   ~ 0
~LED_INT
Text Label 5950 1750 2    39   ~ 0
~LED_RESET
Text Label 6550 2350 0    39   ~ 0
GND
Text Label 6550 2450 0    39   ~ 0
GND
Text Label 5950 2350 2    39   ~ 0
GND
Text Label 5950 2450 2    39   ~ 0
GND
NoConn ~ 6550 1950
$Comp
L CONN_02X16 P2
U 1 1 590B4E3D
P 6250 1700
F 0 "P2" H 6250 2550 50  0000 C CNN
F 1 "Sensor Socket" V 6250 1700 50  0000 C CNN
F 2 "r2Parts:DF12(3.0)-32DS-0.5V(86)" H 6250 800 39  0000 C CNN
F 3 "" H 6250 600 50  0000 C CNN
F 4 "DF12(4.0)-32DP-0.5V(86)" H 6250 850 39  0001 C CNN "Manu_Number"
F 5 "Hirose Electric Co Ltd" H 6250 1700 39  0001 C CNN "Manu_Name"
F 6 "H11708TR-ND" H 6250 1700 39  0001 C CNN "Digikey_Number"
	1    6250 1700
	-1   0    0    1   
$EndComp
NoConn ~ 5950 2150
NoConn ~ 6550 2250
Text Label 950  3550 2    39   ~ 0
SPI2_CS
Text Label 950  2300 2    39   ~ 0
~LED_INT
Text Label 4050 3850 0    39   ~ 0
GND
Text Label 950  3850 2    39   ~ 0
CPLD_OE
Text Label 950  4150 2    39   ~ 0
~REQ
Text Label 950  3450 2    39   ~ 0
SPI2_MOSI
Text Label 950  3650 2    39   ~ 0
SPI2_CLK
Text Label 950  2200 2    39   ~ 0
~LED_RESET
Text Label 6550 2150 0    39   ~ 0
VCC1
Text Label 950  2100 2    39   ~ 0
I2C_SCL_LV
Text Label 950  2000 2    39   ~ 0
I2C_SDA_LV
Text Label 950  3250 2    39   ~ 0
SPI1_MOSI
Text Label 950  3150 2    39   ~ 0
SPI1_MISO
Text Label 950  3350 2    39   ~ 0
SPI1_CLK
Text Label 950  4050 2    39   ~ 0
SPI1_CS_0
Text Label 950  3750 2    39   ~ 0
~CPLD_RESET
Text Label 950  3050 2    39   ~ 0
IRQ_WAKEUP
Text Label 950  3950 2    39   ~ 0
CPLD_EXT_CLK
Text Label 4050 4250 0    39   ~ 0
~SHUTDOWN
Text Label 4050 3650 0    39   ~ 0
VCCUSB
$Comp
L EMIF02-USB03F2 U1
U 1 1 590E1F8E
P 6150 3600
F 0 "U1" H 5950 3700 60  0000 C CNN
F 1 "EMIF02-USB03F2" H 5950 3450 60  0000 C CNN
F 2 "r2Parts:FCBGA12" H 5950 4300 60  0001 C CNN
F 3 "" H 6150 3600 60  0000 C CNN
F 4 "EMIF02-USB03F2" H 6150 3600 60  0001 C CNN "Manu_Number"
F 5 "STMicroelectronics" H 6150 3600 60  0001 C CNN "Manu_Name"
F 6 "497-13521-1-ND" H 6150 3600 60  0001 C CNN "Digikey_Number"
	1    6150 3600
	-1   0    0    -1  
$EndComp
NoConn ~ 6950 3350
NoConn ~ 6950 3550
NoConn ~ 6950 3450
Text Label 7000 3150 0    39   ~ 0
USB_D-
Text Label 7000 3050 0    39   ~ 0
USB_D+
Text Label 6600 3950 0    39   ~ 0
USB_D-
Text Label 6600 4050 0    39   ~ 0
USB_D+
Text Label 1800 4350 0    39   ~ 0
VCC0
Text Label 950  4350 2    39   ~ 0
VCC1
Text Label 1800 1700 0    39   ~ 0
Vbatt
Text Label 1050 6300 1    39   ~ 0
GND
$Comp
L GND #PWR01
U 1 1 59110AC7
P 1050 6450
F 0 "#PWR01" H 1050 6200 50  0001 C CNN
F 1 "GND" H 1050 6300 50  0000 C CNN
F 2 "" H 1050 6450 50  0000 C CNN
F 3 "" H 1050 6450 50  0000 C CNN
	1    1050 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58FE1622
P 5500 4350
F 0 "#PWR02" H 5500 4100 50  0001 C CNN
F 1 "GND" H 5500 4200 50  0000 C CNN
F 2 "" H 5500 4350 50  0000 C CNN
F 3 "" H 5500 4350 50  0000 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
Text Label 2000 5350 0    39   ~ 0
GND
Text Label 2000 5450 0    39   ~ 0
VCC1
Text Label 1400 5750 2    39   ~ 0
TDI
Text Label 1400 5450 2    39   ~ 0
TDO
Text Label 1400 5350 2    39   ~ 0
TCK
Text Label 5950 1150 2    39   ~ 0
TCK
Text Label 6550 1150 0    39   ~ 0
TMS
Text Label 5950 1050 2    39   ~ 0
TDI
Text Label 6550 1050 0    39   ~ 0
TDO
Text Label 3850 4800 0    39   ~ 0
GND
Text Label 1800 4250 0    39   ~ 0
~SHUTDOWN
Text Label 1800 2100 0    39   ~ 0
VCC0
Text Label 1800 1000 0    39   ~ 0
GND
Text Label 4050 3450 0    39   ~ 0
I2C_SDA
Text Label 4050 3350 0    39   ~ 0
I2C_SCL
Text Label 4050 4450 0    39   ~ 0
CHIP_PU
Text Label 4050 4350 0    39   ~ 0
PIN_0
Text Label 6600 5200 0    39   ~ 0
CHIP_PU
Text Label 6600 4900 0    39   ~ 0
PIN_0
$Comp
L HiRose-02X15 P1
U 1 1 5916BCB4
P 3750 3750
F 0 "P1" H 3750 4550 50  0000 C CNN
F 1 "Compute Socket" V 3750 3750 50  0000 C CNN
F 2 "r2Parts:DF12(4.0)-30DS-0.5V(86)" V 3700 3750 50  0000 C CNN
F 3 "" H 3750 2600 50  0000 C CNN
F 4 "DF12(4.0)-30DP-0.5V(86)" H 3750 3750 60  0001 C CNN "Manu_Number"
F 5 "Hirose Electric Co Ltd" H 3750 3750 60  0001 C CNN "Manu_Name"
F 6 "H5238CT-ND" H 3750 3750 60  0001 C CNN "Digikey_Num"
	1    3750 3750
	-1   0    0    -1  
$EndComp
Text Label 4050 3750 0    39   ~ 0
GND
Text Label 4050 4050 0    39   ~ 0
VCC0
Text Label 3550 1650 2    39   ~ 0
~LED_INT
Text Label 4050 3250 0    39   ~ 0
GND
Text Label 4050 4150 0    39   ~ 0
GND
$Comp
L R R4
U 1 1 5936A287
P 1700 5100
F 0 "R4" V 1780 5100 50  0000 C CNN
F 1 "1k" V 1700 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 1630 5100 50  0001 C CNN
F 3 "" H 1700 5100 50  0000 C CNN
F 4 "ERJ-2RKF1001X" V 1700 5100 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 1700 5100 60  0001 C CNN "Manu_Name"
F 6 "P1.00KLCT-ND" V 1700 5100 60  0001 C CNN "Digikey_Number"
	1    1700 5100
	0    1    -1   0   
$EndComp
Text Label 1400 5550 2    39   ~ 0
TMS
Text Label 1500 5100 2    39   ~ 0
TCK
Text Label 1900 5100 0    39   ~ 0
GND
Text Label 1450 6300 2    39   ~ 0
GND
$Comp
L C C1
U 1 1 59B38686
P 5500 4000
F 0 "C1" H 5525 4100 50  0000 L CNN
F 1 "10uF" H 5525 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 5538 3850 50  0001 C CNN
F 3 "" H 5500 4000 50  0000 C CNN
F 4 "490-3340-1-ND" H 5500 4000 60  0001 C CNN "Manu_Number"
F 5 "Murata Electronics North America" H 5500 4000 60  0001 C CNN "Manu_Name"
F 6 "490-3340-1-ND" H 5500 4000 60  0001 C CNN "Digikey_Number"
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59B3C0DB
P 4950 5050
F 0 "R3" V 5030 5050 50  0000 C CNN
F 1 "1k" V 4950 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 4880 5050 50  0001 C CNN
F 3 "" H 4950 5050 50  0000 C CNN
F 4 "ERJ-2RKF1001X" V 4950 5050 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 4950 5050 60  0001 C CNN "Manu_Name"
F 6 "P1.00KLCT-ND" V 4950 5050 60  0001 C CNN "Digikey_Number"
	1    4950 5050
	0    1    -1   0   
$EndComp
Text Label 7000 3250 0    39   ~ 0
GND
$Comp
L R_Pack04 RP1
U 1 1 59B357DE
P 6350 4150
F 0 "RP1" V 6050 4150 50  0000 C CNN
F 1 "22" V 6550 4150 50  0000 C CNN
F 2 "r2Parts:RES_4_EXBN8V" V 6625 4150 50  0001 C CNN
F 3 "" H 6350 4150 50  0001 C CNN
F 4 "EXB-N8V220JX" V 6350 4150 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 6350 4150 60  0001 C CNN "Manu_Name"
F 6 "Y10220CT-ND" V 6350 4150 60  0001 C CNN "Digikey_Number"
	1    6350 4150
	0    1    1    0   
$EndComp
Text Label 6450 4400 0    39   ~ 0
GND
$Comp
L CONN_01X05 J1
U 1 1 59C0B91F
P 1200 1200
F 0 "J1" H 1200 900 50  0000 C CNN
F 1 "CONN_01X05" V 1300 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1200 1200 50  0001 C CNN
F 3 "" H 1200 1200 50  0001 C CNN
	1    1200 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 J2
U 1 1 59C0BA6D
P 1200 1950
F 0 "J2" V 1300 2300 50  0000 C CNN
F 1 "CONN_01X08" V 1300 1950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1200 1950 50  0001 C CNN
F 3 "" H 1200 1950 50  0001 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 59C0BADC
P 1550 1050
F 0 "J4" H 1550 1200 50  0000 C CNN
F 1 "CONN_01X02" V 1650 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1550 1050 50  0001 C CNN
F 3 "" H 1550 1050 50  0001 C CNN
	1    1550 1050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X08 J5
U 1 1 59C0BB8A
P 1550 1950
F 0 "J5" V 1650 1600 50  0000 C CNN
F 1 "CONN_01X08" V 1650 1950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1550 1950 50  0001 C CNN
F 3 "" H 1550 1950 50  0001 C CNN
	1    1550 1950
	-1   0    0    1   
$EndComp
Text Label 1800 2000 0    39   ~ 0
GND
Text Label 1800 2200 0    39   ~ 0
GND
Text Label 1800 1800 0    39   ~ 0
GND
Text Label 1800 1600 0    39   ~ 0
GND
Text Label 950  1900 2    39   ~ 0
~LED_INT_HV
Text Label 950  1800 2    39   ~ 0
~LED_RESET_HV
Text Notes 950  850  0    60   ~ 0
PMU Board socket
Text Label 2850 4250 2    39   ~ 0
~LED_INT_HV
Text Label 2850 4350 2    39   ~ 0
~LED_RESET_HV
$Comp
L CONN_02X05 J8
U 1 1 59C13C43
P 1700 5550
F 0 "J8" H 1700 5850 50  0000 C CNN
F 1 "JTAG" H 1700 5250 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_10pins" H 1700 4350 50  0001 C CNN
F 3 "" H 1700 4350 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW4
U 1 1 59C156DC
P 6350 5200
F 0 "SW4" H 6400 5300 50  0000 L CNN
F 1 "CHIP_PU" H 6350 5140 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_Panasonic_EVQPL_3PL_5PL_PT_A15" H 6350 5400 50  0001 C CNN
F 3 "" H 6350 5400 50  0001 C CNN
	1    6350 5200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J7
U 1 1 59C16232
P 2800 1050
F 0 "J7" H 2800 1200 50  0000 C CNN
F 1 "Li-Po" V 2900 1050 50  0000 C CNN
F 2 "r2Parts:JST-Battery-Right-Angle" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0001 C CNN
F 4 "JST Sales America Inc." H 2800 1050 60  0001 C CNN "ManuName"
F 5 "455-1749-6-ND" H 2800 1050 60  0001 C CNN "DigikeyNum"
F 6 "S2B-PH-SM4-TB(LF)(SN)" H 2800 1050 60  0001 C CNN "ManuNum"
	1    2800 1050
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D2
U 1 1 59C172EA
P 5250 4850
F 0 "D2" H 5100 4900 39  0000 L CNN
F 1 "Vcc0" H 5300 4950 39  0000 L CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 5250 4850 50  0001 C CNN
F 3 "" V 5250 4850 50  0000 C CNN
F 4 "LNJ347W83RA" H 5250 4850 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" H 5250 4850 60  0001 C CNN "Manu_Name"
F 6 "LNJ347W83RACT-ND" H 5250 4850 60  0001 C CNN "Digikey_Number"
	1    5250 4850
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 59C172F6
P 4950 4850
F 0 "R2" V 5030 4850 50  0000 C CNN
F 1 "1k" V 4950 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 4880 4850 50  0001 C CNN
F 3 "" H 4950 4850 50  0000 C CNN
F 4 "ERJ-2RKF1001X" V 4950 4850 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 4950 4850 60  0001 C CNN "Manu_Name"
F 6 "P1.00KLCT-ND" V 4950 4850 60  0001 C CNN "Digikey_Number"
	1    4950 4850
	0    1    -1   0   
$EndComp
Text Label 4750 5050 2    39   ~ 0
VCC1
Text Label 4750 4850 2    39   ~ 0
VCC0
Text Label 6050 5200 2    39   ~ 0
GND
$Comp
L LED_Small D1
U 1 1 59C17BFE
P 5250 5250
F 0 "D1" H 5100 5300 39  0000 L CNN
F 1 "Charge" H 5250 5350 39  0000 L CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 5250 5250 50  0001 C CNN
F 3 "" V 5250 5250 50  0000 C CNN
F 4 "LNJ347W83RA" H 5250 5250 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" H 5250 5250 60  0001 C CNN "Manu_Name"
F 6 "LNJ347W83RACT-ND" H 5250 5250 60  0001 C CNN "Digikey_Number"
	1    5250 5250
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 59C17C09
P 4950 5250
F 0 "R1" V 5030 5250 50  0000 C CNN
F 1 "1k" V 4950 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 4880 5250 50  0001 C CNN
F 3 "" H 4950 5250 50  0000 C CNN
F 4 "ERJ-2RKF1001X" V 4950 5250 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 4950 5250 60  0001 C CNN "Manu_Name"
F 6 "P1.00KLCT-ND" V 4950 5250 60  0001 C CNN "Digikey_Number"
	1    4950 5250
	0    1    -1   0   
$EndComp
Text Label 950  1400 2    39   ~ 0
PMU_STAT
Text Label 5400 5250 0    39   ~ 0
PMU_STAT
Text Label 3000 2000 2    39   ~ 0
CPLD_GPIO_0
Text Label 4200 2000 0    39   ~ 0
~2V5
Text Label 3600 1100 1    39   ~ 0
VCC1
Text Label 2000 5750 0    39   ~ 0
GND
NoConn ~ 1450 5650
NoConn ~ 1950 5650
NoConn ~ 1950 5550
$Comp
L SW_Push SW3
U 1 1 59C1BBC7
P 6350 4900
F 0 "SW3" H 6400 5000 50  0000 L CNN
F 1 "Pin_0" H 6350 4840 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_Panasonic_EVQPL_3PL_5PL_PT_A15" H 6350 5100 50  0001 C CNN
F 3 "" H 6350 5100 50  0001 C CNN
	1    6350 4900
	1    0    0    -1  
$EndComp
Text Label 4750 5250 2    39   ~ 0
VCCUSB
$Comp
L CONN_01X14 J6
U 1 1 59D4B370
P 1550 3700
F 0 "J6" V 1650 4250 50  0000 C CNN
F 1 "CONN_01X14" V 1650 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 1550 3700 50  0001 C CNN
F 3 "" H 1550 3700 50  0001 C CNN
	1    1550 3700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X14 J3
U 1 1 59D4B439
P 1200 3700
F 0 "J3" V 1300 4250 50  0000 C CNN
F 1 "CONN_01X14" V 1300 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 1200 3700 50  0001 C CNN
F 3 "" H 1200 3700 50  0001 C CNN
	1    1200 3700
	1    0    0    1   
$EndComp
Text Notes 1850 4550 2    60   ~ 0
Level-shifter socket
Text Label 950  4250 2    39   ~ 0
GND
Text Notes 3200 6350 0    118  ~ 0
NOTE: This design assumes that the \nsystem half of the voltage regulator\nis always running at 3.3v.
Text Label 6050 4900 2    39   ~ 0
GND
$Comp
L R_Pack04 RP2
U 1 1 59EDB036
P 3700 1400
F 0 "RP2" V 3400 1400 50  0000 C CNN
F 1 "10k" V 3900 1400 50  0000 C CNN
F 2 "r2Parts:RES_4_EXBN8V" V 3975 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
F 4 "EXB-N8V220JX" V 3700 1400 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" V 3700 1400 60  0001 C CNN "Manu_Name"
F 6 "Y10220CT-ND" V 3700 1400 60  0001 C CNN "Digikey_Number"
	1    3700 1400
	-1   0    0    1   
$EndComp
Text Label 3650 2300 0    39   ~ 0
GND
Text Label 3000 2300 2    39   ~ 0
LED_GND
Text Label 5500 5050 0    39   ~ 0
LED_GND
Wire Wire Line
	4600 4250 5650 4250
Wire Wire Line
	5650 4250 5650 3650
Wire Wire Line
	5450 3650 5800 3650
Wire Wire Line
	4700 4150 4700 4250
Connection ~ 4700 4250
Wire Wire Line
	4800 4150 4800 4250
Connection ~ 4800 4250
Wire Wire Line
	4900 4150 4900 4250
Connection ~ 4900 4250
Wire Wire Line
	5000 4150 5000 4250
Connection ~ 5000 4250
Wire Wire Line
	5100 4150 5100 4250
Connection ~ 5100 4250
Wire Wire Line
	5200 4150 5200 4250
Connection ~ 5200 4250
Wire Wire Line
	5100 5050 5150 5050
Wire Wire Line
	4800 5050 4750 5050
Wire Wire Line
	5950 2150 6000 2150
Wire Wire Line
	5950 1750 6000 1750
Wire Wire Line
	5950 1850 6000 1850
Wire Wire Line
	5950 1950 6000 1950
Wire Wire Line
	5950 2050 6000 2050
Wire Wire Line
	5950 2250 6000 2250
Wire Wire Line
	5950 2350 6000 2350
Wire Wire Line
	5950 2450 6000 2450
Wire Wire Line
	5950 1450 6000 1450
Wire Wire Line
	5950 950  6000 950 
Wire Wire Line
	5950 1050 6000 1050
Wire Wire Line
	5950 1150 6000 1150
Wire Wire Line
	5950 1250 6000 1250
Wire Wire Line
	5950 1350 6000 1350
Wire Wire Line
	5950 1550 6000 1550
Wire Wire Line
	5950 1650 6000 1650
Wire Wire Line
	6500 1750 6550 1750
Wire Wire Line
	6500 1850 6550 1850
Wire Wire Line
	6500 1950 6550 1950
Wire Wire Line
	6500 2050 6550 2050
Wire Wire Line
	6500 2150 6550 2150
Wire Wire Line
	6500 2250 6550 2250
Wire Wire Line
	6500 2450 6550 2450
Wire Wire Line
	6500 1450 6550 1450
Wire Wire Line
	6500 950  6550 950 
Wire Wire Line
	6500 1050 6550 1050
Wire Wire Line
	6500 1150 6550 1150
Wire Wire Line
	6500 1250 6550 1250
Wire Wire Line
	6500 1350 6550 1350
Wire Wire Line
	6500 1550 6550 1550
Wire Wire Line
	6500 1650 6550 1650
Wire Wire Line
	6500 2350 6550 2350
Wire Wire Line
	950  3750 1000 3750
Wire Wire Line
	950  3650 1000 3650
Wire Wire Line
	950  3550 1000 3550
Wire Wire Line
	1000 3450 950  3450
Wire Wire Line
	950  3850 1000 3850
Wire Wire Line
	950  3950 1000 3950
Wire Wire Line
	1000 4050 950  4050
Wire Wire Line
	1000 4150 950  4150
Wire Wire Line
	950  3350 1000 3350
Wire Wire Line
	950  3250 1000 3250
Wire Wire Line
	950  3150 1000 3150
Wire Wire Line
	950  3050 1000 3050
Wire Wire Line
	5450 3050 5800 3050
Wire Wire Line
	5450 3200 5800 3200
Wire Wire Line
	5450 3350 5800 3350
Wire Wire Line
	5800 3500 5450 3500
Connection ~ 5650 3650
Wire Wire Line
	6950 3050 7000 3050
Wire Wire Line
	7000 3150 6950 3150
Wire Wire Line
	5700 3350 5700 4050
Connection ~ 5700 3350
Connection ~ 5750 3200
Wire Wire Line
	6550 3950 6600 3950
Wire Wire Line
	6550 4050 6600 4050
Wire Wire Line
	5700 4050 6150 4050
Wire Wire Line
	6150 3950 5750 3950
Wire Wire Line
	5750 3950 5750 3200
Wire Wire Line
	5500 4150 5500 4350
Connection ~ 5500 4250
Wire Wire Line
	5500 3850 5500 3050
Connection ~ 5500 3050
Wire Wire Line
	1050 6300 1050 6450
Wire Wire Line
	4600 4150 4600 4250
Wire Wire Line
	4000 4450 4050 4450
Wire Wire Line
	4000 4350 4050 4350
Wire Wire Line
	4000 3650 4050 3650
Wire Wire Line
	4000 3150 4050 3150
Wire Wire Line
	4000 3050 4050 3050
Wire Wire Line
	4000 4250 4050 4250
Wire Wire Line
	4000 3950 4050 3950
Wire Wire Line
	4000 3550 4050 3550
Wire Wire Line
	4050 3450 4000 3450
Wire Wire Line
	4000 3250 4050 3250
Wire Wire Line
	4050 3350 4000 3350
Wire Wire Line
	4000 4150 4050 4150
Wire Wire Line
	4050 4050 4000 4050
Wire Wire Line
	4050 3850 4000 3850
Wire Wire Line
	4050 3750 4000 3750
Wire Wire Line
	3700 4800 3700 4700
Wire Wire Line
	3800 4800 3800 4700
Connection ~ 3800 4800
Wire Wire Line
	2850 4450 2900 4450
Wire Wire Line
	1550 5100 1500 5100
Wire Wire Line
	1900 5100 1850 5100
Wire Wire Line
	1450 6300 1500 6300
Wire Wire Line
	6950 3250 7000 3250
Wire Wire Line
	6150 4150 6100 4150
Wire Wire Line
	6100 4150 6100 4400
Wire Wire Line
	6100 4250 6150 4250
Wire Wire Line
	6100 4400 6600 4400
Wire Wire Line
	6600 4400 6600 4150
Wire Wire Line
	6600 4150 6550 4150
Connection ~ 6100 4250
Wire Wire Line
	6550 4250 6600 4250
Connection ~ 6600 4250
Wire Wire Line
	1750 1000 2600 1000
Wire Wire Line
	1750 1100 2250 1100
Wire Wire Line
	1750 1600 1800 1600
Wire Wire Line
	1750 1700 1800 1700
Wire Wire Line
	1750 1800 1800 1800
Wire Wire Line
	1750 1900 1800 1900
Wire Wire Line
	1750 2000 1800 2000
Wire Wire Line
	1750 2100 1800 2100
Wire Wire Line
	1750 2200 1800 2200
Wire Wire Line
	1750 2300 1800 2300
Wire Wire Line
	950  1000 1000 1000
Wire Wire Line
	950  1100 1000 1100
Wire Wire Line
	950  1200 1000 1200
Wire Wire Line
	950  1300 1000 1300
Wire Wire Line
	950  1400 1000 1400
Wire Wire Line
	950  1600 1000 1600
Wire Wire Line
	950  1700 1000 1700
Wire Wire Line
	950  1800 1000 1800
Wire Wire Line
	950  1900 1000 1900
Wire Wire Line
	950  2000 1000 2000
Wire Wire Line
	950  2100 1000 2100
Wire Wire Line
	950  2200 1000 2200
Wire Wire Line
	950  2300 1000 2300
Wire Notes Line
	1000 900  1750 900 
Wire Notes Line
	1750 900  1750 2400
Wire Notes Line
	1750 2400 1000 2400
Wire Notes Line
	1000 2400 1000 900 
Wire Wire Line
	2350 1200 2500 1200
Wire Wire Line
	2500 1200 2500 1100
Wire Wire Line
	2500 1100 2600 1100
Wire Wire Line
	5100 4850 5150 4850
Wire Wire Line
	4800 4850 4750 4850
Wire Wire Line
	5100 5250 5150 5250
Wire Wire Line
	4800 5250 4750 5250
Wire Wire Line
	6050 4900 6150 4900
Wire Wire Line
	2000 5350 1950 5350
Wire Wire Line
	1950 5450 2000 5450
Wire Wire Line
	2000 5750 1950 5750
Wire Wire Line
	1450 5350 1400 5350
Wire Wire Line
	1400 5450 1450 5450
Wire Wire Line
	1450 5550 1400 5550
Wire Wire Line
	1400 5750 1450 5750
Wire Wire Line
	6600 4900 6550 4900
Wire Wire Line
	6550 5200 6600 5200
Wire Wire Line
	5350 5250 5400 5250
Wire Wire Line
	1000 4250 950  4250
Wire Wire Line
	3700 4800 3850 4800
Wire Wire Line
	1750 4350 1800 4350
Wire Wire Line
	1750 4250 1800 4250
Wire Wire Line
	950  4350 1000 4350
Wire Wire Line
	1750 3050 2900 3050
Wire Wire Line
	1750 3150 2900 3150
Wire Wire Line
	1750 3250 2900 3250
Wire Wire Line
	1750 3350 2900 3350
Wire Wire Line
	1750 3450 2900 3450
Wire Wire Line
	1750 3550 2900 3550
Wire Wire Line
	1750 3650 2900 3650
Wire Wire Line
	1750 3750 2900 3750
Wire Wire Line
	1750 3850 2900 3850
Wire Wire Line
	1750 3950 2900 3950
Wire Wire Line
	1750 4050 2900 4050
Wire Wire Line
	1750 4150 2900 4150
Wire Notes Line
	1000 4450 1750 4450
Wire Notes Line
	1750 4450 1750 2950
Wire Notes Line
	1750 2950 1000 2950
Wire Notes Line
	1000 2950 1000 4450
Wire Wire Line
	6050 5200 6150 5200
Wire Wire Line
	3550 2000 4200 2000
Wire Wire Line
	3600 1100 3600 1200
Wire Wire Line
	3000 2000 3050 2000
Wire Wire Line
	3550 2300 3650 2300
Wire Wire Line
	3050 2300 3000 2300
Wire Wire Line
	5350 5050 5500 5050
Wire Wire Line
	5350 4850 5400 4850
Wire Wire Line
	5400 4850 5400 5050
Connection ~ 5400 5050
Wire Wire Line
	3700 1600 3700 2000
Connection ~ 3700 2000
Wire Wire Line
	3600 1150 3700 1150
Wire Wire Line
	3700 1150 3700 1200
Connection ~ 3600 1150
Wire Wire Line
	3550 1650 3600 1650
Wire Wire Line
	3600 1650 3600 1600
Text Label 3000 2100 2    39   ~ 0
~SHUTDOWN
Wire Wire Line
	3050 2100 3000 2100
Text Label 3000 2200 2    39   ~ 0
ISEL
Wire Wire Line
	3000 2200 3050 2200
Wire Wire Line
	3550 2200 3900 2200
Wire Wire Line
	3900 2200 3900 1600
Wire Wire Line
	3800 1600 3800 2100
Wire Wire Line
	3800 2100 3550 2100
Wire Wire Line
	3800 1200 3800 1150
Wire Wire Line
	3800 1150 3900 1150
Wire Wire Line
	3900 1100 3900 1200
Connection ~ 3900 1150
Text Label 3900 1100 1    39   ~ 0
VCC0
Wire Wire Line
	3400 3050 3500 3050
Wire Wire Line
	3400 3150 3500 3150
Wire Wire Line
	3400 3250 3500 3250
Wire Wire Line
	3400 3350 3500 3350
Wire Wire Line
	3400 3450 3500 3450
Wire Wire Line
	3400 3550 3500 3550
Wire Wire Line
	3400 3650 3500 3650
Wire Wire Line
	3400 3750 3500 3750
Wire Wire Line
	3400 3850 3500 3850
Wire Wire Line
	3400 3950 3500 3950
Wire Wire Line
	3400 4050 3500 4050
Wire Wire Line
	3400 4150 3500 4150
Wire Wire Line
	3400 4250 3500 4250
Wire Wire Line
	3400 4350 3500 4350
Wire Wire Line
	3400 4450 3500 4450
$Comp
L CONN_01X01 P4
U 1 1 59EE944A
P 1700 6650
F 0 "P4" H 1700 6750 50  0000 C CNN
F 1 "CONN_01X01" V 1800 6650 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 1700 6550 50  0000 C CNN
F 3 "" H 1700 6650 50  0000 C CNN
	1    1700 6650
	1    0    0    -1  
$EndComp
Text Label 1450 6650 2    39   ~ 0
GND
Wire Wire Line
	1450 6650 1500 6650
$Comp
L CONN_02X15 J9
U 1 1 59EE8566
P 3150 3750
F 0 "J9" H 3150 4550 50  0000 C CNN
F 1 "CONN_02X15" V 3150 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x15_Pitch2.54mm" H 3150 2600 50  0001 C CNN
F 3 "" H 3150 2600 50  0001 C CNN
	1    3150 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 4250 2900 4250
Wire Wire Line
	2900 4350 2850 4350
$Comp
L CONN_01X02 J10
U 1 1 59EF9994
P 2300 1400
F 0 "J10" H 2300 1550 50  0000 C CNN
F 1 "Battery SW" V 2400 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1100 2250 1200
$Comp
L CONN_02X04 J11
U 1 1 59EFBA74
P 3300 2150
F 0 "J11" H 3300 2400 50  0000 C CNN
F 1 "OPTS" H 3300 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 3300 950 50  0001 C CNN
F 3 "" H 3300 950 50  0001 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
