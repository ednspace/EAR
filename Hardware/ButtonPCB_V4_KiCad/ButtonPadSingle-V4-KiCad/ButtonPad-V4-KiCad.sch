EESchema Schematic File Version 2
LIBS:bicolorled
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:adc-dac
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:logo
LIBS:memory
LIBS:microchip
LIBS:microchip1
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microcontrollers
LIBS:motorola
LIBS:msp430
LIBS:nxp_armmcu
LIBS:opto
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:sensors
LIBS:siliconi
LIBS:special
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:xilinx
LIBS:ButtonPad-V4-KiCad-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "8 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HEADER_4 J1
U 1 1 528E6CD7
P 2500 2850
F 0 "J1" H 2500 3100 60  0000 C CNN
F 1 "HEADER_4" H 2500 2600 60  0000 C CNN
F 2 "" H 2500 2850 60  0000 C CNN
F 3 "" H 2500 2850 60  0000 C CNN
	1    2500 2850
	-1   0    0    1   
$EndComp
$Comp
L HEADER_4 J2
U 1 1 528E6CEB
P 2500 3600
F 0 "J2" H 2500 3850 60  0000 C CNN
F 1 "HEADER_4" H 2500 3350 60  0000 C CNN
F 2 "" H 2500 3600 60  0000 C CNN
F 3 "" H 2500 3600 60  0000 C CNN
	1    2500 3600
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR01
U 1 1 528E7DB7
P 2800 2700
F 0 "#PWR01" H 2800 2800 30  0001 C CNN
F 1 "VCC" H 2800 2800 30  0000 C CNN
F 2 "" H 2800 2700 60  0000 C CNN
F 3 "" H 2800 2700 60  0000 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 528E7E82
P 5200 2450
F 0 "#PWR02" H 5200 2550 30  0001 C CNN
F 1 "VCC" H 5200 2550 30  0000 C CNN
F 2 "" H 5200 2450 60  0000 C CNN
F 3 "" H 5200 2450 60  0000 C CNN
	1    5200 2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 528E7EAE
P 5250 3300
F 0 "#PWR03" H 5250 3400 30  0001 C CNN
F 1 "VCC" H 5250 3400 30  0000 C CNN
F 2 "" H 5250 3300 60  0000 C CNN
F 3 "" H 5250 3300 60  0000 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2700 2800 2700
Wire Wire Line
	2600 2800 2700 2800
Wire Wire Line
	2600 2900 2700 2900
Wire Wire Line
	3900 2900 4350 2900
Wire Wire Line
	3950 3600 4350 3600
Text Label 3900 2900 0    60   ~ 0
L1P2
Text Label 3950 3600 0    60   ~ 0
L2P2
Text Label 2700 2900 0    60   ~ 0
L2P2
Text Label 2700 2800 0    60   ~ 0
L1P2
$Comp
L LED D1
U 1 1 52A486EC
P 4550 2900
F 0 "D1" H 4550 3000 50  0000 C CNN
F 1 "LED" H 4550 2800 50  0000 C CNN
F 2 "~" H 4550 2900 60  0000 C CNN
F 3 "~" H 4550 2900 60  0000 C CNN
	1    4550 2900
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 52A48740
P 4550 3600
F 0 "D2" H 4550 3700 50  0000 C CNN
F 1 "LED" H 4550 3500 50  0000 C CNN
F 2 "~" H 4550 3600 60  0000 C CNN
F 3 "~" H 4550 3600 60  0000 C CNN
	1    4550 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 2900 5200 2900
Wire Wire Line
	5200 2900 5200 2450
Wire Wire Line
	4750 3600 5250 3600
Wire Wire Line
	5250 3600 5250 3300
$EndSCHEMATC
