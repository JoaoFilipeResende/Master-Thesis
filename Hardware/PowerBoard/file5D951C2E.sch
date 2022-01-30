EESchema Schematic File Version 4
LIBS:PowerBoard-cache
EELAYER 26 0
EELAYER END
$Descr User 8268 7874
encoding utf-8
Sheet 2 2
Title "Pushbutton On/Off Controller with Automatic Turn-On"
Date "2019-07-01"
Rev "TEDI - 2019"
Comp "ISEP-LSA-INESCTEC "
Comment1 "João Resende 1140569"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 1625 2550 1700
$Comp
L PowerBoard:RELE-FINDER U3
U 1 1 5D99AAA0
P 2250 1275
F 0 "U3" H 2250 1575 50  0000 L CNN
F 1 "FINDER (34.81.7.024.9024)" H 1675 1675 50  0000 L CNN
F 2 "PowerBoard:Relay_SPDT_Finder_34.81_Vertical" H 2400 1375 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/34/EN/S34EN.pdf" H 2400 1375 50  0001 C CNN
F 4 "https://www.digikey.com/products/en?keywords=%09%2034.81.7.024.9024" H 2250 1275 50  0001 C CNN "DigiKey"
F 5 "https://pt.farnell.com/finder/34-81-7-024-9024/ssr-2a-24vdc/dp/1169344?ost=1169344&ddkey=https%3Apt-PT%2FElement14_Portugal%2Fsearch" H 2250 1275 50  0001 C CNN "Farnell"
	1    2250 1275
	1    0    0    -1  
$EndComp
Text Label 2100 1850 3    50   ~ 0
A1+
Wire Wire Line
	2400 1625 2400 1850
Wire Wire Line
	2100 1625 2100 1850
Wire Wire Line
	1950 1625 1950 1900
Text Label 3200 4050 2    50   ~ 0
~EN
$Comp
L Device:C_Small C12
U 1 1 5D99AAB6
P 2725 4425
F 0 "C12" H 2817 4471 50  0000 L CNN
F 1 "10nF" H 2817 4380 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2725 4425 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 2725 4425 50  0001 C CNN
F 4 "low-ESR" H 2725 4425 50  0001 C CNN "capacitor"
	1    2725 4425
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR012
U 1 1 5D99AABD
P 2725 4625
F 0 "#PWR012" H 2725 4375 50  0001 C CNN
F 1 "Earth" H 2725 4475 50  0001 C CNN
F 2 "" H 2725 4625 50  0001 C CNN
F 3 "~" H 2725 4625 50  0001 C CNN
	1    2725 4625
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 5D99AAC5
P 1950 1900
F 0 "#PWR09" H 1950 1650 50  0001 C CNN
F 1 "Earth" H 1950 1750 50  0001 C CNN
F 2 "" H 1950 1900 50  0001 C CNN
F 3 "~" H 1950 1900 50  0001 C CNN
	1    1950 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D99AACB
P 3875 1525
F 0 "R4" V 3775 1525 50  0000 C CNN
F 1 "100k" V 3875 1525 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3805 1525 50  0001 C CNN
F 3 "~" H 3875 1525 50  0001 C CNN
	1    3875 1525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D99AADA
P 4250 1350
F 0 "R5" V 4150 1350 50  0000 C CNN
F 1 "100k" V 4250 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 1350 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1200 4250 1075
Wire Wire Line
	4075 1075 4250 1075
Text Label 3475 1075 2    50   ~ 0
A1+
Wire Wire Line
	3475 1075 3675 1075
Wire Wire Line
	3875 1675 3875 1750
Wire Wire Line
	3875 1750 4250 1750
Wire Wire Line
	4250 1750 4250 1500
Wire Wire Line
	3875 1750 3875 2025
Connection ~ 3875 1750
Text Notes 3750 3950 0    50   ~ 0
VIN=40V\nIIN=3uA\nV~INT~=6V
Connection ~ 4250 1075
Wire Wire Line
	2725 4250 2725 4325
Wire Wire Line
	2725 4525 2725 4625
$Comp
L Device:R R13
U 1 1 5D99AAF0
P 4650 1325
F 0 "R13" V 4550 1325 50  0000 C CNN
F 1 "2M" V 4650 1325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 1325 50  0001 C CNN
F 3 "~" H 4650 1325 50  0001 C CNN
	1    4650 1325
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D99AAF7
P 4650 2075
F 0 "R14" V 4550 2075 50  0000 C CNN
F 1 "100k" V 4650 2075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 2075 50  0001 C CNN
F 3 "~" H 4650 2075 50  0001 C CNN
	1    4650 2075
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth #PWR021
U 1 1 5D99AAFE
P 4650 2325
F 0 "#PWR021" H 4650 2075 50  0001 C CNN
F 1 "Earth" H 4650 2175 50  0001 C CNN
F 2 "" H 4650 2325 50  0001 C CNN
F 3 "~" H 4650 2325 50  0001 C CNN
	1    4650 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1475 4650 1500
Text Notes 5300 1250 0    50   ~ 0
Note: The  resistor  values  should  be  as  large  \nas  possible, but  small enough to keep leakage \ncurrents from tripping the 0.8V KILL comparator. 
Wire Wire Line
	2600 4250 2725 4250
Connection ~ 2725 4250
Wire Wire Line
	6100 3850 6275 3850
NoConn ~ 3200 4450
NoConn ~ 3200 3850
$Comp
L power:Earth #PWR023
U 1 1 5D99AB39
P 3900 4900
F 0 "#PWR023" H 3900 4650 50  0001 C CNN
F 1 "Earth" H 3900 4750 50  0001 C CNN
F 2 "" H 3900 4900 50  0001 C CNN
F 3 "~" H 3900 4900 50  0001 C CNN
	1    3900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4800 3900 4900
Wire Wire Line
	4600 3650 4600 3375
Wire Wire Line
	4600 3375 4875 3375
Wire Wire Line
	4875 3375 4875 3425
$Comp
L power:Earth #PWR025
U 1 1 5D99AB43
P 4875 3425
F 0 "#PWR025" H 4875 3175 50  0001 C CNN
F 1 "Earth" H 4875 3275 50  0001 C CNN
F 2 "" H 4875 3425 50  0001 C CNN
F 3 "~" H 4875 3425 50  0001 C CNN
	1    4875 3425
	1    0    0    -1  
$EndComp
Text Label 3875 2025 3    50   ~ 0
~EN
Text HLabel 2400 1850 3    50   Input ~ 0
VBAT+
Text HLabel 2550 1700 3    50   Output ~ 0
V+
Text HLabel 4875 1075 2    50   Input ~ 0
VBAT+
Text HLabel 6275 3850 2    50   Input ~ 0
VBAT+
Text HLabel 2200 4250 0    50   Input ~ 0
VBAT+
Text HLabel 6000 3850 1    50   Input ~ 0
Button-
Text HLabel 6100 3850 1    50   Input ~ 0
Button+
$Comp
L Device:R R3
U 1 1 5D27AB52
P 2450 4250
F 0 "R3" V 2375 4250 50  0000 C CNN
F 1 "1K" V 2450 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 4250 50  0001 C CNN
F 3 "~" H 2450 4250 50  0001 C CNN
	1    2450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4250 2300 4250
$Comp
L Device:C_Small C14
U 1 1 5D1C5870
P 4975 2075
F 0 "C14" H 5067 2121 50  0000 L CNN
F 1 "0.1uF" H 5067 2030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4975 2075 50  0001 C CNN
F 3 "https://www.digikey.pt/product-detail/en/samsung-electro-mechanics/CL31B106MOHNNNE/1276-6641-1-ND/5961500" H 4975 2075 50  0001 C CNN
F 4 "low-ESR" H 4975 2075 50  0001 C CNN "capacitor"
	1    4975 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1800 4650 1850
Wire Wire Line
	4650 2225 4650 2250
Wire Wire Line
	4650 1900 4975 1900
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 4650 1925
Wire Wire Line
	4975 2250 4650 2250
Connection ~ 4650 2250
Wire Wire Line
	4650 2250 4650 2325
Wire Wire Line
	4975 1975 4975 1900
Wire Wire Line
	4975 2250 4975 2175
Text HLabel 4600 4050 2    50   Input ~ 0
~KILL~_uP
Text HLabel 5150 1850 2    50   Input ~ 0
~KILL~_uP
Text HLabel 3200 3650 0    50   Output ~ 0
~INT~_uP
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5D3271D8
P 3875 1175
F 0 "Q1" V 4218 1175 50  0000 C CNN
F 1 "Q_PMOS_GSD" V 4127 1175 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23_HandSoldering" H 4075 1275 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/308/NTR5105P-D-600468.pdf" H 3875 1175 50  0001 C CNN
F 4 "https://pt.mouser.com/ProductDetail/ON-Semiconductor/NTR5105PT1G?qs=sGAEpiMZZMshyDBzk1%2FWi7kJum3VNcM%2FhnlnALfpUwNSKkPS8STUiA%3D%3D" V 3875 1175 50  0001 C CNN "Mouser"
F 5 "https://www.digikey.com/product-detail/en/on-semiconductor/NTR5105PT1G/NTR5105PT1GOSCT-ND/8538811" V 3875 1175 50  0001 C CNN "DigiKey"
	1    3875 1175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5D32A6CF
P 5800 4075
F 0 "R10" V 5725 4075 50  0000 C CNN
F 1 "10K" V 5800 4075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 4075 50  0001 C CNN
F 3 "~" H 5800 4075 50  0001 C CNN
	1    5800 4075
	-1   0    0    1   
$EndComp
Wire Wire Line
	2725 4250 3075 4250
$Comp
L power:Earth #PWR0106
U 1 1 5D336FFC
P 5800 4300
F 0 "#PWR0106" H 5800 4050 50  0001 C CNN
F 1 "Earth" H 5800 4150 50  0001 C CNN
F 2 "" H 5800 4300 50  0001 C CNN
F 3 "~" H 5800 4300 50  0001 C CNN
	1    5800 4300
	1    0    0    -1  
$EndComp
Connection ~ 3075 4250
Wire Wire Line
	3075 4250 3200 4250
$Comp
L PowerBoard:LTC2955CDDB-2-TRMPBF U5
U 1 1 5D99AB21
P 3900 4050
F 0 "U5" H 3900 4737 60  0000 C CNN
F 1 "LTC2955IDDB-2-TRMPBF" H 3900 4631 60  0000 C CNN
F 2 "Package_DFN_QFN:DFN-10-1EP_2x3mm_P0.5mm_EP0.64x2.4mm" H 3900 3500 60  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/1329/0900766b81329f93.pdf" H 300 7050 60  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/linear-technology-analog-devices/LTC2955IDDB-2-TRMPBF/LTC2955IDDB-2-TRMPBFCT-ND/3065185" H 3900 4050 50  0001 C CNN "Digikey"
F 5 "https://pt.mouser.com/ProductDetail/Analog-Devices/LTC2955IDDB-2TRMPBF?qs=sGAEpiMZZMunEhqKs81nFEtES0Ya5yTTqPIMe4xx%252BzE%3D" H 3900 4050 50  0001 C CNN "Mouser"
	1    3900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 5100 4600 5100
Wire Wire Line
	3075 4250 3075 5100
Wire Wire Line
	4600 4450 4600 5100
Wire Wire Line
	4600 3850 5800 3850
Wire Wire Line
	5800 3925 5800 3850
Connection ~ 5800 3850
Wire Wire Line
	5800 3850 6000 3850
Wire Wire Line
	5800 4300 5800 4225
Wire Wire Line
	4250 1075 4650 1075
Wire Wire Line
	4650 1175 4650 1075
Connection ~ 4650 1075
Wire Wire Line
	4650 1075 4875 1075
NoConn ~ 4600 4250
$Comp
L Device:R R11
U 1 1 5D36B18C
P 4650 1650
F 0 "R11" V 4550 1650 50  0000 C CNN
F 1 "150K" V 4650 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4580 1650 50  0001 C CNN
F 3 "~" H 4650 1650 50  0001 C CNN
	1    4650 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 1850 5150 1850
Connection ~ 4650 1850
Wire Wire Line
	4650 1850 4650 1900
Text Notes 800  5075 0    50   ~ 0
VIN: Power Supply Input. For > 20V applications, connect \nVIN to the power source through a 1k resistor and bypass \nVIN to GND with a 10nF low ESR capacitor.
Text Notes 4600 5100 0    50   ~ 0
Connect SEL to VIN to allow both\nthe ON pin rising and falling edges \nto activate system turn-on and turn-off respectively. 
$EndSCHEMATC
