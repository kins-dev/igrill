EESchema Schematic File Version 4
LIBS:iGrillRPiSSRCtl-rev-sE-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "iGrill Smoker SSR Control Board"
Date "2019-08-01"
Rev "*E"
Comp "Redbud Farms"
Comment1 "https://creativecommons.org/licenses/by-nc-sa/4.0/"
Comment2 "License: Creative Commons BY-NC-SA"
Comment3 "https://git.kins.dev/igrill-smoker/"
Comment4 "Author: Scott Atkins (Scott@kins.dev)"
$EndDescr
$Comp
L power:+5V #PWR017
U 1 1 580C1B61
P 6750 2600
F 0 "#PWR017" H 6750 2450 50  0001 C CNN
F 1 "+5V" H 6750 2740 50  0000 C CNN
F 2 "" H 6750 2600 50  0000 C CNN
F 3 "" H 6750 2600 50  0000 C CNN
	1    6750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2600 6750 2750
Wire Wire Line
	6750 2750 6550 2750
Wire Wire Line
	6750 2850 6550 2850
Connection ~ 6750 2750
$Comp
L power:GND #PWR016
U 1 1 580C1D11
P 6650 4800
F 0 "#PWR016" H 6650 4550 50  0001 C CNN
F 1 "GND" H 6650 4650 50  0000 C CNN
F 2 "" H 6650 4800 50  0000 C CNN
F 3 "" H 6650 4800 50  0000 C CNN
	1    6650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4350 6550 4350
Wire Wire Line
	6650 4150 6550 4150
Connection ~ 6650 4350
Wire Wire Line
	6650 3650 6550 3650
Connection ~ 6650 4150
Wire Wire Line
	6650 3350 6550 3350
Connection ~ 6650 3650
$Comp
L power:GND #PWR015
U 1 1 580C1E01
P 5950 4800
F 0 "#PWR015" H 5950 4550 50  0001 C CNN
F 1 "GND" H 5950 4650 50  0000 C CNN
F 2 "" H 5950 4800 50  0000 C CNN
F 3 "" H 5950 4800 50  0000 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4650 6050 4650
Wire Wire Line
	5950 3150 5950 3950
Wire Wire Line
	5950 3950 6050 3950
Connection ~ 5950 4650
Connection ~ 5850 2750
Wire Wire Line
	5850 3550 6050 3550
Wire Wire Line
	5850 2750 6050 2750
Wire Wire Line
	5850 2600 5850 2750
$Comp
L power:+3.3V #PWR014
U 1 1 580C1BC1
P 5850 2600
F 0 "#PWR014" H 5850 2450 50  0001 C CNN
F 1 "+3.3V" H 5850 2740 50  0000 C CNN
F 2 "" H 5850 2600 50  0000 C CNN
F 3 "" H 5850 2600 50  0000 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3150 6050 3150
Connection ~ 5950 3950
Text Label 4900 2850 0    50   ~ 0
GPIO2(SDA1)
Text Label 4900 2950 0    50   ~ 0
GPIO3(SCL1)
Text Label 4900 3050 0    50   ~ 0
GPIO4(GCLK)
Text Label 4900 3250 0    50   ~ 0
GPIO17(GEN0)
Text Label 4900 3350 0    50   ~ 0
GPIO27(GEN2)
Text Label 4900 3450 0    50   ~ 0
GPIO22(GEN3)
Text Label 4900 3650 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 4900 3750 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 4900 3850 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 4900 4050 0    50   ~ 0
ID_SD
Text Label 4900 4150 0    50   ~ 0
GPIO5
Text Label 4900 4250 0    50   ~ 0
GPIO6
Text Label 4900 4350 0    50   ~ 0
GPIO13(PWM1)
Text Label 4900 4450 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 4900 4550 0    50   ~ 0
GPIO26
Text Label 7600 4550 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 7600 4450 2    50   ~ 0
GPIO16
Text Label 7600 4250 2    50   ~ 0
GPIO12(PWM0)
Text Label 7600 4050 2    50   ~ 0
ID_SC
Text Label 7600 3950 2    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 7600 3850 2    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 7600 3750 2    50   ~ 0
GPIO25(GEN6)
Text Label 7600 3550 2    50   ~ 0
GPIO24(GEN5)
Text Label 7600 3450 2    50   ~ 0
GPIO23(GEN4)
Text Label 7600 3250 2    50   ~ 0
GPIO18(GEN1)(PWM0)
Text Label 7600 3150 2    50   ~ 0
GPIO15(RXD0)
Text Label 7800 3050 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	6650 2950 6550 2950
Connection ~ 6650 3350
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L iGrillRPiSSRCtl-rev-sE-rescue:Mounting_Hole-Mechanical MK1
U 1 1 5834FB2E
P 3000 7200
F 0 "MK1" H 3100 7246 50  0000 L CNN
F 1 "M2.5" H 3100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7200 60  0001 C CNN
F 3 "" H 3000 7200 60  0001 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L iGrillRPiSSRCtl-rev-sE-rescue:Mounting_Hole-Mechanical MK3
U 1 1 5834FBEF
P 3450 7200
F 0 "MK3" H 3550 7246 50  0000 L CNN
F 1 "M2.5" H 3550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7200 60  0001 C CNN
F 3 "" H 3450 7200 60  0001 C CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L iGrillRPiSSRCtl-rev-sE-rescue:Mounting_Hole-Mechanical MK2
U 1 1 5834FC19
P 3000 7400
F 0 "MK2" H 3100 7446 50  0000 L CNN
F 1 "M2.5" H 3100 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7400 60  0001 C CNN
F 3 "" H 3000 7400 60  0001 C CNN
	1    3000 7400
	1    0    0    -1  
$EndComp
$Comp
L iGrillRPiSSRCtl-rev-sE-rescue:Mounting_Hole-Mechanical MK4
U 1 1 5834FC4F
P 3450 7400
F 0 "MK4" H 3550 7446 50  0000 L CNN
F 1 "M2.5" H 3550 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7400 60  0001 C CNN
F 3 "" H 3450 7400 60  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Text Notes 3000 7050 0    50   ~ 0
Mounting Holes
$Comp
L Connector_RPi:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 6250 3650
F 0 "P1" H 6300 4767 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 6300 4676 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
F 4 "PF1-M220-SBB-G0-TR" H 6250 3650 50  0001 C CNN "Partnumber"
	1    6250 3650
	1    0    0    -1  
$EndComp
Text Label 7600 4650 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	6650 4350 6650 4800
Wire Wire Line
	6650 4150 6650 4350
Wire Wire Line
	6650 3650 6650 3750
Wire Wire Line
	5950 4650 5950 4800
Wire Wire Line
	5850 2750 5850 3550
Wire Wire Line
	5950 3950 5950 4650
Wire Wire Line
	6650 3350 6650 3450
NoConn ~ 7700 4050
NoConn ~ 4800 4050
Wire Wire Line
	6550 4050 7700 4050
Wire Wire Line
	4800 4050 6050 4050
Wire Wire Line
	7800 4450 7800 4550
Wire Wire Line
	6550 4550 7800 4550
Wire Wire Line
	7800 4550 7800 4650
Wire Wire Line
	6550 4650 7800 4650
Connection ~ 7800 4550
$Comp
L power:+5V #PWR018
U 1 1 5D1449BC
P 7800 4450
F 0 "#PWR018" H 7800 4300 50  0001 C CNN
F 1 "+5V" H 7800 4590 50  0000 C CNN
F 2 "" H 7800 4450 50  0000 C CNN
F 3 "" H 7800 4450 50  0000 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
Connection ~ 7800 4450
Wire Wire Line
	6550 4450 7800 4450
$Comp
L Device:R R1
U 1 1 5D14E11D
P 850 1550
F 0 "R1" V 950 1550 50  0000 C CNN
F 1 "180Ω" V 850 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 780 1550 50  0001 C CNN
F 3 "~" H 850 1550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 850 1550 50  0001 C CNN "Partnumber"
	1    850  1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D14F1BC
P 1600 1550
F 0 "R3" V 1700 1550 50  0000 C CNN
F 1 "180Ω" V 1600 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 1550 50  0001 C CNN
F 3 "~" H 1600 1550 50  0001 C CNN
F 4 "RC0603JR-0782RL" H 1600 1550 50  0001 C CNN "Partnumber"
	1    1600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5D14FA39
P 850 950
F 0 "D1" H 800 1050 50  0000 C CNN
F 1 "Low Battery" H 750 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 850 950 50  0001 C CNN
F 3 "~" H 850 950 50  0001 C CNN
F 4 "19-217-R6C-AL1M2VY-3T" H 850 950 50  0001 C CNN "Partnumber"
	1    850  950 
	0    1    -1   0   
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 5D150925
P 1600 950
F 0 "D2" H 1550 1050 50  0000 C CNN
F 1 "Smoking Complete" H 1400 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1600 950 50  0001 C CNN
F 3 "~" H 1600 950 50  0001 C CNN
F 4 "19-217-G7C-AN1P2-3T" H 1600 950 50  0001 C CNN "Partnumber"
	1    1600 950 
	0    1    -1   0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5D165E77
P 9550 4450
F 0 "BZ1" V 9508 4602 50  0000 L CNN
F 1 "Buzzer" V 9599 4602 50  0000 L CNN
F 2 "iGrillRPiSSRCtl-rev-sE:Buzzer_KELIKING_KLJ-1230-smd" V 9525 4550 50  0001 C CNN
F 3 "~" V 9525 4550 50  0001 C CNN
F 4 "KLJ-1230" V 9550 4450 50  0001 C CNN "Partnumber"
	1    9550 4450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5D19CE23
P 8350 4350
F 0 "SW1" H 8350 4635 50  0000 C CNN
F 1 "Off    On" H 8350 4544 50  0000 C CNN
F 2 "iGrillRPiSSRCtl-rev-sE:SW_OS202011MS2QS1" H 8350 4350 50  0001 C CNN
F 3 "~" H 8350 4350 50  0001 C CNN
F 4 "JS202011SCQN" H 8350 4350 50  0001 C CNN "Partnumber"
	2    8350 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 4350 9350 4350
Wire Wire Line
	9650 4350 9750 4350
$Comp
L power:+5V #PWR021
U 1 1 5D15CC6F
P 10150 4350
F 0 "#PWR021" H 10150 4200 50  0001 C CNN
F 1 "+5V" H 10150 4490 50  0000 C CNN
F 2 "" H 10150 4350 50  0000 C CNN
F 3 "" H 10150 4350 50  0000 C CNN
	1    10150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3950 6650 3950
Connection ~ 6650 3950
Wire Wire Line
	6650 3950 6650 4150
Wire Wire Line
	6550 3850 6650 3850
Connection ~ 6650 3850
Wire Wire Line
	6650 3850 6650 3950
Wire Wire Line
	6650 3850 7800 3850
Wire Wire Line
	6550 3750 6650 3750
Connection ~ 6650 3750
Wire Wire Line
	6650 3750 6650 3850
Wire Wire Line
	6650 3750 7800 3750
Wire Wire Line
	6550 3550 6650 3550
Connection ~ 6650 3550
Wire Wire Line
	6650 3550 6650 3650
Wire Wire Line
	6650 3550 7800 3550
Wire Wire Line
	6550 3450 6650 3450
Connection ~ 6650 3450
Wire Wire Line
	6650 3450 6650 3550
Wire Wire Line
	6650 3450 7800 3450
Wire Wire Line
	6650 3250 6650 3350
Wire Wire Line
	6550 3050 6650 3050
Wire Wire Line
	6750 2750 6750 2850
$Comp
L power:+5V #PWR019
U 1 1 5D16B874
P 8150 2950
F 0 "#PWR019" H 8150 2800 50  0001 C CNN
F 1 "+5V" H 8150 3090 50  0000 C CNN
F 2 "" H 8150 2950 50  0000 C CNN
F 3 "" H 8150 2950 50  0000 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5D23056E
P 3850 4250
F 0 "SW1" H 3850 4535 50  0000 C CNN
F 1 "Off    On" H 3850 4444 50  0000 C CNN
F 2 "iGrillRPiSSRCtl-rev-sE:SW_OS202011MS2QS1" H 3850 4250 50  0001 C CNN
F 3 "~" H 3850 4250 50  0001 C CNN
F 4 "JS202011SCQN" H 3850 4250 50  0001 C CNN "Partnumber"
	1    3850 4250
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5D252AFC
P 3500 4100
F 0 "#PWR06" H 3500 3950 50  0001 C CNN
F 1 "+5V" H 3515 4273 50  0000 C CNN
F 2 "" H 3500 4100 50  0001 C CNN
F 3 "" H 3500 4100 50  0001 C CNN
	1    3500 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D253FBA
P 3500 4400
F 0 "#PWR07" H 3500 4150 50  0001 C CNN
F 1 "GND" H 3500 4250 50  0000 C CNN
F 2 "" H 3500 4400 50  0000 C CNN
F 3 "" H 3500 4400 50  0000 C CNN
	1    3500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4350 3500 4350
Wire Wire Line
	3500 4350 3500 4400
Wire Wire Line
	3650 4150 3500 4150
Wire Wire Line
	3500 4150 3500 4100
Wire Wire Line
	3500 4150 3200 4150
Connection ~ 3500 4150
Wire Wire Line
	6550 4250 8150 4250
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D1FC6DA
P 3650 5150
F 0 "J1" V 3522 4962 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 3750 5550 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3650 5150 50  0001 C CNN
F 3 "~" H 3650 5150 50  0001 C CNN
F 4 "1715721" H 3650 5150 50  0001 C CNN "Partnumber"
	1    3650 5150
	0    -1   1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D1D9F32
P 9500 4150
F 0 "R17" V 9400 4150 50  0000 C CNN
F 1 "1kΩ" V 9500 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9430 4150 50  0001 C CNN
F 3 "~" H 9500 4150 50  0001 C CNN
F 4 "RC0603JR-075K1L" H 9500 4150 50  0001 C CNN "Partnumber"
	1    9500 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 4150 9350 4350
Connection ~ 9350 4350
Wire Wire Line
	9350 4350 9450 4350
Wire Wire Line
	9650 4150 9750 4150
Wire Wire Line
	9750 4150 9750 4350
Connection ~ 9750 4350
Wire Wire Line
	9750 4350 10150 4350
$Comp
L power:GND #PWR020
U 1 1 5D1E7B7B
P 9300 4950
F 0 "#PWR020" H 9300 4700 50  0001 C CNN
F 1 "GND" H 9300 4800 50  0000 C CNN
F 2 "" H 9300 4950 50  0000 C CNN
F 3 "" H 9300 4950 50  0000 C CNN
	1    9300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4350 9300 4450
Wire Wire Line
	8950 4650 9000 4650
Wire Wire Line
	9300 4850 9300 4950
$Comp
L power:+5V #PWR02
U 1 1 5D241237
P 850 650
F 0 "#PWR02" H 850 500 50  0001 C CNN
F 1 "+5V" H 850 790 50  0000 C CNN
F 2 "" H 850 650 50  0000 C CNN
F 3 "" H 850 650 50  0000 C CNN
	1    850  650 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D25CE00
P 2050 1750
F 0 "#PWR04" H 2050 1500 50  0001 C CNN
F 1 "GND" H 2050 1600 50  0000 C CNN
F 2 "" H 2050 1750 50  0000 C CNN
F 3 "" H 2050 1750 50  0000 C CNN
	1    2050 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 800  1600 750 
Wire Wire Line
	850  800  850  750 
Wire Wire Line
	850  1400 850  1100
Wire Wire Line
	1600 1400 1600 1100
Wire Wire Line
	1600 1750 1600 1700
Wire Wire Line
	850  1700 850  1750
Wire Wire Line
	4050 4250 6050 4250
Wire Wire Line
	6050 4350 4400 4350
Wire Wire Line
	850  750  1600 750 
Wire Wire Line
	2000 1750 2050 1750
$Comp
L power:GND #PWR03
U 1 1 5D26AAF1
P 1300 1750
F 0 "#PWR03" H 1300 1500 50  0001 C CNN
F 1 "GND" H 1300 1600 50  0000 C CNN
F 2 "" H 1300 1750 50  0000 C CNN
F 3 "" H 1300 1750 50  0000 C CNN
	1    1300 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1750 1300 1750
Wire Wire Line
	850  650  850  750 
Connection ~ 850  750 
$Comp
L Device:R R5
U 1 1 5D2B59D2
P 2350 1550
F 0 "R5" V 2450 1550 50  0000 C CNN
F 1 "180Ω" V 2350 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 1550 50  0001 C CNN
F 3 "~" H 2350 1550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 2350 1550 50  0001 C CNN "Partnumber"
	1    2350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 5D2B59D9
P 2350 950
F 0 "D3" H 2300 1050 50  0000 C CNN
F 1 "Hot" H 2150 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2350 950 50  0001 C CNN
F 3 "~" H 2350 950 50  0001 C CNN
F 4 "19-217-R6C-AL1M2VY-3T" H 2350 950 50  0001 C CNN "Partnumber"
	1    2350 950 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D2B59DF
P 2800 1750
F 0 "#PWR05" H 2800 1500 50  0001 C CNN
F 1 "GND" H 2800 1600 50  0000 C CNN
F 2 "" H 2800 1750 50  0000 C CNN
F 3 "" H 2800 1750 50  0000 C CNN
	1    2800 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 800  2350 750 
Wire Wire Line
	2350 1400 2350 1100
Wire Wire Line
	2350 1750 2350 1700
Wire Wire Line
	1600 750  2350 750 
Wire Wire Line
	2750 1750 2800 1750
$Comp
L Device:R R7
U 1 1 5D2BA79C
P 3100 1550
F 0 "R7" V 3200 1550 50  0000 C CNN
F 1 "180Ω" V 3100 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 1550 50  0001 C CNN
F 3 "~" H 3100 1550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 3100 1550 50  0001 C CNN "Partnumber"
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D4
U 1 1 5D2BA7A3
P 3100 950
F 0 "D4" H 3050 1050 50  0000 C CNN
F 1 "Warm" H 2900 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3100 950 50  0001 C CNN
F 3 "~" H 3100 950 50  0001 C CNN
F 4 "19-217-Y5C-AM1N1VY-3T" H 3100 950 50  0001 C CNN "Partnumber"
	1    3100 950 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D2BA7A9
P 3550 1750
F 0 "#PWR08" H 3550 1500 50  0001 C CNN
F 1 "GND" H 3550 1600 50  0000 C CNN
F 2 "" H 3550 1750 50  0000 C CNN
F 3 "" H 3550 1750 50  0000 C CNN
	1    3550 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 800  3100 750 
Wire Wire Line
	3100 1400 3100 1100
Wire Wire Line
	3100 1750 3100 1700
Wire Wire Line
	2350 750  3100 750 
Wire Wire Line
	3500 1750 3550 1750
$Comp
L Device:R R9
U 1 1 5D2BF385
P 3850 1550
F 0 "R9" V 3950 1550 50  0000 C CNN
F 1 "180Ω" V 3850 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 1550 50  0001 C CNN
F 3 "~" H 3850 1550 50  0001 C CNN
F 4 "RC0603JR-0782RL" H 3850 1550 50  0001 C CNN "Partnumber"
	1    3850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D5
U 1 1 5D2BF38C
P 3850 950
F 0 "D5" H 3800 1050 50  0000 C CNN
F 1 "Perfect" H 3650 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3850 950 50  0001 C CNN
F 3 "~" H 3850 950 50  0001 C CNN
F 4 "19-217-G7C-AN1P2-3T" H 3850 950 50  0001 C CNN "Partnumber"
	1    3850 950 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D2BF392
P 4300 1750
F 0 "#PWR09" H 4300 1500 50  0001 C CNN
F 1 "GND" H 4300 1600 50  0000 C CNN
F 2 "" H 4300 1750 50  0000 C CNN
F 3 "" H 4300 1750 50  0000 C CNN
	1    4300 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 800  3850 750 
Wire Wire Line
	3850 1400 3850 1100
Wire Wire Line
	3850 1750 3850 1700
Wire Wire Line
	3100 750  3850 750 
Wire Wire Line
	4250 1750 4300 1750
$Comp
L Device:R R12
U 1 1 5D2C4D19
P 4600 1550
F 0 "R12" V 4700 1550 50  0000 C CNN
F 1 "180Ω" V 4600 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 1550 50  0001 C CNN
F 3 "~" H 4600 1550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 4600 1550 50  0001 C CNN "Partnumber"
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D6
U 1 1 5D2C4D20
P 4600 950
F 0 "D6" H 4550 1050 50  0000 C CNN
F 1 "Cool" H 4400 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4600 950 50  0001 C CNN
F 3 "~" H 4600 950 50  0001 C CNN
F 4 "19-217-Y5C-AM1N1VY-3T" H 4600 950 50  0001 C CNN "Partnumber"
	1    4600 950 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D2C4D26
P 5050 1750
F 0 "#PWR011" H 5050 1500 50  0001 C CNN
F 1 "GND" H 5050 1600 50  0000 C CNN
F 2 "" H 5050 1750 50  0000 C CNN
F 3 "" H 5050 1750 50  0000 C CNN
	1    5050 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 800  4600 750 
Wire Wire Line
	4600 1400 4600 1100
Wire Wire Line
	4600 1750 4600 1700
Wire Wire Line
	3850 750  4600 750 
Wire Wire Line
	5000 1750 5050 1750
$Comp
L Device:R R14
U 1 1 5D2CAEFD
P 5350 1550
F 0 "R14" V 5450 1550 50  0000 C CNN
F 1 "180Ω" V 5350 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 1550 50  0001 C CNN
F 3 "~" H 5350 1550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 5350 1550 50  0001 C CNN "Partnumber"
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D7
U 1 1 5D2CAF04
P 5350 950
F 0 "D7" H 5300 1050 50  0000 C CNN
F 1 "Cold" H 5150 800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5350 950 50  0001 C CNN
F 3 "~" H 5350 950 50  0001 C CNN
F 4 "19-217-R6C-AL1M2VY-3T" H 5350 950 50  0001 C CNN "Partnumber"
	1    5350 950 
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D2CAF0A
P 5800 1750
F 0 "#PWR013" H 5800 1500 50  0001 C CNN
F 1 "GND" H 5800 1600 50  0000 C CNN
F 2 "" H 5800 1750 50  0000 C CNN
F 3 "" H 5800 1750 50  0000 C CNN
	1    5800 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 800  5350 750 
Wire Wire Line
	5350 1400 5350 1100
Wire Wire Line
	5350 1750 5350 1700
Wire Wire Line
	4600 750  5350 750 
Wire Wire Line
	5750 1750 5800 1750
Wire Wire Line
	5550 2050 5550 2400
Wire Wire Line
	4800 2950 4800 2700
Wire Wire Line
	4800 2950 6050 2950
Wire Wire Line
	4850 2750 4850 2850
Wire Wire Line
	4850 2850 6050 2850
Wire Wire Line
	4850 2750 5550 2750
Wire Wire Line
	4050 3050 4050 2700
Wire Wire Line
	4050 3050 6050 3050
Wire Wire Line
	3300 3250 3300 2700
Wire Wire Line
	3300 3250 6050 3250
Wire Wire Line
	2550 3350 2550 2700
Wire Wire Line
	2550 3350 6050 3350
Wire Wire Line
	1800 3450 1800 2700
Wire Wire Line
	1800 3450 6050 3450
Wire Wire Line
	1050 3650 1050 2700
Wire Wire Line
	6650 2950 6650 3050
Wire Wire Line
	8550 4350 8950 4350
Wire Wire Line
	3650 4950 3200 4950
Wire Wire Line
	3200 4150 3200 4950
Wire Wire Line
	3750 4950 4200 4950
$Comp
L power:GND #PWR010
U 1 1 5D2BEB32
P 4750 5000
F 0 "#PWR010" H 4750 4750 50  0001 C CNN
F 1 "GND" H 4750 4850 50  0000 C CNN
F 2 "" H 4750 5000 50  0000 C CNN
F 3 "" H 4750 5000 50  0000 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4950 4750 4950
Wire Wire Line
	4750 4950 4750 5000
Connection ~ 6650 3050
Wire Wire Line
	6650 3050 6650 3150
Wire Wire Line
	6550 3150 6650 3150
Connection ~ 6650 3150
Wire Wire Line
	6650 3150 6650 3250
Wire Wire Line
	7800 3050 6650 3050
Wire Wire Line
	7800 3150 6650 3150
Wire Wire Line
	8150 3250 8150 2950
Wire Wire Line
	6550 3250 8150 3250
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5D386057
P 900 6150
F 0 "JP1" H 900 6281 50  0000 C CNN
F 1 "Jumper_3_Open" H 900 6372 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm_NumberLabels" H 900 6150 50  0001 C CNN
F 3 "~" H 900 6150 50  0001 C CNN
	1    900  6150
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP2
U 1 1 5D389A88
P 1550 6150
F 0 "JP2" H 1550 6281 50  0000 C CNN
F 1 "Jumper_3_Open" H 1550 6372 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm_NumberLabels" H 1550 6150 50  0001 C CNN
F 3 "~" H 1550 6150 50  0001 C CNN
	1    1550 6150
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP3
U 1 1 5D38A23E
P 2200 6150
F 0 "JP3" H 2200 6281 50  0000 C CNN
F 1 "Jumper_3_Open" H 2200 6372 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm_NumberLabels" H 2200 6150 50  0001 C CNN
F 3 "~" H 2200 6150 50  0001 C CNN
	1    2200 6150
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP4
U 1 1 5D38A974
P 4650 6100
F 0 "JP4" H 4650 6231 50  0000 C CNN
F 1 "Jumper_3_Open" H 4650 6322 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm_NumberLabels" H 4650 6100 50  0001 C CNN
F 3 "~" H 4650 6100 50  0001 C CNN
	1    4650 6100
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Open JP5
U 1 1 5D38B44E
P 5250 6100
F 0 "JP5" H 5250 6231 50  0000 C CNN
F 1 "Jumper_3_Open" H 5250 6322 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P2.0mm_Open_TrianglePad1.0x1.5mm_NumberLabels" H 5250 6100 50  0001 C CNN
F 3 "~" H 5250 6100 50  0001 C CNN
	1    5250 6100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D3B0794
P 5550 6500
F 0 "#PWR012" H 5550 6250 50  0001 C CNN
F 1 "GND" H 5550 6350 50  0000 C CNN
F 2 "" H 5550 6500 50  0000 C CNN
F 3 "" H 5550 6500 50  0000 C CNN
	1    5550 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6100 5500 6100
Wire Wire Line
	5550 6100 5550 6400
Wire Wire Line
	5550 6400 4900 6400
Wire Wire Line
	4900 6400 4900 6100
Connection ~ 5550 6400
Wire Wire Line
	5550 6400 5550 6500
Wire Wire Line
	4900 6400 2450 6400
Wire Wire Line
	2450 6400 2450 6150
Connection ~ 4900 6400
Wire Wire Line
	2450 6400 1800 6400
Wire Wire Line
	1800 6400 1800 6150
Connection ~ 2450 6400
Wire Wire Line
	1800 6400 1150 6400
Wire Wire Line
	1150 6400 1150 6150
Connection ~ 1800 6400
$Comp
L power:+5V #PWR01
U 1 1 5D3E5C89
P 600 5500
F 0 "#PWR01" H 600 5350 50  0001 C CNN
F 1 "+5V" H 600 5640 50  0000 C CNN
F 2 "" H 600 5500 50  0000 C CNN
F 3 "" H 600 5500 50  0000 C CNN
	1    600  5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  5500 600  5500
Wire Wire Line
	650  5500 650  5700
Wire Wire Line
	650  5700 1300 5700
Wire Wire Line
	1300 5700 1300 6150
Connection ~ 650  5700
Wire Wire Line
	650  5700 650  6150
Wire Wire Line
	1950 6150 1950 5700
Wire Wire Line
	1950 5700 1300 5700
Connection ~ 1300 5700
Wire Wire Line
	4400 6100 4400 5700
Wire Wire Line
	4400 5700 1950 5700
Connection ~ 1950 5700
Wire Wire Line
	4400 5700 5000 5700
Wire Wire Line
	5000 5700 5000 6100
Connection ~ 4400 5700
Wire Wire Line
	4800 4550 6050 4550
Wire Wire Line
	1050 3650 6050 3650
Wire Wire Line
	900  3750 900  6000
Wire Wire Line
	900  3750 6050 3750
Wire Wire Line
	1550 3850 1550 6000
Wire Wire Line
	1550 3850 6050 3850
Wire Wire Line
	4150 4150 4150 4700
Wire Wire Line
	4150 4700 2200 4700
Wire Wire Line
	2200 4700 2200 6000
Wire Wire Line
	4150 4150 6050 4150
Wire Wire Line
	4600 4450 4600 4850
Wire Wire Line
	4600 4850 4950 4850
Wire Wire Line
	4950 4850 4950 5550
Wire Wire Line
	4950 5550 4650 5550
Wire Wire Line
	4650 5550 4650 5950
Wire Wire Line
	4600 4450 6050 4450
Wire Wire Line
	4800 4550 4800 4700
Wire Wire Line
	4800 4700 5250 4700
Wire Wire Line
	5250 4700 5250 5950
$Comp
L Device:R R2
U 1 1 5D44055B
P 1050 2550
F 0 "R2" V 1150 2550 50  0000 C CNN
F 1 "180Ω" V 1050 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 980 2550 50  0001 C CNN
F 3 "~" H 1050 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 1050 2550 50  0001 C CNN "Partnumber"
	1    1050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2400 1050 2050
$Comp
L Device:R R4
U 1 1 5D4608A5
P 1800 2550
F 0 "R4" V 1900 2550 50  0000 C CNN
F 1 "180Ω" V 1800 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1730 2550 50  0001 C CNN
F 3 "~" H 1800 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 1800 2550 50  0001 C CNN "Partnumber"
	1    1800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2400 1800 2050
$Comp
L Device:R R6
U 1 1 5D4610CE
P 2550 2550
F 0 "R6" V 2650 2550 50  0000 C CNN
F 1 "180Ω" V 2550 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 2550 50  0001 C CNN
F 3 "~" H 2550 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 2550 2550 50  0001 C CNN "Partnumber"
	1    2550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2400 2550 2050
$Comp
L Device:R R8
U 1 1 5D462CB1
P 3300 2550
F 0 "R8" V 3400 2550 50  0000 C CNN
F 1 "180Ω" V 3300 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3230 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 3300 2550 50  0001 C CNN "Partnumber"
	1    3300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2400 3300 2050
$Comp
L Device:R R10
U 1 1 5D463254
P 4050 2550
F 0 "R10" V 4150 2550 50  0000 C CNN
F 1 "180Ω" V 4050 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 2550 50  0001 C CNN
F 3 "~" H 4050 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 4050 2550 50  0001 C CNN "Partnumber"
	1    4050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2400 4050 2050
$Comp
L Device:R R13
U 1 1 5D463BB1
P 4800 2550
F 0 "R13" V 4900 2550 50  0000 C CNN
F 1 "180Ω" V 4800 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 2550 50  0001 C CNN
F 3 "~" H 4800 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 4800 2550 50  0001 C CNN "Partnumber"
	1    4800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2400 4800 2050
$Comp
L Device:R R15
U 1 1 5D464276
P 5550 2550
F 0 "R15" V 5650 2550 50  0000 C CNN
F 1 "180Ω" V 5550 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 2550 50  0001 C CNN
F 3 "~" H 5550 2550 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 5550 2550 50  0001 C CNN "Partnumber"
	1    5550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2700 5550 2750
$Comp
L Device:R R11
U 1 1 5D46FF23
P 4400 4500
F 0 "R11" V 4500 4500 50  0000 C CNN
F 1 "180Ω" V 4400 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 4500 50  0001 C CNN
F 3 "~" H 4400 4500 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 4400 4500 50  0001 C CNN "Partnumber"
	1    4400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D475EFA
P 8950 4500
F 0 "R16" V 9050 4500 50  0000 C CNN
F 1 "180Ω" V 8950 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8880 4500 50  0001 C CNN
F 3 "~" H 8950 4500 50  0001 C CNN
F 4 "RC0603JR-07120RL" H 8950 4500 50  0001 C CNN "Partnumber"
	1    8950 4500
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q1
U 1 1 5D4BAE53
P 1050 1850
F 0 "Q1" V 1250 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 800 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1250 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 1250 2150 60  0001 L CNN
F 4 "" H 1250 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 1250 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1250 2450 60  0001 L CNN "Category"
F 7 "" H 1250 2550 60  0001 L CNN "Family"
F 8 "" H 1250 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 1250 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 1250 2850 60  0001 L CNN "Description"
F 11 "" H 1250 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 1250 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 1050 1850 50  0001 C CNN "Partnumber"
	1    1050 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q2
U 1 1 5D4BCAD1
P 1800 1850
F 0 "Q2" V 2000 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 1550 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 2000 2150 60  0001 L CNN
F 4 "" H 2000 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 2000 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2000 2450 60  0001 L CNN "Category"
F 7 "" H 2000 2550 60  0001 L CNN "Family"
F 8 "" H 2000 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 2000 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 2000 2850 60  0001 L CNN "Description"
F 11 "" H 2000 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 2000 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 1800 1850 50  0001 C CNN "Partnumber"
	1    1800 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q3
U 1 1 5D4BDB98
P 2550 1850
F 0 "Q3" V 2750 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 2300 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2750 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 2750 2150 60  0001 L CNN
F 4 "" H 2750 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 2750 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2750 2450 60  0001 L CNN "Category"
F 7 "" H 2750 2550 60  0001 L CNN "Family"
F 8 "" H 2750 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 2750 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 2750 2850 60  0001 L CNN "Description"
F 11 "" H 2750 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 2750 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 2550 1850 50  0001 C CNN "Partnumber"
	1    2550 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q4
U 1 1 5D4BE91D
P 3300 1850
F 0 "Q4" V 3500 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 3050 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 3500 2150 60  0001 L CNN
F 4 "" H 3500 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 3500 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3500 2450 60  0001 L CNN "Category"
F 7 "" H 3500 2550 60  0001 L CNN "Family"
F 8 "" H 3500 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 3500 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 3500 2850 60  0001 L CNN "Description"
F 11 "" H 3500 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 3500 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 3300 1850 50  0001 C CNN "Partnumber"
	1    3300 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q5
U 1 1 5D4BF40E
P 4050 1850
F 0 "Q5" V 4250 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 3800 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4250 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 4250 2150 60  0001 L CNN
F 4 "" H 4250 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 4250 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4250 2450 60  0001 L CNN "Category"
F 7 "" H 4250 2550 60  0001 L CNN "Family"
F 8 "" H 4250 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 4250 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 4250 2850 60  0001 L CNN "Description"
F 11 "" H 4250 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 4250 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 4050 1850 50  0001 C CNN "Partnumber"
	1    4050 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q7
U 1 1 5D4C1C61
P 4800 1850
F 0 "Q7" V 5000 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 4550 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 5000 2150 60  0001 L CNN
F 4 "" H 5000 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 5000 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5000 2450 60  0001 L CNN "Category"
F 7 "" H 5000 2550 60  0001 L CNN "Family"
F 8 "" H 5000 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 5000 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 5000 2850 60  0001 L CNN "Description"
F 11 "" H 5000 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 5000 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 4800 1850 50  0001 C CNN "Partnumber"
	1    4800 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q8
U 1 1 5D4C2BFA
P 5550 1850
F 0 "Q8" V 5750 1850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 5300 1500 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 2050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 5750 2150 60  0001 L CNN
F 4 "" H 5750 2250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 5750 2350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5750 2450 60  0001 L CNN "Category"
F 7 "" H 5750 2550 60  0001 L CNN "Family"
F 8 "" H 5750 2650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 5750 2750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 5750 2850 60  0001 L CNN "Description"
F 11 "" H 5750 2950 60  0001 L CNN "Manufacturer"
F 12 "" H 5750 3050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 5550 1850 50  0001 C CNN "Partnumber"
	1    5550 1850
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q6
U 1 1 5D4C4571
P 4400 4850
F 0 "Q6" V 4600 4850 60  0000 C CNN
F 1 "MMBT3904LT1G" V 4350 5350 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4600 5050 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 4600 5150 60  0001 L CNN
F 4 "" H 4600 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 4600 5350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4600 5450 60  0001 L CNN "Category"
F 7 "" H 4600 5550 60  0001 L CNN "Family"
F 8 "" H 4600 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 4600 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 4600 5850 60  0001 L CNN "Description"
F 11 "" H 4600 5950 60  0001 L CNN "Manufacturer"
F 12 "" H 4600 6050 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 4400 4850 50  0001 C CNN "Partnumber"
	1    4400 4850
	0    -1   1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904LT1G Q9
U 1 1 5D4CBD49
P 9200 4650
F 0 "Q9" V 9400 4650 60  0000 C CNN
F 1 "MMBT3904LT1G" V 9200 5150 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9400 4850 60  0001 L CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MMBT3904LT1-D.PDF" H 9400 4950 60  0001 L CNN
F 4 "" H 9400 5050 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 9400 5150 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9400 5250 60  0001 L CNN "Category"
F 7 "" H 9400 5350 60  0001 L CNN "Family"
F 8 "" H 9400 5450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 9400 5550 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 9400 5650 60  0001 L CNN "Description"
F 11 "" H 9400 5750 60  0001 L CNN "Manufacturer"
F 12 "" H 9400 5850 60  0001 L CNN "Status"
F 13 " MMBT3904LT3G " H 9200 4650 50  0001 C CNN "Partnumber"
	1    9200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3950 8000 4450
Wire Wire Line
	8000 4450 8150 4450
Wire Wire Line
	6650 3950 8000 3950
$EndSCHEMATC
