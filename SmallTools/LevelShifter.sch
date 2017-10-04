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
LIBS:LevelShifter-cache
EELAYER 25 0
EELAYER END
$Descr User 7874 7874
encoding utf-8
Sheet 1 1
Title "Digitabulum PowerPlant"
Date "2017-06-17"
Rev "1"
Comp "Manuvr, Inc"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1350 3100 2    39   ~ 0
GND
$Comp
L LSF0204x U1
U 1 1 590C576A
P 2350 1200
F 0 "U1" H 2350 1200 47  0000 C CNN
F 1 "LSF0204x" H 2350 1700 47  0000 C CNN
F 2 "r2Parts:R-PUQFN-N12" H 2350 1200 47  0001 C CNN
F 3 "" H 2350 1200 47  0001 C CNN
	1    2350 1200
	1    0    0    1   
$EndComp
Text Label 2000 1500 2    39   ~ 0
VCC0
Text Label 2000 1600 2    39   ~ 0
VCC1
$Comp
L CAPARRAY_4 CARY1
U 1 1 590F6949
P 4800 1750
F 0 "CARY1" H 4800 1150 60  0000 C CNN
F 1 "100nF" H 4800 2300 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 4800 1750 60  0001 C CNN
F 3 "" H 4800 1750 60  0000 C CNN
F 4 "CKCL44X5R0J104M085AA" H 4800 1750 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 4800 1750 60  0001 C CNN "Manu_Name"
F 6 "445-1838-1-ND" H 4800 1750 60  0001 C CNN "Digikey_Number"
	1    4800 1750
	0    -1   1    0   
$EndComp
Text Label 5800 2050 0    39   ~ 0
GND
$Comp
L GND #PWR1
U 1 1 59110AC7
P 5650 2250
F 0 "#PWR1" H 5650 2000 50  0001 C CNN
F 1 "GND" H 5650 2100 50  0000 C CNN
F 2 "" H 5650 2250 50  0000 C CNN
F 3 "" H 5650 2250 50  0000 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2050 1350
Wire Wire Line
	2050 1250 2000 1250
Wire Wire Line
	2000 1600 2050 1600
Wire Wire Line
	2050 1500 2000 1500
Wire Wire Line
	2000 1150 2050 1150
Wire Wire Line
	2000 1050 2050 1050
Wire Wire Line
	4450 2050 5800 2050
Wire Wire Line
	4450 2000 4450 2100
Wire Wire Line
	4700 2000 4700 2100
Connection ~ 4700 2050
Wire Wire Line
	4950 2000 4950 2100
Connection ~ 4950 2050
Wire Wire Line
	5200 2000 5200 2100
Connection ~ 5200 2050
Wire Wire Line
	4450 1500 4450 1450
Wire Wire Line
	5200 1450 5200 1500
Wire Wire Line
	4950 1450 4950 1500
Wire Wire Line
	4700 1450 4700 1500
Connection ~ 4700 1450
Text Label 1350 3200 2    39   ~ 0
VCC1
Text Label 2700 1600 0    39   ~ 0
GND
Text Label 3000 1500 0    39   ~ 0
~SHUTDOWN
$Comp
L CAPARRAY_4 CARY2
U 1 1 59144C32
P 4800 2350
F 0 "CARY2" H 4800 1750 60  0000 C CNN
F 1 "100nF" H 4800 2900 39  0000 C CNN
F 2 "r2Parts:CapArray_CKCL44" H 4800 2350 60  0001 C CNN
F 3 "" H 4800 2350 60  0000 C CNN
F 4 "CKCL44X5R0J104M085AA" H 4800 2350 60  0001 C CNN "Manu_Number"
F 5 "TDK Corporation" H 4800 2350 60  0001 C CNN "Manu_Name"
F 6 "445-1838-1-ND" H 4800 2350 60  0001 C CNN "Digikey_Number"
	1    4800 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	2650 1250 2700 1250
Wire Wire Line
	2700 1150 2650 1150
Wire Wire Line
	2700 1600 2650 1600
Wire Wire Line
	2650 1500 3000 1500
Text Label 3400 3200 0    39   ~ 0
VCC0
Connection ~ 4950 1450
Text Label 3400 3100 0    39   ~ 0
~SHUTDOWN
Wire Wire Line
	2650 1050 2700 1050
Wire Wire Line
	2650 1350 2700 1350
Connection ~ 5650 2050
Connection ~ 5200 1450
Wire Wire Line
	4450 2600 4450 2650
Wire Wire Line
	4450 2650 5350 2650
Wire Wire Line
	5200 2650 5200 2600
Connection ~ 5200 2650
Wire Wire Line
	4950 2600 4950 2650
Connection ~ 4950 2650
Wire Wire Line
	4700 2600 4700 2650
Connection ~ 4700 2650
Wire Wire Line
	4450 1450 5450 1450
Wire Wire Line
	5650 2050 5650 2250
Text Label 5450 1450 0    47   ~ 0
VCC0
Text Label 5350 2650 0    47   ~ 0
VCC1
Wire Wire Line
	1350 3000 1450 3000
Wire Wire Line
	1350 2900 1450 2900
Wire Wire Line
	1350 2800 1450 2800
Wire Wire Line
	1350 2700 1450 2700
Wire Wire Line
	1350 2600 1450 2600
Wire Wire Line
	1350 2500 1450 2500
Wire Wire Line
	1350 2400 1450 2400
Wire Wire Line
	1350 2300 1450 2300
Wire Wire Line
	1350 2200 1450 2200
Wire Wire Line
	1350 2100 1450 2100
Wire Wire Line
	1350 2000 1450 2000
Wire Wire Line
	1350 1900 1450 1900
Wire Wire Line
	3400 3000 3300 3000
Wire Wire Line
	3400 2900 3300 2900
Wire Wire Line
	3400 2800 3300 2800
Wire Wire Line
	3400 2700 3300 2700
Wire Wire Line
	3400 2600 3300 2600
Wire Wire Line
	3400 2500 3300 2500
Wire Wire Line
	3400 2400 3300 2400
Wire Wire Line
	3400 2300 3300 2300
Wire Wire Line
	3400 2200 3300 2200
Wire Wire Line
	3400 2100 3300 2100
Wire Wire Line
	3400 2000 3300 2000
Wire Wire Line
	3400 1900 3300 1900
Text Label 1350 3000 2    47   ~ 0
A1
Text Label 1350 2900 2    47   ~ 0
A2
Text Label 1350 2800 2    47   ~ 0
A3
Text Label 1350 2700 2    47   ~ 0
A4
Text Label 1350 2600 2    47   ~ 0
A5
Text Label 1350 2500 2    47   ~ 0
A6
Text Label 1350 2400 2    47   ~ 0
A7
Text Label 1350 2300 2    47   ~ 0
A8
Text Label 1350 2200 2    47   ~ 0
A9
Text Label 1350 2100 2    47   ~ 0
A10
Text Label 1350 2000 2    47   ~ 0
A11
Text Label 1350 1900 2    47   ~ 0
A12
Text Label 3400 3000 0    47   ~ 0
B1
Text Label 3400 2900 0    47   ~ 0
B2
Text Label 3400 2800 0    47   ~ 0
B3
Text Label 3400 2700 0    47   ~ 0
B4
Text Label 3400 2600 0    47   ~ 0
B5
Text Label 3400 2500 0    47   ~ 0
B6
Text Label 3400 2400 0    47   ~ 0
B7
Text Label 3400 2300 0    47   ~ 0
B8
Text Label 3400 2200 0    47   ~ 0
B9
Text Label 3400 2100 0    47   ~ 0
B10
Text Label 3400 2000 0    47   ~ 0
B11
Text Label 3400 1900 0    47   ~ 0
B12
$Comp
L LSF0204x U3
U 1 1 59D4A8EF
P 2350 2800
F 0 "U3" H 2350 2800 47  0000 C CNN
F 1 "LSF0204x" H 2350 3300 47  0000 C CNN
F 2 "r2Parts:R-PUQFN-N12" H 2350 2800 47  0001 C CNN
F 3 "" H 2350 2800 47  0001 C CNN
	1    2350 2800
	1    0    0    1   
$EndComp
Text Label 2000 3100 2    39   ~ 0
VCC0
Text Label 2000 3200 2    39   ~ 0
VCC1
Wire Wire Line
	2000 2950 2050 2950
Wire Wire Line
	2050 2850 2000 2850
Wire Wire Line
	2000 3200 2050 3200
Wire Wire Line
	2050 3100 2000 3100
Wire Wire Line
	2000 2750 2050 2750
Wire Wire Line
	2000 2650 2050 2650
Text Label 2700 3200 0    39   ~ 0
GND
Wire Wire Line
	2650 2850 2700 2850
Wire Wire Line
	2700 2750 2650 2750
Wire Wire Line
	2700 3200 2650 3200
Wire Wire Line
	2650 3100 2850 3100
Wire Wire Line
	2650 2650 2700 2650
Wire Wire Line
	2650 2950 2700 2950
Text Label 2000 2950 2    47   ~ 0
A1
Text Label 2000 2850 2    47   ~ 0
A2
Text Label 2000 2750 2    47   ~ 0
A3
Text Label 2000 2650 2    47   ~ 0
A4
Text Label 2700 2950 0    47   ~ 0
B1
Text Label 2700 2850 0    47   ~ 0
B2
Text Label 2700 2750 0    47   ~ 0
B3
Text Label 2700 2650 0    47   ~ 0
B4
$Comp
L LSF0204x U2
U 1 1 59D4AAA7
P 2350 2000
F 0 "U2" H 2350 2000 47  0000 C CNN
F 1 "LSF0204x" H 2350 2500 47  0000 C CNN
F 2 "r2Parts:R-PUQFN-N12" H 2350 2000 47  0001 C CNN
F 3 "" H 2350 2000 47  0001 C CNN
	1    2350 2000
	1    0    0    1   
$EndComp
Text Label 2000 2300 2    39   ~ 0
VCC0
Text Label 2000 2400 2    39   ~ 0
VCC1
Wire Wire Line
	2000 2150 2050 2150
Wire Wire Line
	2050 2050 2000 2050
Wire Wire Line
	2000 2400 2050 2400
Wire Wire Line
	2050 2300 2000 2300
Wire Wire Line
	2000 1950 2050 1950
Wire Wire Line
	2000 1850 2050 1850
Text Label 2700 2400 0    39   ~ 0
GND
Wire Wire Line
	2650 2050 2700 2050
Wire Wire Line
	2700 1950 2650 1950
Wire Wire Line
	2700 2400 2650 2400
Wire Wire Line
	2650 2300 2850 2300
Wire Wire Line
	2650 1850 2700 1850
Wire Wire Line
	2650 2150 2700 2150
Wire Wire Line
	2850 3100 2850 1500
Connection ~ 2850 1500
Text Label 2700 2150 0    47   ~ 0
B5
Text Label 2700 2050 0    47   ~ 0
B6
Text Label 2700 1950 0    47   ~ 0
B7
Text Label 2700 1850 0    47   ~ 0
B8
Text Label 2700 1350 0    47   ~ 0
B9
Text Label 2700 1250 0    47   ~ 0
B10
Text Label 2700 1150 0    47   ~ 0
B11
Text Label 2700 1050 0    47   ~ 0
B12
Text Label 2000 1350 2    47   ~ 0
A9
Text Label 2000 1250 2    47   ~ 0
A10
Text Label 2000 1150 2    47   ~ 0
A11
Text Label 2000 1050 2    47   ~ 0
A12
Text Label 2000 2150 2    47   ~ 0
A5
Text Label 2000 2050 2    47   ~ 0
A6
Text Label 2000 1950 2    47   ~ 0
A7
Text Label 2000 1850 2    47   ~ 0
A8
$Comp
L CONN_01X14 J2
U 1 1 59D4953F
P 3100 2550
F 0 "J2" H 3100 3300 50  0000 C CNN
F 1 "HV" V 3200 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 3100 2550 50  0001 C CNN
F 3 "" H 3100 2550 50  0001 C CNN
	1    3100 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X14 J1
U 1 1 59D495C9
P 1650 2550
F 0 "J1" H 1650 3300 50  0000 C CNN
F 1 "LV" V 1750 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x14_Pitch2.54mm" H 1650 2550 50  0001 C CNN
F 3 "" H 1650 2550 50  0001 C CNN
	1    1650 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 3200 1450 3200
Wire Wire Line
	1450 3100 1350 3100
Wire Wire Line
	3300 3100 3400 3100
Wire Wire Line
	3300 3200 3400 3200
Connection ~ 4450 2050
Connection ~ 2850 2300
$EndSCHEMATC
