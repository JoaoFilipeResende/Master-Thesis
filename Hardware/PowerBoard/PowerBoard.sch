EESchema Schematic File Version 4
LIBS:PowerBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 2
Title "Battery Management System"
Date "2019-06-29"
Rev "TEDI - 2019"
Comp "ISEP-LSA-INESCTEC"
Comment1 "João Resende 1140569"
Comment2 "Monitorização de duas Baterias LiPo 3S1P 4800mAh"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Battery_Management:LTC6803-4 U4
U 1 1 5C3224BE
P 5950 5100
F 0 "U4" H 5850 3650 50  0000 C CNN
F 1 "LTC6803-4" H 5825 3750 50  0000 C CNN
F 2 "Package_SO:SSOP-44_5.3x12.8mm_P0.5mm" H 5950 5100 50  0001 C CNN
F 3 "http://cds.linear.com/docs/en/datasheet/680324fa.pdf" H 6500 6450 50  0001 C CNN
	1    5950 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C322641
P 700 700
F 0 "J1" H 700 650 50  0000 C CNN
F 1 "Battery" V 800 650 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63-2P-3.96DSA_1x02_P3.96mm_Horizontal" H 700 700 50  0001 C CNN
F 3 "" H 700 700 50  0001 C CNN
	1    700  700 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 4100 5350 4100
Wire Wire Line
	5450 4300 5350 4300
Wire Wire Line
	5450 4500 5350 4500
Wire Wire Line
	5450 4700 5350 4700
Wire Wire Line
	5450 4900 5350 4900
Wire Wire Line
	5450 5100 5350 5100
Text Label 5350 4100 2    50   ~ 0
C1
Text Label 5350 4300 2    50   ~ 0
C2
Text Label 5350 4500 2    50   ~ 0
C3
Text Label 5350 4700 2    50   ~ 0
C4
Text Label 5350 4900 2    50   ~ 0
C5
Text Label 5350 5100 2    50   ~ 0
C6
Wire Wire Line
	5850 6500 5850 6600
NoConn ~ 5450 5600
NoConn ~ 5450 5700
NoConn ~ 5450 5800
NoConn ~ 5450 5900
NoConn ~ 5450 6000
NoConn ~ 5450 6100
NoConn ~ 5450 6200
NoConn ~ 5450 6300
Wire Wire Line
	6450 5500 6650 5500
Wire Wire Line
	6650 5500 6650 5600
Wire Wire Line
	6650 5800 6450 5800
Wire Wire Line
	6450 5700 6650 5700
Connection ~ 6650 5700
Wire Wire Line
	6650 5700 6650 5800
Wire Wire Line
	6450 5600 6650 5600
Connection ~ 6650 5600
Wire Wire Line
	6650 5600 6650 5650
Wire Wire Line
	6650 5650 6725 5650
Connection ~ 6650 5650
Wire Wire Line
	6650 5650 6650 5700
$Comp
L Device:R_Small R15
U 1 1 5C3642B0
P 7000 4525
F 0 "R15" V 7075 4525 50  0000 C CNN
F 1 "1M" V 7000 4525 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 4525 50  0001 C CNN
F 3 "~" H 7000 4525 50  0001 C CNN
	1    7000 4525
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5C3642EE
P 7000 4975
F 0 "R18" V 7075 4975 50  0000 C CNN
F 1 "1M" V 7000 4975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 4975 50  0001 C CNN
F 3 "~" H 7000 4975 50  0001 C CNN
	1    7000 4975
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5C364332
P 7000 4825
F 0 "R17" V 7075 4825 50  0000 C CNN
F 1 "1M" V 7000 4825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 4825 50  0001 C CNN
F 3 "~" H 7000 4825 50  0001 C CNN
	1    7000 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 4600 6775 4600
Wire Wire Line
	6775 4600 6775 4525
Wire Wire Line
	6775 4525 6900 4525
Wire Wire Line
	6450 4900 6775 4900
Wire Wire Line
	6775 4900 6775 4975
Wire Wire Line
	6775 4975 6900 4975
Wire Wire Line
	6450 4800 6775 4800
Text Label 6525 4600 0    50   ~ 0
CS
Text Label 6525 4700 0    50   ~ 0
MISO
Wire Wire Line
	6775 4825 6775 4800
Wire Wire Line
	6775 4825 6900 4825
Text Label 6525 4800 0    50   ~ 0
MOSI
Text Label 6525 4900 0    50   ~ 0
SCLK
Wire Wire Line
	7100 4525 7275 4525
Wire Wire Line
	7275 4975 7100 4975
Wire Wire Line
	7275 4750 7325 4750
Connection ~ 7275 4750
Wire Wire Line
	7275 4750 7275 4825
Wire Wire Line
	7100 4825 7275 4825
Connection ~ 7275 4825
Wire Wire Line
	7275 4825 7275 4975
NoConn ~ 6450 4200
NoConn ~ 6450 4300
NoConn ~ 6450 3900
$Comp
L Device:C_Small C20
U 1 1 5C38903E
P 7100 6475
F 0 "C20" H 6950 6425 50  0000 C CNN
F 1 "1uF" H 6950 6525 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7100 6475 50  0001 C CNN
F 3 "~" H 7100 6475 50  0001 C CNN
	1    7100 6475
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5C38AD8B
P 6750 6475
F 0 "C17" H 6875 6525 50  0000 C CNN
F 1 "1uF" H 6900 6425 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6750 6475 50  0001 C CNN
F 3 "~" H 6750 6475 50  0001 C CNN
	1    6750 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6300 6750 6300
Wire Wire Line
	7100 6375 7100 6200
Wire Wire Line
	7100 6200 6450 6200
Wire Wire Line
	6750 6575 6750 6650
Wire Wire Line
	6750 6650 6925 6650
Wire Wire Line
	7100 6650 7100 6575
Wire Wire Line
	6925 6650 6925 6750
Connection ~ 6925 6650
Wire Wire Line
	6925 6650 7100 6650
Wire Wire Line
	6450 6100 6725 6100
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5C32682C
P 750 5325
F 0 "J6" H 700 5275 50  0000 L CNN
F 1 "XU4 USART" V 850 5075 50  0000 L CNN
F 2 "Connector_JST:JST_GH_SM04B-GHS-TB_1x04-1MP_P1.25mm_Horizontal" H 750 5325 50  0001 C CNN
F 3 "~" H 750 5325 50  0001 C CNN
	1    750  5325
	-1   0    0    1   
$EndComp
Wire Wire Line
	7325 4750 7325 6200
Wire Wire Line
	7325 6200 7100 6200
Connection ~ 7100 6200
$Comp
L Device:R_Small R6
U 1 1 5C58BF7E
P 3925 6200
F 0 "R6" V 4000 6200 50  0000 C CNN
F 1 "100" V 3925 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 6200 50  0001 C CNN
F 3 "~" H 3925 6200 50  0001 C CNN
	1    3925 6200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C58BF86
P 4175 6400
F 0 "C4" H 3975 6475 50  0000 L CNN
F 1 "100nF" H 3850 6375 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 6400 50  0001 C CNN
F 3 "~" H 4175 6400 50  0001 C CNN
	1    4175 6400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5C58BF8E
P 3925 5675
F 0 "R7" V 4000 5675 50  0000 C CNN
F 1 "100" V 3925 5675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 5675 50  0001 C CNN
F 3 "~" H 3925 5675 50  0001 C CNN
	1    3925 5675
	0    1    1    0   
$EndComp
Text Label 4850 6200 0    50   ~ 0
C1
NoConn ~ 5450 5200
NoConn ~ 5450 5400
Wire Wire Line
	5450 3900 5350 3900
$Comp
L power:Earth #PWR024
U 1 1 5C64EDD9
P 6825 5650
F 0 "#PWR024" H 6825 5400 50  0001 C CNN
F 1 "Earth" H 6825 5500 50  0001 C CNN
F 2 "" H 6825 5650 50  0001 C CNN
F 3 "~" H 6825 5650 50  0001 C CNN
	1    6825 5650
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR019
U 1 1 5C64EFED
P 5550 3525
F 0 "#PWR019" H 5550 3275 50  0001 C CNN
F 1 "Earth" H 5550 3375 50  0001 C CNN
F 2 "" H 5550 3525 50  0001 C CNN
F 3 "~" H 5550 3525 50  0001 C CNN
	1    5550 3525
	-1   0    0    -1  
$EndComp
Text Label 6750 9875 0    50   ~ 0
SCLK
Text Label 5700 9675 2    50   ~ 0
CS
Text Label 5700 9875 2    50   ~ 0
MISO
Text Label 5700 9775 2    50   ~ 0
MOSI
Wire Wire Line
	950  4575 1050 4575
$Comp
L power:Earth #PWR013
U 1 1 5C48F147
P 4175 6575
F 0 "#PWR013" H 4175 6325 50  0001 C CNN
F 1 "Earth" H 4175 6425 50  0001 C CNN
F 2 "" H 4175 6575 50  0001 C CNN
F 3 "~" H 4175 6575 50  0001 C CNN
	1    4175 6575
	-1   0    0    -1  
$EndComp
Text Label 950  5225 0    50   ~ 0
UART-
Text Label 950  5325 0    50   ~ 0
UART+
Text Label 6750 9775 0    50   ~ 0
3V3_nucleo
$Comp
L Device:R_Small R1
U 1 1 5C5CED6A
P 2275 10575
F 0 "R1" V 2350 10575 50  0000 C CNN
F 1 "100" V 2275 10575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2275 10575 50  0001 C CNN
F 3 "~" H 2275 10575 50  0001 C CNN
	1    2275 10575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1325 10375 1225 10375
Wire Wire Line
	1325 10175 1225 10175
Text Label 2100 9675 0    50   ~ 0
1V8_XU4
Text Label 950  5125 0    50   ~ 0
1V8_XU4
Text Label 950  5425 0    50   ~ 0
GND_XU4
$Comp
L power:Earth #PWR08
U 1 1 5C77B7D5
P 1725 10950
F 0 "#PWR08" H 1725 10700 50  0001 C CNN
F 1 "Earth" H 1725 10800 50  0001 C CNN
F 2 "" H 1725 10950 50  0001 C CNN
F 3 "~" H 1725 10950 50  0001 C CNN
	1    1725 10950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2125 10175 2475 10175
Wire Wire Line
	2125 10375 2475 10375
Text Label 2475 10175 0    50   ~ 0
UART-
Text Label 2475 10375 0    50   ~ 0
UART+
Text Label 2475 10575 0    50   ~ 0
1V8_XU4
$Comp
L Device:C_Small C2
U 1 1 5C85722B
P 1825 9450
F 0 "C2" H 1917 9496 50  0000 L CNN
F 1 "100nF" H 1917 9405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1825 9450 50  0001 C CNN
F 3 "~" H 1825 9450 50  0001 C CNN
	1    1825 9450
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5C8578DD
P 1625 9450
F 0 "C1" H 1717 9496 50  0000 L CNN
F 1 "100nF" H 1717 9405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1625 9450 50  0001 C CNN
F 3 "~" H 1625 9450 50  0001 C CNN
	1    1625 9450
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR07
U 1 1 5C89E9DE
P 1725 9225
F 0 "#PWR07" H 1725 8975 50  0001 C CNN
F 1 "Earth" H 1725 9075 50  0001 C CNN
F 2 "" H 1725 9225 50  0001 C CNN
F 3 "~" H 1725 9225 50  0001 C CNN
	1    1725 9225
	-1   0    0    -1  
$EndComp
Text Label 5700 8475 2    50   ~ 0
USART1_STM32+
Text Label 5700 8575 2    50   ~ 0
USART1_STM32-
Text Label 3675 6200 2    50   ~ 0
Cell_1
Text Label 3675 5675 2    50   ~ 0
Cell_2
$Comp
L power:Earth #PWR01
U 1 1 5C3F17D2
P 950 5425
F 0 "#PWR01" H 950 5175 50  0001 C CNN
F 1 "Earth" H 950 5275 50  0001 C CNN
F 2 "" H 950 5425 50  0001 C CNN
F 3 "~" H 950 5425 50  0001 C CNN
	1    950  5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 1550 5825 1600
$Comp
L power:Earth #PWR020
U 1 1 5C468264
P 5825 1750
F 0 "#PWR020" H 5825 1500 50  0001 C CNN
F 1 "Earth" H 5825 1600 50  0001 C CNN
F 2 "" H 5825 1750 50  0001 C CNN
F 3 "~" H 5825 1750 50  0001 C CNN
	1    5825 1750
	1    0    0    -1  
$EndComp
Text Label 7100 950  0    50   ~ 0
5V
Text Label 4550 950  2    50   ~ 0
V+
$Comp
L Device:C_Small C16
U 1 1 5C54F30F
P 6675 1275
F 0 "C16" H 6767 1321 50  0000 L CNN
F 1 "10uF" H 6767 1230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6675 1275 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 6675 1275 50  0001 C CNN
F 4 "low-ESR" H 6675 1275 50  0001 C CNN "capacitor"
	1    6675 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 10775 1725 10950
Wire Wire Line
	2375 10575 2475 10575
Wire Wire Line
	2175 10575 2125 10575
Wire Wire Line
	6675 1175 6675 950 
Wire Wire Line
	6675 950  6975 950 
NoConn ~ 5450 5500
NoConn ~ 5450 5300
Wire Wire Line
	950  4050 1050 4050
Wire Wire Line
	950  4150 1050 4150
Text Label 1050 4050 0    50   ~ 0
5V
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C453DEC
P 750 4575
F 0 "J5" H 750 4525 50  0000 C CNN
F 1 "Lights_Power" V 850 4525 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63-2P-3.96DSA_1x02_P3.96mm_Horizontal" H 750 4575 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/phoenix-contact/1935161/277-1667-ND/568614" H 750 4575 50  0001 C CNN
	1    750  4575
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C454340
P 750 4050
F 0 "J3" H 750 4000 50  0000 C CNN
F 1 "XU4_Power" V 850 4000 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63-2P-3.96DSA_1x02_P3.96mm_Horizontal" H 750 4050 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/phoenix-contact/1935161/277-1667-ND/568614" H 750 4050 50  0001 C CNN
	1    750  4050
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 5C457366
P 1050 4175
F 0 "#PWR03" H 1050 3925 50  0001 C CNN
F 1 "Earth" H 1050 4025 50  0001 C CNN
F 2 "" H 1050 4175 50  0001 C CNN
F 3 "~" H 1050 4175 50  0001 C CNN
	1    1050 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5200 6650 5200
Wire Wire Line
	6450 5300 6650 5300
Wire Wire Line
	1050 4175 1050 4150
Wire Wire Line
	6725 6100 6725 5650
Connection ~ 6725 5650
Wire Wire Line
	6725 5650 6725 5250
Wire Wire Line
	6650 5200 6650 5250
Wire Wire Line
	6725 5250 6650 5250
Connection ~ 6650 5250
Wire Wire Line
	6650 5250 6650 5300
$Comp
L power:Earth #PWR014
U 1 1 5C48F0CA
P 4175 6000
F 0 "#PWR014" H 4175 5750 50  0001 C CNN
F 1 "Earth" H 4175 5850 50  0001 C CNN
F 2 "" H 4175 6000 50  0001 C CNN
F 3 "~" H 4175 6000 50  0001 C CNN
	1    4175 6000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C58BF96
P 4175 5850
F 0 "C5" H 4267 5896 50  0000 L CNN
F 1 "100nF" H 4267 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 5850 50  0001 C CNN
F 3 "~" H 4175 5850 50  0001 C CNN
	1    4175 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 5950 4175 6000
Wire Wire Line
	4175 5750 4175 5675
Wire Wire Line
	4175 6500 4175 6575
Wire Wire Line
	1825 9550 1825 9675
Wire Wire Line
	2100 9675 1825 9675
Connection ~ 1825 9675
Wire Wire Line
	1825 9675 1825 9775
Wire Wire Line
	1625 9675 1350 9675
Text Label 1350 9675 2    50   ~ 0
3V3_nucleo
Wire Wire Line
	1625 9550 1625 9675
Connection ~ 1625 9675
Wire Wire Line
	1625 9675 1625 9775
Wire Wire Line
	6750 6300 6750 6375
Wire Wire Line
	6750 8475 6600 8475
Wire Wire Line
	6600 8575 6750 8575
Wire Wire Line
	6750 9775 6600 9775
Wire Wire Line
	5850 8475 5700 8475
Wire Wire Line
	5700 8575 5850 8575
Wire Wire Line
	5850 9775 5700 9775
NoConn ~ 6600 9675
NoConn ~ 6600 9375
NoConn ~ 6600 8675
NoConn ~ 5850 8675
Wire Wire Line
	900  700  1000 700 
Text Label 1000 700  0    50   ~ 0
VBAT+
Wire Wire Line
	6450 4700 6775 4700
Wire Wire Line
	6775 4700 6775 4675
Connection ~ 5825 1600
Wire Wire Line
	5825 1600 5825 1750
Wire Wire Line
	6325 1150 6425 1150
Wire Wire Line
	6425 1150 6425 1275
Wire Wire Line
	6425 1475 6425 1600
Wire Wire Line
	5825 1600 6425 1600
$Comp
L power:Earth #PWR010
U 1 1 5C4C25B9
P 6750 8575
F 0 "#PWR010" H 6750 8325 50  0001 C CNN
F 1 "Earth" H 6750 8425 50  0001 C CNN
F 2 "" H 6750 8575 50  0001 C CNN
F 3 "~" H 6750 8575 50  0001 C CNN
	1    6750 8575
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR06
U 1 1 5C63D10A
P 5550 8750
F 0 "#PWR06" H 5550 8500 50  0001 C CNN
F 1 "Earth" H 5550 8600 50  0001 C CNN
F 2 "" H 5550 8750 50  0001 C CNN
F 3 "~" H 5550 8750 50  0001 C CNN
	1    5550 8750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4025 5675 4175 5675
Wire Wire Line
	5350 3475 5350 3900
Wire Wire Line
	5750 3475 5750 3700
Wire Wire Line
	6725 5650 6825 5650
NoConn ~ 6600 9175
Wire Wire Line
	5850 9675 5700 9675
Wire Wire Line
	6600 9875 6750 9875
$Comp
L Device:R_Small R16
U 1 1 5C61A5BB
P 7000 4675
F 0 "R16" V 6925 4675 50  0000 C CNN
F 1 "1K" V 7000 4675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 4675 50  0001 C CNN
F 3 "~" H 7000 4675 50  0001 C CNN
	1    7000 4675
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 9875 5850 9875
Wire Wire Line
	7275 4525 7275 4675
Wire Wire Line
	6775 4675 6900 4675
Wire Wire Line
	7100 4675 7275 4675
Connection ~ 7275 4675
Wire Wire Line
	7275 4675 7275 4750
NoConn ~ 6600 8775
Text Notes 5700 600  0    50   ~ 0
ODROID: +-5.5V Máx: 4A (20W)
Text Label 1050 4575 0    50   ~ 0
V+
$Comp
L Logic_LevelTranslator:TXB0102DCT U1
U 1 1 5C864F22
P 1725 10275
F 0 "U1" H 1450 10725 50  0000 C CNN
F 1 "TXS0102" H 1425 9800 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 1725 9725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txs0102.pdf" H 1725 10245 50  0001 C CNN
F 4 "https://www.digikey.pt/product-detail/en/texas-instruments/TXS0102DCUR/296-21931-2-ND/1629104" H 1725 10275 50  0001 C CNN "DigiKey"
F 5 "https://pt.mouser.com/ProductDetail/Texas-Instruments/TXS0102DCTR?qs=sGAEpiMZZMsty6Jaj0%252BBBhSJFx%252BE1JcAQ7uSe3kYUHc%3D" H 1725 10275 50  0001 C CNN "Mouser"
	1    1725 10275
	-1   0    0    -1  
$EndComp
Text Label 6775 2450 0    50   ~ 0
12V_nucleo
Wire Wire Line
	5625 2450 5500 2450
Wire Wire Line
	5500 2550 5500 2450
Wire Wire Line
	5500 2750 5500 2900
Wire Wire Line
	5500 2900 5925 2900
Wire Wire Line
	5925 2900 5925 2750
$Comp
L Device:C_Small C15
U 1 1 5C99CFE6
P 6275 2650
F 0 "C15" H 6367 2696 50  0000 L CNN
F 1 "10uF" H 6367 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6275 2650 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 6275 2650 50  0001 C CNN
	1    6275 2650
	1    0    0    -1  
$EndComp
Connection ~ 5925 2900
Wire Wire Line
	5925 2900 5925 3000
$Comp
L power:Earth #PWR022
U 1 1 5C99CFEE
P 5925 3000
F 0 "#PWR022" H 5925 2750 50  0001 C CNN
F 1 "Earth" H 5925 2850 50  0001 C CNN
F 2 "" H 5925 3000 50  0001 C CNN
F 3 "~" H 5925 3000 50  0001 C CNN
	1    5925 3000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7812_TO220 U6
U 1 1 5C99CFF4
P 5925 2450
F 0 "U6" H 5925 2692 50  0000 C CNN
F 1 "R-7812-0.5" H 5925 2601 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 5925 2675 50  0001 C CIN
F 3 "https://pt.mouser.com/datasheet/2/468/R-78Exx-0.5-940995.pdf?fbclid=IwAR3kSO4WLs1LhJ4t27vV5pPJP4q7dtByTJq_kGIPLmC2cv-7elLJX8v6Qz4" H 5925 2400 50  0001 C CNN
F 4 "https://pt.mouser.com/ProductDetail/RECOM-Power/R-78E12-05?qs=%2Fha2pyFaduiyNI99XNc%2FOWOCNwU1%2FmNA892hRpxFMH51M8wA9SNCwg%3D%3D" H 5925 2450 50  0001 C CNN "Mouser"
F 5 "https://www.digikey.pt/products/en?keywords=R-78E12-0.5" H 5925 2450 50  0001 C CNN "DigiKey"
	1    5925 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5C99CFFA
P 5500 2650
F 0 "C13" H 5592 2696 50  0000 L CNN
F 1 "10uF" H 5592 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5500 2650 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 5500 2650 50  0001 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 2900 6275 2900
Wire Wire Line
	6225 2450 6275 2450
Wire Wire Line
	6275 2550 6275 2450
Wire Wire Line
	6275 2750 6275 2900
Wire Wire Line
	5500 2450 5200 2450
Connection ~ 5500 2450
$Comp
L power:Earth #PWR026
U 1 1 5CC42565
P 6925 6750
F 0 "#PWR026" H 6925 6500 50  0001 C CNN
F 1 "Earth" H 6925 6600 50  0001 C CNN
F 2 "" H 6925 6750 50  0001 C CNN
F 3 "~" H 6925 6750 50  0001 C CNN
	1    6925 6750
	1    0    0    -1  
$EndComp
Text Notes 5475 2150 0    50   ~ 0
Nucleo: 12V Máx:500mA
Text Notes 6625 2350 0    50   ~ 0
12V 0.5A
Text Notes 6675 850  0    50   ~ 0
+-5.5V 3A
Connection ~ 6275 2450
Text Label 5850 9175 2    50   ~ 0
STM_Power_Control
Text Label 6750 8475 0    50   ~ 0
12V_nucleo
Wire Wire Line
	6325 950  6675 950 
Connection ~ 6675 950 
$Comp
L power:Earth #PWR02
U 1 1 5CA20012
P 1000 800
F 0 "#PWR02" H 1000 550 50  0001 C CNN
F 1 "Earth" H 1000 650 50  0001 C CNN
F 2 "" H 1000 800 50  0001 C CNN
F 3 "~" H 1000 800 50  0001 C CNN
	1    1000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 1600 6425 1600
Wire Wire Line
	6675 1375 6675 1600
Connection ~ 6425 1600
$Comp
L Device:C_Small C18
U 1 1 5CA0F379
P 6975 1250
F 0 "C18" H 7067 1296 50  0000 L CNN
F 1 "0.1uF" H 7067 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6975 1250 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 6975 1250 50  0001 C CNN
F 4 "low-ESR" H 6975 1250 50  0001 C CNN "capacitor"
	1    6975 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 1150 6975 950 
Connection ~ 6675 1600
Wire Wire Line
	6975 1350 6975 1600
Wire Wire Line
	6975 1600 6675 1600
$Comp
L Device:C_Small C11
U 1 1 5CA6A195
P 4925 1275
F 0 "C11" H 5017 1321 50  0000 L CNN
F 1 "0.1uF" H 5017 1230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4925 1275 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 4925 1275 50  0001 C CNN
F 4 "low-ESR" H 4925 1275 50  0001 C CNN "capacitor"
	1    4925 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 1175 4925 950 
Connection ~ 4925 950 
Wire Wire Line
	4925 1375 4925 1600
$Comp
L Device:C_Small C10
U 1 1 5CAC8767
P 4675 1275
F 0 "C10" H 4450 1275 50  0000 L CNN
F 1 "10uF" H 4450 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4675 1275 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 4675 1275 50  0001 C CNN
F 4 "low-ESR" H 4675 1275 50  0001 C CNN "capacitor"
	1    4675 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 1175 4675 950 
Wire Wire Line
	4675 950  4925 950 
Wire Wire Line
	4675 1375 4675 1600
Wire Wire Line
	4675 1600 4925 1600
Connection ~ 4925 1600
$Comp
L Connector:Conn_01x15_Female J7
U 1 1 5C8FBB00
P 6050 9175
F 0 "J7" H 6050 10000 50  0000 L CNN
F 1 "Nucleo_A1" V 6100 8800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical_SMD_Pin1Left" H 6050 9175 50  0001 C CNN
F 3 "~" H 6050 9175 50  0001 C CNN
	1    6050 9175
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Female J8
U 1 1 5C8FBCE2
P 6400 9175
F 0 "J8" H 6400 10000 50  0000 L CNN
F 1 "Nucleo_A2" V 6450 8800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical_SMD_Pin1Left" H 6400 9175 50  0001 C CNN
F 3 "~" H 6400 9175 50  0001 C CNN
	1    6400 9175
	-1   0    0    -1  
$EndComp
$Comp
L PowerBoard:MURATA_IW1136 U2
U 1 1 5D14F1CA
P 5825 1150
F 0 "U2" H 5825 1617 50  0000 C CNN
F 1 "MURATA_IW1136" H 5825 1526 50  0000 C CNN
F 2 "PowerBoard:IW1136" H 5825 1150 50  0001 C CNN
F 3 "https://power.murata.com/data/power/oki-t36-w40.pdf" H 5825 1150 50  0001 C CNN
F 4 "https://pt.mouser.com/ProductDetail/Murata-Power-Solutions/OKI-T-36W-W40P-C?qs=sGAEpiMZZMt6Q9lZSPl3RQeydCnDOsgADPoUspixSUc%3D" H 5825 1150 50  0001 C CNN "Mouser"
F 5 "https://www.digikey.com/product-detail/en/murata-power-solutions-inc/OKI-T-36W-W40P-C/811-3132-6-ND/5872209" H 5825 1150 50  0001 C CNN "DigiKey"
	1    5825 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 950  5325 950 
Wire Wire Line
	4925 1600 5825 1600
Wire Wire Line
	5350 3475 5550 3475
Wire Wire Line
	5550 3525 5550 3475
Connection ~ 5550 3475
Wire Wire Line
	5550 3475 5750 3475
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5D548D08
P 700 1325
F 0 "J4" H 700 1275 50  0000 C CNN
F 1 "BAT1" V 800 1275 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 700 1325 50  0001 C CNN
F 3 "~" H 700 1325 50  0001 C CNN
	1    700  1325
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5D548E3E
P 700 2025
F 0 "J9" H 700 1975 50  0000 C CNN
F 1 "BAT2" V 800 1975 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B04B-EH-A_1x04_P2.50mm_Vertical" H 700 2025 50  0001 C CNN
F 3 "~" H 700 2025 50  0001 C CNN
	1    700  2025
	-1   0    0    1   
$EndComp
Text Label 1050 1125 0    50   ~ 0
Cell_6
Text Label 1050 1225 0    50   ~ 0
Cell_5
Text Label 1050 1325 0    50   ~ 0
Cell_4
Text Label 1050 1650 0    50   ~ 0
Cell_3
Text Label 1050 1925 0    50   ~ 0
Cell_2
Text Label 1050 2025 0    50   ~ 0
Cell_1
Wire Wire Line
	900  800  1000 800 
Wire Wire Line
	900  1925 1050 1925
Wire Wire Line
	900  2025 1050 2025
Wire Wire Line
	900  2125 1050 2125
Wire Wire Line
	900  1825 1050 1825
Wire Wire Line
	900  1425 1050 1425
Wire Wire Line
	900  1325 1050 1325
Wire Wire Line
	900  1225 1050 1225
Wire Wire Line
	900  1125 1050 1125
$Comp
L power:Earth #PWR04
U 1 1 5D70C5E5
P 1050 2175
F 0 "#PWR04" H 1050 1925 50  0001 C CNN
F 1 "Earth" H 1050 2025 50  0001 C CNN
F 2 "" H 1050 2175 50  0001 C CNN
F 3 "~" H 1050 2175 50  0001 C CNN
	1    1050 2175
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 5D7EC21D
P 725 2775
F 0 "J2" H 725 2725 50  0000 C CNN
F 1 "Charge_CELLs" V 825 2775 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B07B-EH-A_1x07_P2.50mm_Vertical" H 725 2775 50  0001 C CNN
F 3 "~" H 725 2775 50  0001 C CNN
	1    725  2775
	-1   0    0    1   
$EndComp
Wire Wire Line
	925  3075 1075 3075
Wire Wire Line
	925  2975 1075 2975
Wire Wire Line
	925  2875 1075 2875
Wire Wire Line
	925  2775 1075 2775
Wire Wire Line
	925  2675 1075 2675
Wire Wire Line
	925  2575 1075 2575
Wire Wire Line
	925  2475 1075 2475
Wire Wire Line
	1050 1425 1050 1825
Text Label 1075 2975 0    50   ~ 0
Cell_1
Text Label 1075 2875 0    50   ~ 0
Cell_2
Text Label 1075 2775 0    50   ~ 0
Cell_3
Text Label 1075 2675 0    50   ~ 0
Cell_4
Text Label 1075 2575 0    50   ~ 0
Cell_5
Text Label 1075 2475 0    50   ~ 0
Cell_6
Text Label 1050 2125 0    50   ~ 0
Charge_Ground
Wire Wire Line
	1050 2175 1050 2125
Text Label 5200 2450 2    50   ~ 0
V+
Wire Wire Line
	6275 2450 6775 2450
Wire Wire Line
	950  4675 1050 4675
$Comp
L power:Earth #PWR05
U 1 1 5D30B0BA
P 1050 4700
F 0 "#PWR05" H 1050 4450 50  0001 C CNN
F 1 "Earth" H 1050 4550 50  0001 C CNN
F 2 "" H 1050 4700 50  0001 C CNN
F 3 "~" H 1050 4700 50  0001 C CNN
	1    1050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4700 1050 4675
$Sheet
S 2700 625  700  650 
U 5D951C2F
F0 "On/Off Controller with Automatic Turn-On" 50
F1 "file5D951C2E.sch" 50
F2 "VBAT+" I L 2700 750 50 
F3 "V+" O R 3400 750 50 
F4 "Button-" I L 2700 1025 50 
F5 "Button+" I L 2700 900 50 
F6 "~KILL~_uP" I L 2700 1175 50 
F7 "~INT~_uP" O R 3400 975 50 
$EndSheet
Text Label 2575 750  2    50   ~ 0
VBAT+
Text Label 3525 750  0    50   ~ 0
V+
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5D1C3BF2
P 725 3525
F 0 "J10" H 725 3475 50  0000 C CNN
F 1 "ON/OFF Button" V 825 3475 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 725 3525 50  0001 C CNN
F 3 "https://bluerobotics.com/store/electronics/switch-10-5a-r1/" H 725 3525 50  0001 C CNN
	1    725  3525
	-1   0    0    1   
$EndComp
Text Label 925  3525 0    50   ~ 0
Button_-
Text Label 925  3425 0    50   ~ 0
Button_+
Wire Wire Line
	3400 750  3525 750 
Wire Wire Line
	2575 750  2700 750 
Text Label 2575 900  2    50   ~ 0
Button_+
Wire Wire Line
	2575 900  2700 900 
Text Label 2575 1025 2    50   ~ 0
Button_-
Wire Wire Line
	2575 1025 2700 1025
Wire Wire Line
	4025 6200 4175 6200
Wire Wire Line
	4175 6200 4175 6300
Connection ~ 4175 6200
Connection ~ 4175 5675
$Comp
L Device:R_Small R36
U 1 1 5D6243D1
P 3925 5150
F 0 "R36" V 4000 5150 50  0000 C CNN
F 1 "100" V 3925 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 5150 50  0001 C CNN
F 3 "~" H 3925 5150 50  0001 C CNN
	1    3925 5150
	0    1    1    0   
$EndComp
Text Label 3675 5150 2    50   ~ 0
Cell_3
$Comp
L power:Earth #PWR0101
U 1 1 5D6243DA
P 4175 5475
F 0 "#PWR0101" H 4175 5225 50  0001 C CNN
F 1 "Earth" H 4175 5325 50  0001 C CNN
F 2 "" H 4175 5475 50  0001 C CNN
F 3 "~" H 4175 5475 50  0001 C CNN
	1    4175 5475
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D6243E0
P 4175 5325
F 0 "C9" H 4267 5371 50  0000 L CNN
F 1 "100nF" H 4267 5280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 5325 50  0001 C CNN
F 3 "~" H 4175 5325 50  0001 C CNN
	1    4175 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 5425 4175 5475
Wire Wire Line
	4175 5225 4175 5150
Wire Wire Line
	4025 5150 4175 5150
Text Label 4850 5150 0    50   ~ 0
C3
Connection ~ 4175 5150
$Comp
L Device:R_Small R35
U 1 1 5D6746D0
P 3925 4650
F 0 "R35" V 4000 4650 50  0000 C CNN
F 1 "100" V 3925 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 4650 50  0001 C CNN
F 3 "~" H 3925 4650 50  0001 C CNN
	1    3925 4650
	0    1    1    0   
$EndComp
Text Label 3675 4650 2    50   ~ 0
Cell_4
$Comp
L power:Earth #PWR0102
U 1 1 5D6746D9
P 4175 4975
F 0 "#PWR0102" H 4175 4725 50  0001 C CNN
F 1 "Earth" H 4175 4825 50  0001 C CNN
F 2 "" H 4175 4975 50  0001 C CNN
F 3 "~" H 4175 4975 50  0001 C CNN
	1    4175 4975
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D6746DF
P 4175 4825
F 0 "C8" H 4267 4871 50  0000 L CNN
F 1 "100nF" H 4267 4780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 4825 50  0001 C CNN
F 3 "~" H 4175 4825 50  0001 C CNN
	1    4175 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 4925 4175 4975
Wire Wire Line
	4175 4725 4175 4650
Wire Wire Line
	4025 4650 4175 4650
Text Label 4850 4650 0    50   ~ 0
C4
Connection ~ 4175 4650
$Comp
L Device:R_Small R34
U 1 1 5D68A069
P 3925 4150
F 0 "R34" V 4000 4150 50  0000 C CNN
F 1 "100" V 3925 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 4150 50  0001 C CNN
F 3 "~" H 3925 4150 50  0001 C CNN
	1    3925 4150
	0    1    1    0   
$EndComp
Text Label 3675 4150 2    50   ~ 0
Cell_5
$Comp
L power:Earth #PWR0103
U 1 1 5D68A072
P 4175 4475
F 0 "#PWR0103" H 4175 4225 50  0001 C CNN
F 1 "Earth" H 4175 4325 50  0001 C CNN
F 2 "" H 4175 4475 50  0001 C CNN
F 3 "~" H 4175 4475 50  0001 C CNN
	1    4175 4475
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5D68A078
P 4175 4325
F 0 "C7" H 4267 4371 50  0000 L CNN
F 1 "100nF" H 4267 4280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 4325 50  0001 C CNN
F 3 "~" H 4175 4325 50  0001 C CNN
	1    4175 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 4425 4175 4475
Wire Wire Line
	4175 4225 4175 4150
Wire Wire Line
	4025 4150 4175 4150
Text Label 4850 4150 0    50   ~ 0
C5
Connection ~ 4175 4150
$Comp
L Device:R_Small R33
U 1 1 5D6A2454
P 3925 3650
F 0 "R33" V 4000 3650 50  0000 C CNN
F 1 "100" V 3925 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3925 3650 50  0001 C CNN
F 3 "~" H 3925 3650 50  0001 C CNN
	1    3925 3650
	0    1    1    0   
$EndComp
Text Label 3675 3650 2    50   ~ 0
Cell_6
$Comp
L power:Earth #PWR0104
U 1 1 5D6A245D
P 4175 3975
F 0 "#PWR0104" H 4175 3725 50  0001 C CNN
F 1 "Earth" H 4175 3825 50  0001 C CNN
F 2 "" H 4175 3975 50  0001 C CNN
F 3 "~" H 4175 3975 50  0001 C CNN
	1    4175 3975
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D6A2463
P 4175 3825
F 0 "C6" H 4267 3871 50  0000 L CNN
F 1 "100nF" H 4267 3780 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4175 3825 50  0001 C CNN
F 3 "~" H 4175 3825 50  0001 C CNN
	1    4175 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 3925 4175 3975
Wire Wire Line
	4175 3725 4175 3650
Wire Wire Line
	4025 3650 4175 3650
Text Label 4850 3650 0    50   ~ 0
C6
Connection ~ 4175 3650
Wire Wire Line
	2575 1175 2700 1175
Text Label 2575 1175 2    50   ~ 0
STM_Power_Control
Text Label 4850 5675 0    50   ~ 0
C2
Text Label 1375 7650 2    50   ~ 0
RGB_R
Text Label 1375 7750 2    50   ~ 0
RGB_G
Text Label 1375 7850 2    50   ~ 0
RGB_B
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 5D2470E5
P 1575 7750
F 0 "J11" H 1525 7700 50  0000 L CNN
F 1 "RGB" V 1675 7600 50  0000 L CNN
F 2 "Connector_JST:JST_GH_SM04B-GHS-TB_1x04-1MP_P1.25mm_Horizontal" H 1575 7750 50  0001 C CNN
F 3 "~" H 1575 7750 50  0001 C CNN
	1    1575 7750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0107
U 1 1 5D269DAA
P 1375 7950
F 0 "#PWR0107" H 1375 7700 50  0001 C CNN
F 1 "Earth" H 1375 7800 50  0001 C CNN
F 2 "" H 1375 7950 50  0001 C CNN
F 3 "~" H 1375 7950 50  0001 C CNN
	1    1375 7950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4175 3650 4850 3650
Wire Wire Line
	4175 4150 4850 4150
Wire Wire Line
	3675 4150 3825 4150
Wire Wire Line
	3675 3650 3825 3650
Wire Wire Line
	4175 4650 4850 4650
Wire Wire Line
	3675 4650 3825 4650
Wire Wire Line
	3675 5150 3825 5150
Wire Wire Line
	4175 5150 4850 5150
Wire Wire Line
	3675 5675 3825 5675
Wire Wire Line
	4175 5675 4850 5675
Wire Wire Line
	4175 6200 4850 6200
Wire Wire Line
	3675 6200 3825 6200
NoConn ~ 5325 1150
$Comp
L Device:R_Small R8
U 1 1 5D253F13
P 6425 1375
F 0 "R8" V 6350 1375 50  0000 C CNN
F 1 "21K" V 6425 1375 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6425 1375 50  0001 C CNN
F 3 "~" H 6425 1375 50  0001 C CNN
	1    6425 1375
	1    0    0    -1  
$EndComp
Text Notes 2225 10375 0    50   ~ 0
tx\n
Text Notes 2250 10175 0    50   ~ 0
rx\n
NoConn ~ 6600 9275
NoConn ~ 6600 9475
Text Label 6600 8975 0    50   ~ 0
RGB_R
Text Label 6600 9075 0    50   ~ 0
RGB_G
Text Label 5850 8975 2    50   ~ 0
RGB_B
Text Label 1225 10375 2    50   ~ 0
USART1_STM32-
Text Label 1225 10175 2    50   ~ 0
USART1_STM32+
Text Label 3400 975  0    50   ~ 0
STM_Power_~Int~
Text Label 4750 8875 1    50   ~ 0
STM_Power_~Int~
$Comp
L Device:R_Small R9
U 1 1 5D2C29F2
P 4750 9025
F 0 "R9" V 4675 9025 50  0000 C CNN
F 1 "1M" V 4750 9025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4750 9025 50  0001 C CNN
F 3 "~" H 4750 9025 50  0001 C CNN
	1    4750 9025
	-1   0    0    1   
$EndComp
NoConn ~ 5850 9375
Text Notes 5600 8975 2    39   ~ 0
PB_0 (AF - TIM3_CH3)\n
Text Notes 6875 8950 0    39   ~ 0
PA_7 (AF - TIM3_CH2)\n
Text Notes 6875 9050 0    39   ~ 0
PA_6 (AF - TIM3_CH1)\n
Text Notes 4650 8725 3    50   ~ 0
PA12 EXTI15_10_IRQ\n(FT 5V tolerant)\n
Wire Wire Line
	4750 8925 4750 8875
Wire Wire Line
	4750 9125 4750 9300
Text Label 4750 9300 3    50   ~ 0
3V3_nucleo
Text Notes 5725 9250 2    39   ~ 0
(OPEN DRAIN)\n
Wire Wire Line
	4550 950  4675 950 
Connection ~ 4675 950 
Wire Wire Line
	6975 950  7100 950 
Connection ~ 6975 950 
NoConn ~ 5450 4000
NoConn ~ 5450 4200
NoConn ~ 5450 4400
NoConn ~ 5450 4600
NoConn ~ 5450 4800
NoConn ~ 5450 5000
Wire Wire Line
	1725 9225 1725 9175
Wire Wire Line
	1625 9175 1625 9350
Wire Wire Line
	1825 9175 1825 9350
Wire Wire Line
	1625 9175 1725 9175
Connection ~ 1725 9175
Wire Wire Line
	1725 9175 1825 9175
Wire Wire Line
	4750 8875 5850 8875
NoConn ~ 6600 9575
Text Label 5850 6600 3    50   ~ 0
C6
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5D5254C4
P 1750 2475
F 0 "J12" H 1750 2425 50  0000 C CNN
F 1 "Battery_in" V 1850 2425 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63-2P-3.96DSA_1x02_P3.96mm_Horizontal" H 1750 2475 50  0001 C CNN
F 3 "" H 1750 2475 50  0001 C CNN
	1    1750 2475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 2475 2050 2475
$Comp
L power:Earth #PWR0105
U 1 1 5D5254CC
P 2050 2575
F 0 "#PWR0105" H 2050 2325 50  0001 C CNN
F 1 "Earth" H 2050 2425 50  0001 C CNN
F 2 "" H 2050 2575 50  0001 C CNN
F 3 "~" H 2050 2575 50  0001 C CNN
	1    2050 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2575 2050 2575
$Comp
L power:Earth #PWR0108
U 1 1 5D531A51
P 1075 3075
F 0 "#PWR0108" H 1075 2825 50  0001 C CNN
F 1 "Earth" H 1075 2925 50  0001 C CNN
F 2 "" H 1075 3075 50  0001 C CNN
F 3 "~" H 1075 3075 50  0001 C CNN
	1    1075 3075
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5D5393A3
P 1750 2925
F 0 "J13" H 1750 2875 50  0000 C CNN
F 1 "Battery_out" V 1850 2875 50  0000 C CNN
F 2 "Connector_Hirose:Hirose_DF63-2P-3.96DSA_1x02_P3.96mm_Horizontal" H 1750 2925 50  0001 C CNN
F 3 "" H 1750 2925 50  0001 C CNN
	1    1750 2925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 2925 2050 2925
$Comp
L power:Earth #PWR0109
U 1 1 5D5393AA
P 2050 3025
F 0 "#PWR0109" H 2050 2775 50  0001 C CNN
F 1 "Earth" H 2050 2875 50  0001 C CNN
F 2 "" H 2050 3025 50  0001 C CNN
F 3 "~" H 2050 3025 50  0001 C CNN
	1    2050 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3025 2050 3025
Text Label 2050 2475 0    50   ~ 0
VBAT+
Text Label 2050 2925 0    50   ~ 0
VBAT+
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5D553A14
P 1750 3525
F 0 "J14" H 1750 3475 50  0000 C CNN
F 1 "VBAT+" V 1850 3475 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 1750 3525 50  0001 C CNN
F 3 "https://bluerobotics.com/store/electronics/switch-10-5a-r1/" H 1750 3525 50  0001 C CNN
	1    1750 3525
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 3425 2050 3425
$Comp
L power:Earth #PWR0110
U 1 1 5D5600C4
P 2050 3525
F 0 "#PWR0110" H 2050 3275 50  0001 C CNN
F 1 "Earth" H 2050 3375 50  0001 C CNN
F 2 "" H 2050 3525 50  0001 C CNN
F 3 "~" H 2050 3525 50  0001 C CNN
	1    2050 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3525 2050 3525
Text Label 2050 3425 0    50   ~ 0
VBAT+
Wire Wire Line
	5550 8750 5850 8750
Wire Wire Line
	5850 8750 5850 8775
$EndSCHEMATC
