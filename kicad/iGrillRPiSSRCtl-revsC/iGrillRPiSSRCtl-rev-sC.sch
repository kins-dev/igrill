EESchema Schematic File Version 4
LIBS:iGrillRPiSSRCtl-rev-sC-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "iGrill Smoker SSR Control Board"
Date "2019-07-03"
Rev "*C"
Comp "Redbud Farms"
Comment1 "https://creativecommons.org/licenses/by-nc-sa/4.0/"
Comment2 "License: Creative Commons BY-NC-SA"
Comment3 "https://git.kins.dev/igrill-smoker/"
Comment4 "Author: Scott Atkins (Scott@kins.dev)"
$EndDescr
$Comp
L power:+5V #PWR01
U 1 1 580C1B61
P 6750 2600
F 0 "#PWR01" H 6750 2450 50  0001 C CNN
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
L power:GND #PWR02
U 1 1 580C1D11
P 6650 4800
F 0 "#PWR02" H 6650 4550 50  0001 C CNN
F 1 "GND" H 6650 4650 50  0000 C CNN
F 2 "" H 6650 4800 50  0000 C CNN
F 3 "" H 6650 4800 50  0000 C CNN
	1    6650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2950 6650 3050
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
L power:GND #PWR03
U 1 1 580C1E01
P 5950 4800
F 0 "#PWR03" H 5950 4550 50  0001 C CNN
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
L power:+3.3V #PWR04
U 1 1 580C1BC1
P 5850 2600
F 0 "#PWR04" H 5850 2450 50  0001 C CNN
F 1 "+3.3V" H 5850 2740 50  0000 C CNN
F 2 "" H 5850 2600 50  0000 C CNN
F 3 "" H 5850 2600 50  0000 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3150 6050 3150
Connection ~ 5950 3950
Wire Wire Line
	6050 2850 4900 2850
Wire Wire Line
	4900 2950 6050 2950
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
Text Label 7600 3050 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	6650 2950 6550 2950
Connection ~ 6650 3350
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L iGrillRPiSSRCtl-rev-sC-rescue:Mounting_Hole-Mechanical MK1
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
L iGrillRPiSSRCtl-rev-sC-rescue:Mounting_Hole-Mechanical MK3
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
L iGrillRPiSSRCtl-rev-sC-rescue:Mounting_Hole-Mechanical MK2
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
L iGrillRPiSSRCtl-rev-sC-rescue:Mounting_Hole-Mechanical MK4
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
L power:+5V #PWR0101
U 1 1 5D1449BC
P 7800 4450
F 0 "#PWR0101" H 7800 4300 50  0001 C CNN
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
P 4750 2850
F 0 "R1" V 4650 2850 50  0000 C CNN
F 1 "100Ω" V 4750 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4680 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D14F1BC
P 4750 2950
F 0 "R2" V 4850 2950 50  0000 C CNN
F 1 "68Ω" V 4750 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4680 2950 50  0001 C CNN
F 3 "~" H 4750 2950 50  0001 C CNN
	1    4750 2950
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 5D14FA39
P 4400 2700
F 0 "D1" H 4393 2445 50  0000 C CNN
F 1 "Low Battery" H 4393 2536 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4400 2700 50  0001 C CNN
F 3 "~" H 4400 2700 50  0001 C CNN
	1    4400 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 5D150925
P 4400 3100
F 0 "D2" H 4393 2845 50  0000 C CNN
F 1 "Smoking Complete" V 4450 3550 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4400 3100 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
	1    4400 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2700 4250 2900
Wire Wire Line
	4600 2950 4600 3100
Wire Wire Line
	4600 3100 4550 3100
Wire Wire Line
	4550 2700 4600 2700
Wire Wire Line
	4600 2700 4600 2850
$Comp
L power:+5V #PWR0103
U 1 1 5D15862C
P 4200 2500
F 0 "#PWR0103" H 4200 2350 50  0001 C CNN
F 1 "+5V" H 4200 2640 50  0000 C CNN
F 2 "" H 4200 2500 50  0000 C CNN
F 3 "" H 4200 2500 50  0000 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2500 4200 2900
Wire Wire Line
	4200 2900 4250 2900
Connection ~ 4250 2900
Wire Wire Line
	4250 2900 4250 3100
$Comp
L Device:Buzzer BZ1
U 1 1 5D165E77
P 8800 4450
F 0 "BZ1" V 8758 4602 50  0000 L CNN
F 1 "Buzzer" V 8849 4602 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_TDK_PS1240P02BT_D12.2mm_H6.5mm" V 8775 4550 50  0001 C CNN
F 3 "~" V 8775 4550 50  0001 C CNN
	1    8800 4450
	0    1    1    0   
$EndComp
NoConn ~ 4800 3250
NoConn ~ 4800 3350
NoConn ~ 4800 3450
NoConn ~ 4800 4150
NoConn ~ 4800 4550
NoConn ~ 4850 3100
Wire Wire Line
	4850 3100 4850 3050
Wire Wire Line
	4850 3050 6050 3050
Wire Wire Line
	4800 3250 6050 3250
Wire Wire Line
	4800 3350 6050 3350
Wire Wire Line
	4800 3450 6050 3450
Wire Wire Line
	4800 4150 6050 4150
Wire Wire Line
	4800 4550 6050 4550
NoConn ~ 4800 3650
NoConn ~ 4800 3750
NoConn ~ 4800 3850
Wire Wire Line
	4800 3650 6050 3650
Wire Wire Line
	4800 3750 6050 3750
Wire Wire Line
	4800 3850 6050 3850
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5D19CE23
P 8350 4350
F 0 "SW1" H 8350 4635 50  0000 C CNN
F 1 "Off    On" H 8350 4544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 8350 4350 50  0001 C CNN
F 3 "~" H 8350 4350 50  0001 C CNN
	1    8350 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 4350 8700 4350
Wire Wire Line
	8900 4350 9400 4350
Wire Wire Line
	6550 3150 8150 3150
$Comp
L power:+5V #PWR0102
U 1 1 5D15CC6F
P 9400 4350
F 0 "#PWR0102" H 9400 4200 50  0001 C CNN
F 1 "+5V" H 9400 4490 50  0000 C CNN
F 2 "" H 9400 4350 50  0000 C CNN
F 3 "" H 9400 4350 50  0000 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3950 6650 3950
Connection ~ 6650 3950
Wire Wire Line
	6650 3950 6650 4150
Wire Wire Line
	6650 3950 7800 3950
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
	6550 3250 6650 3250
Connection ~ 6650 3250
Wire Wire Line
	6650 3250 6650 3350
Wire Wire Line
	6650 3250 7800 3250
Wire Wire Line
	6550 3050 6650 3050
Connection ~ 6650 3050
Wire Wire Line
	6650 3050 6650 3250
Wire Wire Line
	6650 3050 7800 3050
Wire Wire Line
	6750 2750 6750 2850
$Comp
L power:+5V #PWR0104
U 1 1 5D16B874
P 8150 2950
F 0 "#PWR0104" H 8150 2800 50  0001 C CNN
F 1 "+5V" H 8150 3090 50  0000 C CNN
F 2 "" H 8150 2950 50  0000 C CNN
F 3 "" H 8150 2950 50  0000 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3150 8150 2950
Wire Wire Line
	6050 4450 4400 4450
Wire Wire Line
	4400 4450 4400 4700
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5D23056E
P 3850 4250
F 0 "SW1" H 3850 4535 50  0000 C CNN
F 1 "Off    On" H 3850 4444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 3850 4250 50  0001 C CNN
F 3 "~" H 3850 4250 50  0001 C CNN
	2    3850 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 4250 6050 4250
$Comp
L power:+5V #PWR0106
U 1 1 5D252AFC
P 3500 4100
F 0 "#PWR0106" H 3500 3950 50  0001 C CNN
F 1 "+5V" H 3515 4273 50  0000 C CNN
F 2 "" H 3500 4100 50  0001 C CNN
F 3 "" H 3500 4100 50  0001 C CNN
	1    3500 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D253FBA
P 3500 4400
F 0 "#PWR0107" H 3500 4150 50  0001 C CNN
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
Wire Wire Line
	3200 4150 3200 4600
Wire Wire Line
	3200 4600 4300 4600
Connection ~ 3500 4150
Wire Wire Line
	4300 4600 4300 4700
NoConn ~ 4800 4350
Wire Wire Line
	4800 4350 6050 4350
Wire Wire Line
	7800 4450 8150 4450
Wire Wire Line
	6550 4250 8150 4250
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D1FC6DA
P 4300 4900
F 0 "J1" V 4172 4712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4263 4712 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4300 4900 50  0001 C CNN
F 3 "~" H 4300 4900 50  0001 C CNN
	1    4300 4900
	0    -1   1    0   
$EndComp
$EndSCHEMATC
