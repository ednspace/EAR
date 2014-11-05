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
LIBS:EAR
LIBS:jst-ph
LIBS:ButtonPCB-V4-cache
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
L TCA9554 U2
U 1 1 528176C1
P 7300 4150
F 0 "U2" H 7500 3650 60  0000 C CNN
F 1 "TCA9554" V 7250 4200 60  0000 C CNN
F 2 "" H 7200 4350 60  0000 C CNN
F 3 "" H 7200 4350 60  0000 C CNN
	1    7300 4150
	1    0    0    -1  
$EndComp
$Comp
L IQS253 U1
U 1 1 52818CC7
P 7250 1800
F 0 "U1" H 7650 1450 60  0000 C CNN
F 1 "IQS253" V 7250 1750 60  0000 C CNN
F 2 "" H 7200 1400 60  0000 C CNN
F 3 "" H 7200 1400 60  0000 C CNN
	1    7250 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P1
U 1 1 52818E1F
P 1550 1300
F 0 "P1" V 1500 1300 50  0000 C CNN
F 1 "CONN_4" V 1600 1300 50  0000 C CNN
F 2 "" H 1550 1300 60  0000 C CNN
F 3 "" H 1550 1300 60  0000 C CNN
	1    1550 1300
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P2
U 1 1 52818E44
P 1550 1900
F 0 "P2" V 1500 1900 50  0000 C CNN
F 1 "CONN_4" V 1600 1900 50  0000 C CNN
F 2 "" H 1550 1900 60  0000 C CNN
F 3 "" H 1550 1900 60  0000 C CNN
	1    1550 1900
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P3
U 1 1 52818E53
P 1500 2950
F 0 "P3" V 1450 2950 50  0000 C CNN
F 1 "CONN_4" V 1550 2950 50  0000 C CNN
F 2 "" H 1500 2950 60  0000 C CNN
F 3 "" H 1500 2950 60  0000 C CNN
	1    1500 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P4
U 1 1 52818E62
P 1500 3550
F 0 "P4" V 1450 3550 50  0000 C CNN
F 1 "CONN_4" V 1550 3550 50  0000 C CNN
F 2 "" H 1500 3550 60  0000 C CNN
F 3 "" H 1500 3550 60  0000 C CNN
	1    1500 3550
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P5
U 1 1 52818E71
P 1500 4550
F 0 "P5" V 1450 4550 50  0000 C CNN
F 1 "CONN_4" V 1550 4550 50  0000 C CNN
F 2 "" H 1500 4550 60  0000 C CNN
F 3 "" H 1500 4550 60  0000 C CNN
	1    1500 4550
	-1   0    0    1   
$EndComp
$Comp
L CONN_4 P6
U 1 1 52818E80
P 1500 5300
F 0 "P6" V 1450 5300 50  0000 C CNN
F 1 "CONN_4" V 1550 5300 50  0000 C CNN
F 2 "" H 1500 5300 60  0000 C CNN
F 3 "" H 1500 5300 60  0000 C CNN
	1    1500 5300
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 52818EB0
P 6300 3800
F 0 "R5" V 6350 4000 40  0000 C CNN
F 1 "4.7k" V 6307 3801 40  0000 C CNN
F 2 "~" V 6230 3800 30  0000 C CNN
F 3 "~" H 6300 3800 30  0000 C CNN
	1    6300 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 52818EC7
P 6300 3900
F 0 "R6" V 6350 4100 40  0000 C CNN
F 1 "4.7k" V 6307 3901 40  0000 C CNN
F 2 "~" V 6230 3900 30  0000 C CNN
F 3 "~" H 6300 3900 30  0000 C CNN
	1    6300 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 52818EE0
P 6300 4000
F 0 "R7" V 6350 4200 40  0000 C CNN
F 1 "4.7k" V 6307 4001 40  0000 C CNN
F 2 "~" V 6230 4000 30  0000 C CNN
F 3 "~" H 6300 4000 30  0000 C CNN
	1    6300 4000
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 52818F15
P 5900 5050
F 0 "R12" V 5980 5050 40  0000 C CNN
F 1 "R" V 5907 5051 40  0000 C CNN
F 2 "~" V 5830 5050 30  0000 C CNN
F 3 "~" H 5900 5050 30  0000 C CNN
	1    5900 5050
	-1   0    0    1   
$EndComp
$Comp
L R R13
U 1 1 52818F1B
P 6100 5050
F 0 "R13" V 6180 5050 40  0000 C CNN
F 1 "R" V 6107 5051 40  0000 C CNN
F 2 "~" V 6030 5050 30  0000 C CNN
F 3 "~" H 6100 5050 30  0000 C CNN
	1    6100 5050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 52819119
P 5750 4150
F 0 "#PWR01" H 5750 4150 30  0001 C CNN
F 1 "GND" H 5750 4080 30  0001 C CNN
F 2 "" H 5750 4150 60  0000 C CNN
F 3 "" H 5750 4150 60  0000 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 528191DC
P 8100 3650
F 0 "#PWR02" H 8100 3750 30  0001 C CNN
F 1 "VCC" H 8100 3750 30  0000 C CNN
F 2 "" H 8100 3650 60  0000 C CNN
F 3 "" H 8100 3650 60  0000 C CNN
	1    8100 3650
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 528193A7
P 6300 5050
F 0 "R14" V 6380 5050 40  0000 C CNN
F 1 "R" V 6307 5051 40  0000 C CNN
F 2 "~" V 6230 5050 30  0000 C CNN
F 3 "~" H 6300 5050 30  0000 C CNN
	1    6300 5050
	-1   0    0    1   
$EndComp
$Comp
L R R15
U 1 1 528193AD
P 6500 5050
F 0 "R15" V 6580 5050 40  0000 C CNN
F 1 "R" V 6507 5051 40  0000 C CNN
F 2 "~" V 6430 5050 30  0000 C CNN
F 3 "~" H 6500 5050 30  0000 C CNN
	1    6500 5050
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 528193B3
P 7900 5000
F 0 "R8" V 7980 5000 40  0000 C CNN
F 1 "R" V 7907 5001 40  0000 C CNN
F 2 "~" V 7830 5000 30  0000 C CNN
F 3 "~" H 7900 5000 30  0000 C CNN
	1    7900 5000
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 528193B9
P 8100 5000
F 0 "R9" V 8180 5000 40  0000 C CNN
F 1 "R" V 8107 5001 40  0000 C CNN
F 2 "~" V 8030 5000 30  0000 C CNN
F 3 "~" H 8100 5000 30  0000 C CNN
	1    8100 5000
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 528193BF
P 8300 5000
F 0 "R10" V 8380 5000 40  0000 C CNN
F 1 "R" V 8307 5001 40  0000 C CNN
F 2 "~" V 8230 5000 30  0000 C CNN
F 3 "~" H 8300 5000 30  0000 C CNN
	1    8300 5000
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 528193C5
P 8500 5000
F 0 "R11" V 8580 5000 40  0000 C CNN
F 1 "R" V 8507 5001 40  0000 C CNN
F 2 "~" V 8430 5000 30  0000 C CNN
F 3 "~" H 8500 5000 30  0000 C CNN
	1    8500 5000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 528194A0
P 7100 5000
F 0 "#PWR03" H 7100 5000 30  0001 C CNN
F 1 "GND" H 7100 4930 30  0001 C CNN
F 2 "" H 7100 5000 60  0000 C CNN
F 3 "" H 7100 5000 60  0000 C CNN
	1    7100 5000
	1    0    0    -1  
$EndComp
Text Label 8250 3850 0    60   ~ 0
SDA
Text Label 8250 4000 0    60   ~ 0
SCL
Text Label 5900 5400 3    60   ~ 0
Button1LED1
Text Label 6100 5400 3    60   ~ 0
Button1LED2
Text Label 6300 5400 3    60   ~ 0
Button2LED1
Text Label 6500 5400 3    60   ~ 0
Button2LED2
Text Label 7900 5400 3    60   ~ 0
Button3LED1
Text Label 8100 5400 3    60   ~ 0
Button3LED2
Text Label 8300 5400 3    60   ~ 0
Button3LED3
Text Label 8500 5400 3    60   ~ 0
Button3LED4
Wire Wire Line
	6700 3800 6550 3800
Wire Wire Line
	6700 3900 6550 3900
Wire Wire Line
	6700 4000 6550 4000
Wire Wire Line
	6050 3800 5750 3800
Wire Wire Line
	5750 3800 5750 4150
Wire Wire Line
	6050 3900 5750 3900
Connection ~ 5750 3900
Wire Wire Line
	8100 3800 7850 3800
Wire Wire Line
	8100 3650 8100 3800
Wire Wire Line
	7850 3900 8150 3900
Wire Wire Line
	8150 3900 8150 3850
Wire Wire Line
	8150 3850 8250 3850
Wire Wire Line
	7850 4000 8250 4000
Wire Wire Line
	5900 4100 6700 4100
Wire Wire Line
	6100 4200 6700 4200
Wire Wire Line
	6300 4300 6700 4300
Wire Wire Line
	6500 4400 6700 4400
Wire Wire Line
	6700 4500 6650 4500
Wire Wire Line
	6650 4500 6650 4700
Wire Wire Line
	6650 4700 7100 4700
Wire Wire Line
	7100 4700 7100 5000
Wire Wire Line
	7850 4500 7900 4500
Wire Wire Line
	7900 4500 7900 4750
Wire Wire Line
	7850 4400 8100 4400
Wire Wire Line
	8100 4400 8100 4750
Wire Wire Line
	7850 4300 8300 4300
Wire Wire Line
	8300 4300 8300 4750
Wire Wire Line
	7850 4200 8500 4200
Wire Wire Line
	8500 4200 8500 4750
Wire Wire Line
	6500 4400 6500 4800
Wire Wire Line
	6300 4300 6300 4800
Wire Wire Line
	6100 4200 6100 4800
Wire Wire Line
	5900 4100 5900 4800
Wire Wire Line
	6050 4000 5750 4000
Connection ~ 5750 4000
Wire Wire Line
	5900 5300 5900 5400
Wire Wire Line
	6100 5300 6100 5400
Wire Wire Line
	6300 5300 6300 5400
Wire Wire Line
	6500 5300 6500 5400
Wire Wire Line
	7900 5250 7900 5400
Wire Wire Line
	8100 5250 8100 5400
Wire Wire Line
	8300 5250 8300 5400
Wire Wire Line
	8500 5250 8500 5400
Wire Wire Line
	7850 4100 8250 4100
Text Label 8250 4100 0    60   ~ 0
INT
$Comp
L GND #PWR04
U 1 1 52819A75
P 6250 1300
F 0 "#PWR04" H 6250 1300 30  0001 C CNN
F 1 "GND" H 6250 1230 30  0001 C CNN
F 2 "" H 6250 1300 60  0000 C CNN
F 3 "" H 6250 1300 60  0000 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1600 6550 1600
Wire Wire Line
	6400 1250 6400 1600
$Comp
L C C1
U 1 1 52819B12
P 5500 2100
F 0 "C1" H 5500 2200 40  0000 L CNN
F 1 "100pF" H 5506 2015 40  0000 L CNN
F 2 "~" H 5538 1950 30  0000 C CNN
F 3 "~" H 5500 2100 60  0000 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52819B1F
P 5700 2100
F 0 "C2" H 5700 2200 40  0000 L CNN
F 1 "1uF" H 5706 2015 40  0000 L CNN
F 2 "~" H 5738 1950 30  0000 C CNN
F 3 "~" H 5700 2100 60  0000 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 52819B25
P 6150 2250
F 0 "C3" H 6150 2350 40  0000 L CNN
F 1 "100pF" H 6156 2165 40  0000 L CNN
F 2 "~" H 6188 2100 30  0000 C CNN
F 3 "~" H 6150 2250 60  0000 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 52819B2B
P 6350 2250
F 0 "C4" H 6350 2350 40  0000 L CNN
F 1 "1uF" H 6356 2165 40  0000 L CNN
F 2 "~" H 6388 2100 30  0000 C CNN
F 3 "~" H 6350 2250 60  0000 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1900 6550 1900
Connection ~ 5700 1900
Wire Wire Line
	6150 2050 6350 2050
Wire Wire Line
	6350 2050 6350 2000
Wire Wire Line
	6350 2000 6550 2000
Wire Wire Line
	6150 2450 6350 2450
Wire Wire Line
	5500 2300 5700 2300
$Comp
L GND #PWR05
U 1 1 52819C7F
P 5900 2550
F 0 "#PWR05" H 5900 2550 30  0001 C CNN
F 1 "GND" H 5900 2480 30  0001 C CNN
F 2 "" H 5900 2550 60  0000 C CNN
F 3 "" H 5900 2550 60  0000 C CNN
	1    5900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2300 5600 2450
Wire Wire Line
	5600 2450 5900 2450
Wire Wire Line
	5900 2450 5900 2550
Connection ~ 5600 2300
Wire Wire Line
	6250 2450 6250 2500
Wire Wire Line
	6250 2500 5900 2500
Connection ~ 5900 2500
Connection ~ 6250 2450
$Comp
L R R3
U 1 1 52819DDB
P 8300 1700
F 0 "R3" V 8300 1800 40  0000 C CNN
F 1 "470" V 8300 1600 40  0000 C CNN
F 2 "~" V 8230 1700 30  0000 C CNN
F 3 "~" H 8300 1700 30  0000 C CNN
	1    8300 1700
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 52819DE6
P 6250 1700
F 0 "R2" V 6250 1800 40  0000 C CNN
F 1 "470" V 6250 1600 40  0000 C CNN
F 2 "~" V 6180 1700 30  0000 C CNN
F 3 "~" H 6250 1700 30  0000 C CNN
	1    6250 1700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 52819DEC
P 6250 1800
F 0 "R4" V 6250 1900 40  0000 C CNN
F 1 "470" V 6250 1700 40  0000 C CNN
F 2 "~" V 6180 1800 30  0000 C CNN
F 3 "~" H 6250 1800 30  0000 C CNN
	1    6250 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1250 6250 1250
Wire Wire Line
	6250 1250 6250 1300
Wire Wire Line
	6550 1700 6500 1700
Wire Wire Line
	6550 1800 6500 1800
Wire Wire Line
	8050 1700 8000 1700
$Comp
L R R1
U 1 1 5281A045
P 8300 1600
F 0 "R1" V 8300 1700 40  0000 C CNN
F 1 "470" V 8300 1500 40  0000 C CNN
F 2 "~" V 8230 1600 30  0000 C CNN
F 3 "~" H 8300 1600 30  0000 C CNN
	1    8300 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1600 8000 1600
$Comp
L VCC #PWR06
U 1 1 5281A10A
P 5350 1750
F 0 "#PWR06" H 5350 1850 30  0001 C CNN
F 1 "VCC" H 5350 1850 30  0000 C CNN
F 2 "" H 5350 1750 60  0000 C CNN
F 3 "" H 5350 1750 60  0000 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1900 5350 1750
Connection ~ 5500 1900
Wire Wire Line
	8550 1600 8700 1600
Wire Wire Line
	1900 2050 2150 2050
Wire Wire Line
	1850 3700 2150 3700
Wire Wire Line
	1850 5450 2150 5450
Text Label 2150 2050 0    60   ~ 0
CTX
Text Label 2150 3700 0    60   ~ 0
CTX
Text Label 2150 5450 0    60   ~ 0
CTX
Wire Wire Line
	6000 1700 5800 1700
Wire Wire Line
	6000 1800 5800 1800
Wire Wire Line
	8550 1700 8700 1700
Text Label 5800 1700 0    60   ~ 0
CX0
Text Label 8700 1700 0    60   ~ 0
CX2
Wire Wire Line
	1900 1750 2150 1750
Wire Wire Line
	1850 3400 2150 3400
Wire Wire Line
	1850 5150 2150 5150
Text Label 2150 1750 0    60   ~ 0
CX0
Text Label 8700 1600 0    60   ~ 0
CTX
Wire Wire Line
	1900 1150 2100 1150
Wire Wire Line
	1900 1250 2100 1250
Wire Wire Line
	1900 1350 2100 1350
Wire Wire Line
	1900 1450 2100 1450
$Comp
L VCC #PWR07
U 1 1 5287C11E
P 2100 1150
F 0 "#PWR07" H 2100 1250 30  0001 C CNN
F 1 "VCC" H 2100 1250 30  0000 C CNN
F 2 "" H 2100 1150 60  0000 C CNN
F 3 "" H 2100 1150 60  0000 C CNN
	1    2100 1150
	1    0    0    -1  
$EndComp
Text Label 2100 1250 0    60   ~ 0
Button1LED1
Text Label 2100 1350 0    60   ~ 0
Button1LED2
Wire Wire Line
	1850 2800 2150 2800
Wire Wire Line
	1850 2900 2150 2900
Wire Wire Line
	1850 3000 2150 3000
Wire Wire Line
	1850 3100 2150 3100
Wire Wire Line
	1850 4400 2150 4400
Wire Wire Line
	1850 4500 2150 4500
Wire Wire Line
	1850 4600 2150 4600
Wire Wire Line
	1850 4700 2150 4700
$Comp
L VCC #PWR08
U 1 1 5287C46B
P 2150 2800
F 0 "#PWR08" H 2150 2900 30  0001 C CNN
F 1 "VCC" H 2150 2900 30  0000 C CNN
F 2 "" H 2150 2800 60  0000 C CNN
F 3 "" H 2150 2800 60  0000 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
Text Label 2150 2900 0    60   ~ 0
Button2LED1
Text Label 2150 3000 0    60   ~ 0
Button2LED2
$Comp
L VCC #PWR09
U 1 1 5287C487
P 2150 4400
F 0 "#PWR09" H 2150 4500 30  0001 C CNN
F 1 "VCC" H 2150 4500 30  0000 C CNN
F 2 "" H 2150 4400 60  0000 C CNN
F 3 "" H 2150 4400 60  0000 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
Text Label 2150 4500 0    60   ~ 0
Button3LED1
Text Label 2150 4600 0    60   ~ 0
Button3LED2
Text Label 2150 4700 0    60   ~ 0
Button3LED3
Wire Wire Line
	1850 5250 2150 5250
Text Label 2150 5250 0    60   ~ 0
Button3LED4
$Comp
L JST-PH6 P7
U 1 1 5287C502
P 1550 6500
F 0 "P7" H 1450 6830 50  0000 L BNN
F 1 "JST-PH6" H 1450 6010 50  0000 L BNN
F 2 "" H 1550 6650 50  0001 C CNN
F 3 "" H 1550 6500 60  0000 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5287C51B
P 2050 6300
F 0 "#PWR010" H 2050 6400 30  0001 C CNN
F 1 "VCC" H 2050 6400 30  0000 C CNN
F 2 "" H 2050 6300 60  0000 C CNN
F 3 "" H 2050 6300 60  0000 C CNN
	1    2050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6300 2050 6300
Wire Wire Line
	1850 6400 2050 6400
Wire Wire Line
	1850 6500 2100 6500
Wire Wire Line
	1850 6600 2100 6600
Wire Wire Line
	1850 6700 2100 6700
Wire Wire Line
	1850 6800 2100 6800
$Comp
L GND #PWR011
U 1 1 5287C7EA
P 2050 6400
F 0 "#PWR011" H 2050 6400 30  0001 C CNN
F 1 "GND" H 2050 6330 30  0001 C CNN
F 2 "" H 2050 6400 60  0000 C CNN
F 3 "" H 2050 6400 60  0000 C CNN
	1    2050 6400
	1    0    0    -1  
$EndComp
Text Label 2100 6500 0    60   ~ 0
SDA
Text Label 2100 6600 0    60   ~ 0
SCL
Text Label 2100 6700 0    60   ~ 0
RDY/ND
Wire Wire Line
	8000 1800 8300 1800
Wire Wire Line
	8000 1900 8300 1900
Wire Wire Line
	8000 2000 8300 2000
Text Label 8300 1800 0    60   ~ 0
SCL
Text Label 8300 1900 0    60   ~ 0
SDA
Text Label 8300 2000 0    60   ~ 0
RDY/ND
Text Label 5800 1800 0    60   ~ 0
CX1
Text Label 2150 5150 0    60   ~ 0
CX1
Text Label 2150 3400 0    60   ~ 0
CX2
$EndSCHEMATC
