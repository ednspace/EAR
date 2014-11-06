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
LIBS:special
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
LIBS:TapTempo-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "6 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 638150 -348800 0    60   Input ~ 0
Gate_IN
Text GLabel 1000 6450 0    60   Input ~ 0
Gatein
$Comp
L PIC12F629 U1
U 1 1 545AF249
P 5600 2400
F 0 "U1" H 5550 2400 60  0000 C CNN
F 1 "PIC12F1822" H 5600 3150 60  0000 C CNN
F 2 "~" H 5600 2400 60  0000 C CNN
F 3 "" H 5600 2400 60  0000 C CNN
	1    5600 2400
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q1
U 1 1 545AF35E
P 2050 6450
F 0 "Q1" H 2050 6302 40  0000 R CNN
F 1 "PN2222A" H 2050 6600 40  0000 R CNN
F 2 "TO92" H 1950 6552 29  0000 C CNN
F 3 "" H 2050 6450 60  0000 C CNN
	1    2050 6450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 545AF49B
P 1450 6450
F 0 "R1" V 1530 6450 40  0000 C CNN
F 1 "10K" V 1457 6451 40  0000 C CNN
F 2 "" V 1380 6450 30  0000 C CNN
F 3 "" H 1450 6450 30  0000 C CNN
	1    1450 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 6450 1200 6450
Wire Wire Line
	1700 6450 1850 6450
$Comp
L GND #PWR2
U 1 1 545AF577
P 2150 7450
F 0 "#PWR2" H 2150 7450 30  0001 C CNN
F 1 "GND" H 2150 7380 30  0001 C CNN
F 2 "" H 2150 7450 60  0000 C CNN
F 3 "" H 2150 7450 60  0000 C CNN
	1    2150 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6650 2150 7450
$Comp
L VCC #PWR3
U 1 1 545AF598
P 2700 5300
F 0 "#PWR3" H 2700 5400 30  0001 C CNN
F 1 "VCC" H 2700 5400 30  0000 C CNN
F 2 "" H 2700 5300 60  0000 C CNN
F 3 "" H 2700 5300 60  0000 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 545AF5B7
P 2700 5750
F 0 "R2" V 2780 5750 40  0000 C CNN
F 1 "100K" V 2707 5751 40  0000 C CNN
F 2 "" V 2630 5750 30  0000 C CNN
F 3 "" H 2700 5750 30  0000 C CNN
	1    2700 5750
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 545AF73A
P 2700 6700
F 0 "SW1" H 2700 6800 70  0000 C CNN
F 1 "SPST" H 2700 6600 70  0000 C CNN
F 2 "" H 2700 6700 60  0000 C CNN
F 3 "" H 2700 6700 60  0000 C CNN
	1    2700 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 7200 4250 7200
Connection ~ 2150 7200
Wire Wire Line
	2700 6000 2700 6200
Wire Wire Line
	2700 5500 2700 5300
Wire Wire Line
	2150 6250 2150 6100
Wire Wire Line
	2150 6100 3600 6100
Connection ~ 2700 6100
Text GLabel 4550 6100 2    60   Input ~ 0
GateOut
$Comp
L GND #PWR4
U 1 1 545AF8C1
P 6850 1450
F 0 "#PWR4" H 6850 1450 30  0001 C CNN
F 1 "GND" H 6850 1380 30  0001 C CNN
F 2 "" H 6850 1450 60  0000 C CNN
F 3 "" H 6850 1450 60  0000 C CNN
	1    6850 1450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR1
U 1 1 545AF8D5
P 4500 1100
F 0 "#PWR1" H 4500 1200 30  0001 C CNN
F 1 "VCC" H 4500 1200 30  0000 C CNN
F 2 "" H 4500 1100 60  0000 C CNN
F 3 "" H 4500 1100 60  0000 C CNN
	1    4500 1100
	1    0    0    -1  
$EndComp
$Comp
L Csmall C1
U 1 1 545AFAA4
P 5550 1250
F 0 "C1" H 5575 1300 30  0000 L CNN
F 1 "Csmall" H 5575 1200 30  0000 L CNN
F 2 "" H 5550 1250 60  0000 C CNN
F 3 "" H 5550 1250 60  0000 C CNN
	1    5550 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 1250 6850 1450
Wire Wire Line
	5650 1250 6850 1250
Wire Wire Line
	5450 1250 4500 1250
Wire Wire Line
	4500 1100 4500 1900
Wire Wire Line
	4500 1900 4850 1900
Connection ~ 4500 1250
Wire Wire Line
	6300 1900 6500 1900
Wire Wire Line
	6500 1900 6500 1250
Connection ~ 6500 1250
$Comp
L R R?
U 1 1 545ACED1
P 3800 5850
F 0 "R?" V 3880 5850 40  0000 C CNN
F 1 "4.7K" V 3807 5851 40  0000 C CNN
F 2 "~" V 3730 5850 30  0000 C CNN
F 3 "~" H 3800 5850 30  0000 C CNN
	1    3800 5850
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D?
U 1 1 545ACEE7
P 3800 6100
F 0 "D?" H 3800 6200 40  0000 C CNN
F 1 "DIODE" H 3800 6000 40  0000 C CNN
F 2 "~" H 3800 6100 60  0000 C CNN
F 3 "~" H 3800 6100 60  0000 C CNN
	1    3800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5850 4250 5850
Wire Wire Line
	4250 5850 4250 6450
Wire Wire Line
	4000 6100 4550 6100
Wire Wire Line
	3550 5850 3400 5850
Wire Wire Line
	3400 5850 3400 6100
Connection ~ 3400 6100
$Comp
L C C?
U 1 1 545ACF5F
P 4250 6650
F 0 "C?" H 4250 6750 40  0000 L CNN
F 1 ".1uF" H 4256 6565 40  0000 L CNN
F 2 "~" H 4288 6500 30  0000 C CNN
F 3 "~" H 4250 6650 60  0000 C CNN
	1    4250 6650
	1    0    0    -1  
$EndComp
Connection ~ 4250 6100
Wire Wire Line
	4250 7200 4250 6850
Connection ~ 2700 7200
Text GLabel 6500 2600 2    60   Input ~ 0
SCL
Text GLabel 6500 2900 2    60   Input ~ 0
SDA
Text GLabel 6500 2200 2    60   Input ~ 0
TX
Wire Wire Line
	6300 2200 6500 2200
Wire Wire Line
	6300 2600 6500 2600
Wire Wire Line
	6300 2900 6500 2900
Text GLabel 4600 2200 0    60   Input ~ 0
TAP_IN
Text GLabel 4600 2600 0    60   Input ~ 0
POT
Text GLabel 4600 2900 0    60   Input ~ 0
MCLR
Wire Wire Line
	4600 2200 4850 2200
Wire Wire Line
	4850 2600 4600 2600
Wire Wire Line
	4850 2900 4600 2900
$Comp
L CONN_5 P?
U 1 1 545AD463
P 1300 2350
F 0 "P?" V 1250 2350 50  0000 C CNN
F 1 "CONN_5" V 1350 2350 50  0000 C CNN
F 2 "" H 1300 2350 60  0000 C CNN
F 3 "" H 1300 2350 60  0000 C CNN
	1    1300 2350
	-1   0    0    -1  
$EndComp
Text GLabel 1900 2150 2    60   Input ~ 0
MCLR
$Comp
L VCC #PWR?
U 1 1 545AD4E7
P 2500 2150
F 0 "#PWR?" H 2500 2250 30  0001 C CNN
F 1 "VCC" H 2500 2250 30  0000 C CNN
F 2 "" H 2500 2150 60  0000 C CNN
F 3 "" H 2500 2150 60  0000 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 545AD4F2
P 2500 2400
F 0 "#PWR?" H 2500 2400 30  0001 C CNN
F 1 "GND" H 2500 2330 30  0001 C CNN
F 2 "" H 2500 2400 60  0000 C CNN
F 3 "" H 2500 2400 60  0000 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2150 1900 2150
Wire Wire Line
	1700 2250 2500 2250
Wire Wire Line
	2500 2250 2500 2150
Wire Wire Line
	1700 2350 2500 2350
Wire Wire Line
	2500 2350 2500 2400
Text GLabel 1900 2450 2    60   Input ~ 0
PGD
Text GLabel 1900 2600 2    60   Input ~ 0
PGC
Wire Wire Line
	1700 2450 1900 2450
Wire Wire Line
	1700 2550 1700 2600
Wire Wire Line
	1700 2600 1900 2600
Text GLabel 6800 2000 2    60   Input ~ 0
PGD
Text GLabel 6800 2400 2    60   Input ~ 0
PGC
Wire Wire Line
	6800 2000 6400 2000
Wire Wire Line
	6400 2000 6400 2200
Connection ~ 6400 2200
Wire Wire Line
	6800 2400 6400 2400
Wire Wire Line
	6400 2400 6400 2600
Connection ~ 6400 2600
$EndSCHEMATC
