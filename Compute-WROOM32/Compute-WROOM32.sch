EESchema Schematic File Version 4
LIBS:Compute-WROOM32-cache
EELAYER 26 0
EELAYER END
$Descr User 9449 7087
encoding utf-8
Sheet 1 1
Title "WROOM32 Compute PCB"
Date "2018-12-29"
Rev "2"
Comp "Manuvr, Inc"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1500 4300 2    39   ~ 0
IRQ_WAKEUP
Text Label 3450 4700 0    39   ~ 0
CPLD_EXT_CLK
Text Label 1500 4200 2    39   ~ 0
SPI2_CS
Text Label 3450 4300 0    39   ~ 0
~LED_INT
Text Label 1500 4600 2    39   ~ 0
I2C_SDA
Text Label 1500 4400 2    39   ~ 0
SPI2_MOSI
Text Label 1500 4100 2    39   ~ 0
SPI2_CLK
Text Label 3450 4500 0    39   ~ 0
~LED_RESET
Text Label 1500 3800 2    39   ~ 0
CHIP_PU
Text Label 1500 4800 2    39   ~ 0
SPI1_MOSI
Text Label 3450 4800 0    39   ~ 0
CPLD_OE
Text Label 1500 4500 2    39   ~ 0
SPI1_MISO
Text Label 3450 4400 0    39   ~ 0
~REQ
Text Label 2150 5450 3    39   ~ 0
SPI1_CLK
Text Label 3450 4600 0    39   ~ 0
SPI1_CS
Text Label 3450 4000 0    39   ~ 0
TxD
Text Label 3450 3900 0    39   ~ 0
RxD
Text Label 3450 4900 0    39   ~ 0
PIN_0
Text Label 1500 4700 2    39   ~ 0
I2C_SCL
Text Label 2950 5450 3    39   ~ 0
~CPLD_RESET
Text Label 1500 4900 2    39   ~ 0
~SHUTDOWN
Text Label 1500 3700 2    39   ~ 0
VCC0
Text Label 3450 3800 0    39   ~ 0
FTDI_RESET
Text Label 7650 3200 2    39   ~ 0
PIN_0
Text Label 2050 5400 3    39   ~ 0
GND
Text Label 3450 3600 0    39   ~ 0
GND
Text Label 1450 3500 2    39   ~ 0
GND
Text Label 7650 3500 2    39   ~ 0
VCC0
Text Label 7650 4500 2    39   ~ 0
USB_D-
Text Label 7650 4400 2    39   ~ 0
USB_D+
Text Label 8250 3100 0    39   ~ 0
ALERT
Text Label 7650 4000 2    39   ~ 0
ISEL
Text Label 8250 4000 0    39   ~ 0
SPI2_CS
Text Label 8250 3300 0    39   ~ 0
~LED_INT
Text Label 7650 3400 2    39   ~ 0
GND
Text Label 8250 3700 0    39   ~ 0
CPLD_OE
Text Label 8250 3400 0    39   ~ 0
~REQ
Text Label 8250 4100 0    39   ~ 0
SPI2_MOSI
Text Label 8250 3900 0    39   ~ 0
SPI2_CLK
Text Label 8250 3200 0    39   ~ 0
~LED_RESET
Text Label 7650 4100 2    39   ~ 0
I2C_SDA
Text Label 8250 4300 0    39   ~ 0
SPI1_MOSI
Text Label 8250 4400 0    39   ~ 0
SPI1_MISO
Text Label 8250 4200 0    39   ~ 0
SPI1_CLK
Text Label 8250 3500 0    39   ~ 0
SPI1_CS
Text Label 8250 3800 0    39   ~ 0
~CPLD_RESET
Text Label 8250 4500 0    39   ~ 0
IRQ_WAKEUP
Text Label 8250 3600 0    39   ~ 0
CPLD_EXT_CLK
Text Label 7650 3300 2    39   ~ 0
~SHUTDOWN
Text Label 7650 4200 2    39   ~ 0
I2C_SCL
Text Label 6650 4400 1    39   ~ 0
GND
$Comp
L Compute-WROOM32-rescue:GND #PWR01
U 1 1 590EDA85
P 6650 4550
F 0 "#PWR01" H 6650 4300 50  0001 C CNN
F 1 "GND" H 6650 4400 50  0000 C CNN
F 2 "" H 6650 4550 50  0000 C CNN
F 3 "" H 6650 4550 50  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L IansParts:CAPARRAY_4 CARY1
U 1 1 590EF85F
P 5100 3650
F 0 "CARY1" H 5100 3050 60  0000 C CNN
F 1 "100nF" H 5100 4200 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 5100 3650 60  0001 C CNN
F 3 "" H 5100 3650 60  0000 C CNN
F 4 "CKCL44X5R0J104M085AA" H 5100 3650 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 5100 3650 60  0001 C CNN "Manu_Name"
F 6 "445-1838-1-ND" H 5100 3650 60  0001 C CNN "Digikey_Number"
	1    5100 3650
	0    -1   1    0   
$EndComp
Text Label 5650 3950 0    39   ~ 0
GND
Text Label 5650 3350 0    39   ~ 0
VCC0
Text Label 6850 2100 0    39   ~ 0
TxD
Text Label 6850 2200 0    39   ~ 0
RxD
$Comp
L IansParts:QA_NPN QA_NPN1
U 1 1 590F081F
P 8100 1700
F 0 "QA_NPN1" H 8100 1950 39  0000 C CNN
F 1 "QA_NPN" H 8100 1450 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-6_MK06A_HandSoldering" H 8150 1700 60  0001 C CNN
F 3 "" H 8150 1700 60  0000 C CNN
F 4 "PIMN31,115" H 8100 1700 60  0001 C CNN "Manu_Number"
F 5 "Nexperia USA Inc." H 8100 1700 60  0001 C CNN "Manu_Name"
F 6 "1727-5166-1-ND" H 8100 1700 60  0001 C CNN "Digikey_Number"
	1    8100 1700
	1    0    0    -1  
$EndComp
Text Label 8500 1550 0    39   ~ 0
PIN_0
Text Label 7700 1550 2    39   ~ 0
CHIP_PU
$Comp
L Compute-WROOM32-rescue:C C6
U 1 1 590F0820
P 5350 1150
F 0 "C6" H 5375 1250 50  0000 L CNN
F 1 "0.1uF" H 5375 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 5388 1000 50  0001 C CNN
F 3 "" H 5350 1150 50  0000 C CNN
F 4 "CL05B104JP5NNNC" H 5350 1150 60  0001 C CNN "Manu_Number"
F 5 "Samsung Electro-Mechanics America, Inc" H 5350 1150 60  0001 C CNN "Manu_Name"
F 6 "1276-1506-1-ND" H 5350 1150 60  0001 C CNN "Digikey_Number"
	1    5350 1150
	1    0    0    -1  
$EndComp
$Comp
L Compute-WROOM32-rescue:C C3
U 1 1 590F0821
P 4750 1150
F 0 "C3" H 4775 1250 50  0000 L CNN
F 1 "4.7uF" H 4775 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 4788 1000 50  0001 C CNN
F 3 "" H 4750 1150 50  0000 C CNN
F 4 "C1005X5R0J475K050BC" H 4750 1150 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 4750 1150 60  0001 C CNN "Manu_Name"
F 6 "445-5947-1-ND" H 4750 1150 60  0001 C CNN "Digikey_Number"
	1    4750 1150
	1    0    0    -1  
$EndComp
Text Label 6850 2400 0    39   ~ 0
FTDI_RESET
$Comp
L Compute-WROOM32-rescue:C C5
U 1 1 590F0823
P 5000 1150
F 0 "C5" H 5025 1250 50  0000 L CNN
F 1 "0.1uF" H 5025 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 5038 1000 50  0001 C CNN
F 3 "" H 5000 1150 50  0000 C CNN
F 4 "CL05B104JP5NNNC" H 5000 1150 60  0001 C CNN "Manu_Number"
F 5 "Samsung Electro-Mechanics America, Inc" H 5000 1150 60  0001 C CNN "Manu_Name"
F 6 "1276-1506-1-ND" H 5000 1150 60  0001 C CNN "Digikey_Number"
	1    5000 1150
	1    0    0    -1  
$EndComp
Text Label 4450 900  2    39   ~ 0
VCCUSB
$Comp
L Compute-WROOM32-rescue:C C1
U 1 1 590F0826
P 4500 1150
F 0 "C1" H 4525 1250 50  0000 L CNN
F 1 "10nF" H 4525 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 4538 1000 50  0001 C CNN
F 3 "" H 4500 1150 50  0000 C CNN
F 4 "C0402C103J3RACTU" H 4500 1150 60  0001 C CNN "Manu_Number"
F 5 "Kemet" H 4500 1150 60  0001 C CNN "Manu_Name"
F 6 "399-1279-1-ND" H 4500 1150 60  0001 C CNN "Digikey_Number"
	1    4500 1150
	1    0    0    -1  
$EndComp
NoConn ~ 5550 1850
NoConn ~ 5550 1750
NoConn ~ 5550 1650
NoConn ~ 6800 1900
NoConn ~ 6800 1800
Text Label 4400 2150 2    39   ~ 0
USB_D-
Text Label 4400 2250 2    39   ~ 0
USB_D+
Text Label 5650 2850 0    39   ~ 0
GND
Text Label 3450 4100 0    39   ~ 0
ALERT
Text Label 3450 3700 0    39   ~ 0
ISEL
$Comp
L IansParts:CAPARRAY_4 CARY3
U 1 1 590F4E13
P 2650 1850
F 0 "CARY3" H 2650 1250 60  0000 C CNN
F 1 "100nF" H 2650 2400 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 2650 1850 60  0001 C CNN
F 3 "" H 2650 1850 60  0000 C CNN
F 4 "CKCL44X5R0J104M085AA" H 2650 1850 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 2650 1850 60  0001 C CNN "Manu_Name"
F 6 "445-1838-1-ND" H 2650 1850 60  0001 C CNN "Digikey_Number"
	1    2650 1850
	-1   0    0    -1  
$EndComp
$Comp
L Compute-WROOM32-rescue:R_PACK4 RP1
U 1 1 590F50A7
P 2350 1200
F 0 "RP1" H 2350 1650 50  0000 C CNN
F 1 "15k" H 2350 1150 50  0000 C CNN
F 2 "r2Parts:RES_4_EXBN8V" V 2000 1150 50  0000 C CNN
F 3 "" H 2350 1200 50  0000 C CNN
F 4 "EXB-N8V153JX" H 2350 1200 60  0001 C CNN "Manu_Number"
F 5 "Panasonic Electronic Components" H 2350 1200 60  0001 C CNN "Manu_Name"
F 6 "Y10153CT-ND" H 2350 1200 60  0001 C CNN "Digikey_Number"
	1    2350 1200
	0    -1   1    0   
$EndComp
Text Label 2950 2350 3    39   ~ 0
GND
Text Label 2400 950  0    39   ~ 0
VCC0
Text Label 1900 1500 2    39   ~ 0
PIN_0
Text Label 1900 1750 2    39   ~ 0
CHIP_PU
Text Label 2300 2250 2    39   ~ 0
VCC0
Text Label 4450 1350 2    39   ~ 0
GND
$Comp
L Compute-WROOM32-rescue:CONN_01X01 P4
U 1 1 590EDA5D
P 8000 950
F 0 "P4" H 8000 1050 50  0000 C CNN
F 1 "CONN_01X01" V 8100 950 50  0001 C CNN
F 2 "manuvr_logo:ManuvrLogo" H 8000 850 50  0000 C CNN
F 3 "" H 8000 950 50  0000 C CNN
	1    8000 950 
	1    0    0    -1  
$EndComp
Text Label 7750 950  2    39   ~ 0
GND
Wire Wire Line
	7750 950  7800 950 
Connection ~ 5900 950 
Wire Wire Line
	5900 1050 5900 950 
Wire Wire Line
	6150 950  6150 1050
Wire Wire Line
	5350 950  5900 950 
Wire Wire Line
	6000 900  6000 1050
Connection ~ 4500 1350
Connection ~ 2350 2250
Wire Wire Line
	2350 2000 2350 2250
Wire Wire Line
	2400 2000 2350 2000
Wire Wire Line
	2000 950  2100 950 
Connection ~ 2300 950 
Wire Wire Line
	2300 1000 2300 950 
Wire Wire Line
	2200 950  2200 1000
Wire Wire Line
	2300 2250 2350 2250
Wire Wire Line
	1900 1750 2200 1750
Wire Wire Line
	1900 1500 2300 1500
Connection ~ 2950 2250
Wire Wire Line
	2950 2250 2900 2250
Connection ~ 2950 2000
Wire Wire Line
	2950 2000 2900 2000
Connection ~ 2950 1750
Wire Wire Line
	2900 1750 2950 1750
Wire Wire Line
	2950 1500 2900 1500
Wire Wire Line
	2950 1500 2950 1750
Wire Wire Line
	1500 3700 1550 3700
Wire Wire Line
	2150 5450 2150 5350
Wire Wire Line
	6000 2850 6000 2750
Connection ~ 4500 900 
Wire Wire Line
	4500 1000 4500 900 
Connection ~ 4750 1350
Wire Wire Line
	4750 1350 4750 1300
Wire Wire Line
	4500 1300 4500 1350
Wire Wire Line
	5600 1950 5550 1950
Wire Wire Line
	5600 1850 5550 1850
Wire Wire Line
	5600 1750 5550 1750
Wire Wire Line
	5600 1650 5550 1650
Wire Wire Line
	4750 2850 5000 2850
Connection ~ 5500 2150
Connection ~ 5900 2850
Connection ~ 4750 900 
Connection ~ 5000 1350
Connection ~ 5000 900 
Wire Wire Line
	5000 900  5000 1000
Wire Wire Line
	4450 900  4500 900 
Wire Wire Line
	4750 900  4750 1000
Wire Wire Line
	5000 1350 5000 1300
Wire Wire Line
	4450 1350 4500 1350
Connection ~ 7350 1850
Wire Wire Line
	7350 2000 8550 2000
Wire Wire Line
	6800 2400 6850 2400
Wire Wire Line
	5350 950  5350 1000
Wire Wire Line
	5350 1350 5350 1300
Wire Wire Line
	7350 1850 7750 1850
Wire Wire Line
	6800 1500 7350 1500
Wire Wire Line
	7700 1550 7750 1550
Wire Wire Line
	8450 1550 8500 1550
Wire Wire Line
	8550 2000 8550 1700
Wire Wire Line
	8550 1700 8450 1700
Connection ~ 7300 1700
Wire Wire Line
	8450 1850 8500 1850
Wire Wire Line
	6800 1700 7300 1700
Wire Wire Line
	7300 1950 7300 1700
Wire Wire Line
	8500 1950 7300 1950
Wire Wire Line
	8500 1850 8500 1950
Wire Wire Line
	6800 2200 6850 2200
Wire Wire Line
	6800 2100 6850 2100
Connection ~ 6000 2850
Wire Wire Line
	6100 2850 6100 2750
Wire Wire Line
	5900 2850 5900 2750
Wire Wire Line
	4400 2250 4750 2250
Wire Wire Line
	4400 2150 5250 2150
Connection ~ 5250 3350
Wire Wire Line
	4750 3350 5000 3350
Connection ~ 5000 3350
Wire Wire Line
	5000 3350 5000 3400
Wire Wire Line
	5250 3350 5250 3400
Connection ~ 5500 3350
Wire Wire Line
	5500 3350 5500 3400
Wire Wire Line
	4750 3400 4750 3350
Connection ~ 5500 3950
Wire Wire Line
	5500 3950 5500 3900
Connection ~ 5250 3950
Wire Wire Line
	5250 3950 5250 3900
Connection ~ 5000 3950
Wire Wire Line
	5000 3900 5000 3950
Wire Wire Line
	4750 3950 4750 3900
Wire Wire Line
	4750 3950 5000 3950
Wire Wire Line
	8200 4400 8250 4400
Wire Wire Line
	8200 4500 8250 4500
Wire Wire Line
	6650 4400 6650 4550
Wire Wire Line
	8250 4300 8200 4300
Wire Wire Line
	2950 5350 2950 5450
Wire Wire Line
	3400 4000 3450 4000
Wire Wire Line
	3450 4100 3400 4100
Wire Wire Line
	3450 3600 3400 3600
Wire Wire Line
	2050 5400 2050 5350
Wire Wire Line
	1500 4900 1550 4900
Wire Wire Line
	1500 4400 1550 4400
Wire Wire Line
	3400 3800 3450 3800
Wire Wire Line
	3400 4600 3450 4600
Wire Wire Line
	3400 3700 3450 3700
Wire Wire Line
	3400 4900 3450 4900
Wire Wire Line
	3450 4400 3400 4400
Wire Wire Line
	3400 4800 3450 4800
Wire Wire Line
	3400 4700 3450 4700
Wire Wire Line
	3450 4500 3400 4500
Wire Wire Line
	3450 3900 3400 3900
Wire Wire Line
	1550 4300 1500 4300
Wire Wire Line
	1500 4200 1550 4200
Wire Wire Line
	1500 4100 1550 4100
Text Label 6200 950  0    39   ~ 0
FTDI_RESET
Connection ~ 6150 950 
Wire Wire Line
	7350 1500 7350 1850
NoConn ~ 5550 1950
NoConn ~ 6800 1600
NoConn ~ 6800 1400
$Comp
L IansParts:CAPARRAY_4 CARY4
U 1 1 5914AE0C
P 5100 2550
F 0 "CARY4" H 5100 1950 60  0000 C CNN
F 1 "22pF" H 5100 3100 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 5100 2550 60  0001 C CNN
F 3 "" H 5100 2550 60  0000 C CNN
F 4 "CKCL44C0G1H220K085AA" H 5100 2550 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 5100 2550 60  0001 C CNN "Manu_Name"
F 6 "445-1824-1-ND" H 5100 2550 60  0001 C CNN "Digikey_Number"
	1    5100 2550
	0    -1   -1   0   
$EndComp
$Comp
L IansParts:FT231XS U2
U 1 1 590F0828
P 6150 1800
F 0 "U2" V 6200 1450 60  0000 C CNN
F 1 "FT231XS" V 6300 1850 60  0000 C CNN
F 2 "r2Parts:LFCSP_WQ20" H 6150 1800 60  0001 C CNN
F 3 "" H 6150 1800 60  0001 C CNN
F 4 "FT231XQ-R" V 6150 1800 60  0001 C CNN "Manu_Number"
F 5 "FTDI" V 6150 1800 60  0001 C CNN "Manu_Name"
F 6 "768-1128-1-ND" V 6150 1800 60  0001 C CNN "Digikey_Number"
	1    6150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2850 4750 2800
Wire Wire Line
	5000 2800 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5250 2800 5250 2850
Connection ~ 5250 2850
Wire Wire Line
	5500 2800 5500 2850
Connection ~ 5500 2850
Wire Wire Line
	5250 2300 5250 2150
Connection ~ 5250 2150
Wire Wire Line
	5500 2150 5500 2300
Wire Wire Line
	5000 2300 5000 2250
Connection ~ 5000 2250
Wire Wire Line
	4750 2300 4750 2250
Connection ~ 4750 2250
$Comp
L IansParts:HiRose-02X15 P1
U 1 1 59192722
P 7950 3800
F 0 "P1" H 7950 4600 50  0000 C CNN
F 1 "HiRose-02X15" V 7950 3800 50  0000 C CNN
F 2 "r2Parts:DF12(4.0)-30DS-0.5V(86)" H 7950 2650 50  0000 C CNN
F 3 "" H 7950 2650 50  0000 C CNN
F 4 "DF12-30DS-0.5V(86)" H 7950 3800 60  0001 C CNN "Manu_Number"
F 5 "Hirose Electric Co Ltd" H 7950 3800 60  0001 C CNN "Manu_Name"
F 6 "H5215CT-ND" H 7950 3800 60  0001 C CNN "Digikey_Number"
	1    7950 3800
	-1   0    0    -1  
$EndComp
Text Label 7650 3600 2    39   ~ 0
VCC0
Text Label 7650 3700 2    39   ~ 0
GND
Text Label 7650 3800 2    39   ~ 0
GND
Text Label 7650 3900 2    39   ~ 0
VCCUSB
Text Label 7650 4300 2    39   ~ 0
GND
Wire Wire Line
	8200 3100 8250 3100
Wire Wire Line
	8200 3200 8250 3200
Wire Wire Line
	8200 3300 8250 3300
Wire Wire Line
	8200 3400 8250 3400
Wire Wire Line
	8200 3600 8250 3600
Wire Wire Line
	8200 3700 8250 3700
Wire Wire Line
	8200 3800 8250 3800
Wire Wire Line
	8200 3900 8250 3900
Wire Wire Line
	8200 4000 8250 4000
Wire Wire Line
	8200 4100 8250 4100
Wire Wire Line
	8200 4200 8250 4200
Wire Wire Line
	7650 4500 7700 4500
Wire Wire Line
	7900 4750 7900 4800
Wire Wire Line
	7900 4800 8000 4800
Wire Wire Line
	8000 4800 8000 4750
Connection ~ 8000 4800
Text Label 8050 4800 0    39   ~ 0
GND
Wire Wire Line
	7650 3100 7700 3100
Wire Wire Line
	7650 3200 7700 3200
Wire Wire Line
	7650 3300 7700 3300
Wire Wire Line
	7650 3400 7700 3400
Wire Wire Line
	7650 3500 7700 3500
Wire Wire Line
	7650 3600 7700 3600
Wire Wire Line
	7650 3700 7700 3700
Wire Wire Line
	7650 3800 7700 3800
Wire Wire Line
	7650 3900 7700 3900
Wire Wire Line
	7650 4000 7700 4000
Wire Wire Line
	7650 4100 7700 4100
Wire Wire Line
	7650 4200 7700 4200
Wire Wire Line
	7650 4300 7700 4300
Wire Wire Line
	7650 4400 7700 4400
Wire Wire Line
	8200 3500 8250 3500
Wire Wire Line
	2300 1400 2300 1500
Connection ~ 2300 1500
Wire Wire Line
	2200 1400 2200 1750
Connection ~ 2200 1750
Wire Wire Line
	2000 950  2000 1000
Connection ~ 2200 950 
Wire Wire Line
	2100 1000 2100 950 
Connection ~ 2100 950 
Wire Wire Line
	3400 4300 3450 4300
$Comp
L IansParts:IANS_CAP_POLARIZED C2
U 1 1 59197092
P 6050 3700
F 0 "C2" V 5950 3600 39  0000 C CNN
F 1 "100uF" V 6100 3600 39  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6050 3700 60  0001 C CNN
F 3 "" H 6050 3700 60  0000 C CNN
F 4 "F950J107MPAAQ2" V 6050 3700 60  0001 C CNN "Manu_Number"
F 5 "AVX Corporation" V 6050 3700 60  0001 C CNN "Manu_Name"
F 6 "478-8393-1-ND" V 6050 3700 60  0001 C CNN "Digikey_Number"
	1    6050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3950 6050 3800
Wire Wire Line
	6050 3350 6050 3450
Text Label 7650 3100 2    39   ~ 0
CHIP_PU
NoConn ~ 2100 1400
NoConn ~ 2000 1400
NoConn ~ 2250 5350
NoConn ~ 2350 5350
NoConn ~ 2450 5350
NoConn ~ 2550 5350
NoConn ~ 2650 5350
NoConn ~ 2750 5350
Wire Wire Line
	5900 950  6150 950 
Wire Wire Line
	4500 1350 4750 1350
Wire Wire Line
	2350 2250 2400 2250
Wire Wire Line
	2300 950  2400 950 
Wire Wire Line
	2950 2250 2950 2350
Wire Wire Line
	2950 2000 2950 2250
Wire Wire Line
	2950 1750 2950 2000
Wire Wire Line
	4500 900  4750 900 
Wire Wire Line
	4750 1350 5000 1350
Wire Wire Line
	5500 2150 5600 2150
Wire Wire Line
	5900 2850 6000 2850
Wire Wire Line
	4750 900  5000 900 
Wire Wire Line
	5000 1350 5350 1350
Wire Wire Line
	5000 900  6000 900 
Wire Wire Line
	7350 1850 7350 2000
Wire Wire Line
	7300 1700 7750 1700
Wire Wire Line
	6000 2850 6100 2850
Wire Wire Line
	5250 3350 5500 3350
Wire Wire Line
	5000 3350 5250 3350
Wire Wire Line
	5500 3350 6050 3350
Wire Wire Line
	5500 3950 6050 3950
Wire Wire Line
	5250 3950 5500 3950
Wire Wire Line
	5000 3950 5250 3950
Wire Wire Line
	6150 950  6200 950 
Wire Wire Line
	5000 2850 5250 2850
Wire Wire Line
	5250 2850 5500 2850
Wire Wire Line
	5500 2850 5900 2850
Wire Wire Line
	5250 2150 5500 2150
Wire Wire Line
	5000 2250 5600 2250
Wire Wire Line
	4750 2250 5000 2250
Wire Wire Line
	8000 4800 8050 4800
Wire Wire Line
	2300 1500 2400 1500
Wire Wire Line
	2200 1750 2400 1750
Wire Wire Line
	2200 950  2300 950 
Wire Wire Line
	2100 950  2200 950 
Wire Wire Line
	1500 4700 1550 4700
Wire Wire Line
	1550 4800 1500 4800
Wire Wire Line
	1500 4500 1550 4500
Wire Wire Line
	1550 4600 1500 4600
$Comp
L ESP32-footprints-Shem-Lib:ESP32-WROOM_U U1
U 1 1 5C2C46D7
P 2500 4300
F 0 "U1" V 2550 3900 60  0000 C CNN
F 1 "ESP32-WROOM_U" V 2450 4200 60  0000 C CNN
F 2 "ESP32-footprints-Lib:ESP32-WROOM-U" H 3350 5350 60  0001 C CNN
F 3 "" H 2050 4750 60  0001 C CNN
F 4 "ESP32-WROOM-32U" V 2500 4300 50  0001 C CNN "Manu_Number"
F 5 "Espressif" V 2500 4300 50  0001 C CNN "Manu_Name"
F 6 "1904-1028-1-ND" V 2500 4300 50  0001 C CNN "Digikey_Number"
	1    2500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3500 1550 3600
Wire Wire Line
	1550 3500 1450 3500
Connection ~ 1550 3500
NoConn ~ 3400 4200
NoConn ~ 1550 4000
NoConn ~ 1550 3900
Wire Wire Line
	1500 3800 1550 3800
NoConn ~ 2850 5350
$EndSCHEMATC
