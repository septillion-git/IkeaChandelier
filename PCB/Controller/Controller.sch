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
LIBS:user_device
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TRIAC U?
U 1 1 579DD80E
P 7900 2500
F 0 "U?" H 7650 2850 50  0000 C CNN
F 1 "TRIAC" H 7600 2250 50  0000 C CNN
F 2 "" H 7900 2500 50  0000 C CNN
F 3 "" H 7900 2500 50  0000 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
$Comp
L MOC3021M U?
U 1 1 579DD8D3
P 6300 2450
F 0 "U?" H 6090 2640 50  0000 L CNN
F 1 "MOC3021M" H 6300 2650 50  0000 L CNN
F 2 "DIP-6" H 6100 2250 50  0000 L CIN
F 3 "" H 6275 2450 50  0000 L CNN
	1    6300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2350 6700 2350
Wire Wire Line
	6700 2350 6700 2000
Wire Wire Line
	7900 1800 7900 2100
Wire Wire Line
	7400 2700 6700 2700
Wire Wire Line
	6700 2700 6700 2550
Wire Wire Line
	6700 2550 6600 2550
Wire Wire Line
	7900 1800 8900 1800
Connection ~ 7900 2000
Wire Wire Line
	7900 2750 7900 2850
Wire Wire Line
	7900 2850 8900 2850
$Comp
L R R?
U 1 1 579DD9F3
P 7150 2000
F 0 "R?" V 7230 2000 50  0000 C CNN
F 1 "180R" V 7150 2000 50  0000 C CNN
F 2 "" V 7080 2000 50  0000 C CNN
F 3 "" H 7150 2000 50  0000 C CNN
	1    7150 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 2000 7000 2000
Wire Wire Line
	7300 2000 7900 2000
Text Label 8900 1800 0    60   ~ 0
Fase
Text Label 8900 2850 0    60   ~ 0
load
$Comp
L GND #PWR?
U 1 1 579DDABA
P 5800 2650
F 0 "#PWR?" H 5800 2400 50  0001 C CNN
F 1 "GND" H 5800 2500 50  0000 C CNN
F 2 "" H 5800 2650 50  0000 C CNN
F 3 "" H 5800 2650 50  0000 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2650 5800 2550
Wire Wire Line
	5800 2550 6000 2550
$Comp
L R R?
U 1 1 579DDAF8
P 5650 2350
F 0 "R?" V 5730 2350 50  0000 C CNN
F 1 "390R" V 5650 2350 50  0000 C CNN
F 2 "" V 5580 2350 50  0000 C CNN
F 3 "" H 5650 2350 50  0000 C CNN
	1    5650 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2350 6000 2350
Wire Wire Line
	5150 2350 5500 2350
Text Label 5150 2350 2    60   ~ 0
trigger
$Comp
L PC817 U?
U 1 1 579DDBE1
P 6300 3800
F 0 "U?" H 6100 4000 50  0000 L CNN
F 1 "PC817" H 6300 4000 50  0000 L CNN
F 2 "DIP-4" H 6100 3600 50  0000 L CIN
F 3 "" H 6300 3800 50  0000 L CNN
	1    6300 3800
	-1   0    0    -1  
$EndComp
$Comp
L DIODE_BRIDGE D?
U 1 1 579DDCB1
P 8100 3800
F 0 "D?" H 8100 4000 60  0000 C CNN
F 1 "DIODE_BRIDGE" H 8100 3600 60  0000 C CNN
F 2 "" H 8100 3800 60  0000 C CNN
F 3 "" H 8100 3800 60  0000 C CNN
	1    8100 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 1800 8650 3700
Wire Wire Line
	8650 3700 8450 3700
Connection ~ 8650 1800
Wire Wire Line
	8450 3900 8900 3900
Text Label 8900 3900 0    60   ~ 0
Nul
$Comp
L R R?
U 1 1 579DDED4
P 7200 3700
F 0 "R?" V 7280 3700 50  0000 C CNN
F 1 "120k" V 7200 3700 50  0000 C CNN
F 2 "" V 7130 3700 50  0000 C CNN
F 3 "" H 7200 3700 50  0000 C CNN
	1    7200 3700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 579DDF18
P 7200 3900
F 0 "R?" V 7280 3900 50  0000 C CNN
F 1 "120k" V 7200 3900 50  0000 C CNN
F 2 "" V 7130 3900 50  0000 C CNN
F 3 "" H 7200 3900 50  0000 C CNN
	1    7200 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3700 7050 3700
Wire Wire Line
	7050 3900 6600 3900
Wire Wire Line
	7350 3900 7750 3900
Wire Wire Line
	7750 3700 7350 3700
$Comp
L GND #PWR?
U 1 1 579DE13F
P 5900 3950
F 0 "#PWR?" H 5900 3700 50  0001 C CNN
F 1 "GND" H 5900 3800 50  0000 C CNN
F 2 "" H 5900 3950 50  0000 C CNN
F 3 "" H 5900 3950 50  0000 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3950 5900 3900
Wire Wire Line
	5900 3900 6000 3900
Wire Wire Line
	6000 3700 5150 3700
Text Label 5150 3700 2    60   ~ 0
zeroCross
$EndSCHEMATC
