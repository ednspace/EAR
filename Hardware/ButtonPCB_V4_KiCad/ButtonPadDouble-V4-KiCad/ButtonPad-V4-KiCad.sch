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
LIBS:hc11
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
LIBS:rfcom
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
LIBS:w_analog
LIBS:w_connectors
LIBS:w_device
LIBS:w_logic
LIBS:w_memory
LIBS:w_microcontrollers
LIBS:w_opto
LIBS:w_relay
LIBS:w_rtx
LIBS:w_transistor
LIBS:w_vacuum
LIBS:ButtonPad-V4-KiCad-cache
EELAYER 24 0
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
L BICOLORLED LED1
U 1 1 528E47CF
P 4000 3150
F 0 "LED1" H 4650 3050 60  0000 C CNN
F 1 "BICOLORLED" H 4200 3650 60  0000 C CNN
F 2 "" H 4000 3150 60  0000 C CNN
F 3 "" H 4000 3150 60  0000 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
$Comp
L BICOLORLED LED2
U 1 1 528E6BB3
P 4000 3850
F 0 "LED2" H 4650 3750 60  0000 C CNN
F 1 "BICOLORLED" H 4200 4350 60  0000 C CNN
F 2 "" H 4000 3850 60  0000 C CNN
F 3 "" H 4000 3850 60  0000 C CNN
	1    4000 3850
	1    0    0    -1  
$EndComp
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
	5050 2800 5050 3000
Wire Wire Line
	5050 3500 5050 3700
Wire Wire Line
	5200 2900 5050 2900
Wire Wire Line
	5200 2450 5200 2900
Connection ~ 5050 2900
Wire Wire Line
	5250 3600 5050 3600
Wire Wire Line
	5250 3300 5250 3600
Connection ~ 5050 3600
Wire Wire Line
	2600 2700 2800 2700
Wire Wire Line
	2600 2800 2700 2800
Wire Wire Line
	2600 2900 2700 2900
Wire Wire Line
	2600 3000 2700 3000
Wire Wire Line
	3350 2800 3200 2800
Wire Wire Line
	3350 3000 3200 3000
Text Label 3200 2800 0    60   ~ 0
L1P2
Text Label 3200 3000 0    60   ~ 0
L1P1
Text Label 2700 2900 0    60   ~ 0
L1P2
Text Label 2700 2800 0    60   ~ 0
L1P1
Wire Wire Line
	3350 3500 3150 3500
Wire Wire Line
	3350 3700 3150 3700
Text Label 3150 3500 0    60   ~ 0
L2P2
Text Label 3150 3700 0    60   ~ 0
L2P1
Text Label 2700 3000 0    60   ~ 0
L2P1
Wire Wire Line
	2600 3550 2750 3550
Text Label 2750 3550 0    60   ~ 0
L2P2
$EndSCHEMATC
