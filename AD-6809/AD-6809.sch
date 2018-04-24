EESchema Schematic File Version 2
LIBS:AD-6809-rescue
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
LIBS:BobsDevs
LIBS:Oscillators
LIBS:switches
LIBS:AD-6809-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Asteroids Deluxe 6x09 Expansion"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4200 4100 2    60   ~ 0
A0
Text Label 4200 4200 2    60   ~ 0
A1
Text Label 4200 4300 2    60   ~ 0
A2
Text Label 4200 4400 2    60   ~ 0
A3
Text Label 4200 4500 2    60   ~ 0
A4
Text Label 4200 4600 2    60   ~ 0
A5
Text Label 4200 4700 2    60   ~ 0
A6
Text Label 4200 4800 2    60   ~ 0
A7
Text Label 4200 4900 2    60   ~ 0
A8
Text Label 4200 5000 2    60   ~ 0
A9
Text Label 4200 5100 2    60   ~ 0
A10
Text Label 4200 5200 2    60   ~ 0
A11
Text Label 4200 5300 2    60   ~ 0
A12
Text Label 4200 5400 2    60   ~ 0
A13
Text Label 4200 5500 2    60   ~ 0
A14
Text Label 4200 5600 2    60   ~ 0
A15
Text Label 4900 7500 0    60   ~ 0
A11
Text Label 4900 7400 0    60   ~ 0
A10
Text Label 4900 7300 0    60   ~ 0
A9
Text Label 4900 7200 0    60   ~ 0
A8
Text Label 4900 7100 0    60   ~ 0
A7
Text Label 4900 7000 0    60   ~ 0
A6
Text Label 4900 6900 0    60   ~ 0
A5
Text Label 4900 6800 0    60   ~ 0
A4
Text Label 4900 6700 0    60   ~ 0
A3
Text Label 4900 6600 0    60   ~ 0
A2
Text Label 4900 6500 0    60   ~ 0
A1
Text Label 4900 6400 0    60   ~ 0
A0
Text Label 6800 7400 2    60   ~ 0
A12
Text Label 6800 7300 2    60   ~ 0
A13
Text Label 6800 7200 2    60   ~ 0
A14
Text Label 6800 7100 2    60   ~ 0
A15
Text Label 6800 6300 2    60   ~ 0
D0
Text Label 6800 6400 2    60   ~ 0
D1
Text Label 6800 6500 2    60   ~ 0
D2
Text Label 6800 6600 2    60   ~ 0
D3
Text Label 6800 6700 2    60   ~ 0
D4
Text Label 6800 6800 2    60   ~ 0
D5
Text Label 6800 6900 2    60   ~ 0
D6
Text Label 6800 7000 2    60   ~ 0
D7
Text Label 4200 5800 2    60   ~ 0
D0
Text Label 4200 5900 2    60   ~ 0
D1
Text Label 4200 6000 2    60   ~ 0
D2
Text Label 4200 6100 2    60   ~ 0
D3
Text Label 4200 6200 2    60   ~ 0
D4
Text Label 4200 6300 2    60   ~ 0
D5
Text Label 4200 6400 2    60   ~ 0
D6
Text Label 4200 6500 2    60   ~ 0
D7
NoConn ~ 3950 6800
Text Label 4200 6700 2    60   ~ 0
PHI2
Text Label 4200 7100 2    60   ~ 0
R/~W
Text Label 6800 6200 2    60   ~ 0
R/~W
Text Label 6800 5700 2    60   ~ 0
PHI2
Text Label 6800 5600 2    60   ~ 0
~RESET
Text Label 1800 4700 0    60   ~ 0
~NMI
Text Label 1800 4600 0    60   ~ 0
~RESET
Text Label 4900 6100 0    60   ~ 0
~NMI
NoConn ~ 3950 6900
NoConn ~ 3950 7000
$Comp
L R R5
U 1 1 59A31A5C
P 1200 4500
F 0 "R5" V 1280 4500 50  0000 C CNN
F 1 "10K" V 1200 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1130 4500 50  0001 C CNN
F 3 "" H 1200 4500 50  0001 C CNN
	1    1200 4500
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59A31CBF
P 1050 4500
F 0 "R4" V 1130 4500 50  0000 C CNN
F 1 "10K" V 1050 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 980 4500 50  0001 C CNN
F 3 "" H 1050 4500 50  0001 C CNN
	1    1050 4500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59A31E87
P 750 4500
F 0 "R2" V 830 4500 50  0000 C CNN
F 1 "10K" V 750 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 680 4500 50  0001 C CNN
F 3 "" H 750 4500 50  0001 C CNN
	1    750  4500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59A31EC6
P 600 4500
F 0 "R1" V 680 4500 50  0000 C CNN
F 1 "10K" V 600 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 530 4500 50  0001 C CNN
F 3 "" H 600 4500 50  0001 C CNN
	1    600  4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59A3237F
P 6800 7550
F 0 "#PWR01" H 6800 7300 50  0001 C CNN
F 1 "GND" H 6800 7400 50  0000 C CNN
F 2 "" H 6800 7550 50  0001 C CNN
F 3 "" H 6800 7550 50  0001 C CNN
	1    6800 7550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59A3246C
P 4750 5700
F 0 "#PWR02" H 4750 5450 50  0001 C CNN
F 1 "GND" H 4750 5550 50  0000 C CNN
F 2 "" H 4750 5700 50  0001 C CNN
F 3 "" H 4750 5700 50  0001 C CNN
	1    4750 5700
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 3 1 59BBF7B6
P 10350 5050
F 0 "U6" H 10350 5100 50  0000 C CNN
F 1 "74LS00" H 10350 4950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10350 5050 50  0001 C CNN
F 3 "" H 10350 5050 50  0001 C CNN
	3    10350 5050
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 1 1 59BBF809
P 8900 5450
F 0 "U6" H 8900 5500 50  0000 C CNN
F 1 "74LS00" H 8900 5350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8900 5450 50  0001 C CNN
F 3 "" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 4 1 59BBF86E
P 10350 5550
F 0 "U6" H 10350 5600 50  0000 C CNN
F 1 "74LS00" H 10350 5450 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 10350 5550 50  0001 C CNN
F 3 "" H 10350 5550 50  0001 C CNN
	4    10350 5550
	1    0    0    -1  
$EndComp
Text Label 8050 5800 0    60   ~ 0
PHI2
Text Label 8050 4950 0    60   ~ 0
R/~W
Text Label 11100 5050 2    60   ~ 0
~RD
Text Label 11100 5550 2    60   ~ 0
~WR
NoConn ~ 5200 5700
NoConn ~ 6500 5800
NoConn ~ 5200 5900
NoConn ~ 5200 6200
NoConn ~ 5200 5800
NoConn ~ 6500 5900
$Comp
L R R3
U 1 1 59BC53A7
P 900 4500
F 0 "R3" V 980 4500 50  0000 C CNN
F 1 "10K" V 900 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 830 4500 50  0001 C CNN
F 3 "" H 900 4500 50  0001 C CNN
	1    900  4500
	1    0    0    -1  
$EndComp
Text Label 1750 5000 0    60   ~ 0
~IRQ
Text Label 1750 5200 0    60   ~ 0
~FIRQ
$Comp
L CONN_01X06 J1
U 1 1 59BC5A44
P 10550 650
F 0 "J1" H 10550 1000 50  0000 C CNN
F 1 "SERIAL" V 10650 650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 10550 650 50  0001 C CNN
F 3 "" H 10550 650 50  0001 C CNN
	1    10550 650 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 59BC5C68
P 10800 950
F 0 "#PWR04" H 10800 700 50  0001 C CNN
F 1 "GND" H 10800 800 50  0000 C CNN
F 2 "" H 10800 950 50  0001 C CNN
F 3 "" H 10800 950 50  0001 C CNN
	1    10800 950 
	1    0    0    -1  
$EndComp
Text Label 10500 1050 1    60   ~ 0
RXD
Text Label 10400 1050 1    60   ~ 0
TXD
NoConn ~ 10700 850 
NoConn ~ 10600 850 
NoConn ~ 10300 850 
$Comp
L 74LS139 U5
U 1 1 59BC668E
P 10000 2550
F 0 "U5" H 10000 2650 50  0000 C CNN
F 1 "74LS139" H 10000 2450 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 10000 2550 50  0001 C CNN
F 3 "" H 10000 2550 50  0001 C CNN
	1    10000 2550
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U6
U 2 1 59BC6B0C
P 8900 6250
F 0 "U6" H 8900 6300 50  0000 C CNN
F 1 "74LS00" H 8900 6150 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8900 6250 50  0001 C CNN
F 3 "" H 8900 6250 50  0001 C CNN
	2    8900 6250
	1    0    0    -1  
$EndComp
Text Label 8050 6250 0    60   ~ 0
A15
Text Label 9600 6250 2    60   ~ 0
~A15
Text Label 9000 2800 0    60   ~ 0
~A15
Text Label 9000 2450 0    60   ~ 0
A13
Text Label 9000 2300 0    60   ~ 0
A14
$Comp
L 74LS139 U5
U 2 1 59BC7252
P 10000 1650
F 0 "U5" H 10000 1750 50  0000 C CNN
F 1 "74LS139" H 10000 1550 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 10000 1650 50  0001 C CNN
F 3 "" H 10000 1650 50  0001 C CNN
	2    10000 1650
	1    0    0    -1  
$EndComp
Text Label 9000 1550 0    60   ~ 0
A11
Text Label 9000 1400 0    60   ~ 0
A12
Text Label 11100 2650 2    60   ~ 0
~MEM2
Text Label 2400 700  2    60   ~ 0
D0
Text Label 2400 800  2    60   ~ 0
D1
Text Label 2400 900  2    60   ~ 0
D2
Text Label 2400 1000 2    60   ~ 0
D3
Text Label 2400 1100 2    60   ~ 0
D4
Text Label 2400 1200 2    60   ~ 0
D5
Text Label 2400 1300 2    60   ~ 0
D6
Text Label 2400 1400 2    60   ~ 0
D7
NoConn ~ 800  2150
Text Label 600  2500 0    60   ~ 0
~MEM3
Text Label 600  2400 0    60   ~ 0
~RD
Text Label 600  2300 0    60   ~ 0
~WR
Text Label 600  700  0    60   ~ 0
A0
Text Label 600  800  0    60   ~ 0
A1
Text Label 600  900  0    60   ~ 0
A2
Text Label 600  1000 0    60   ~ 0
A3
Text Label 600  1100 0    60   ~ 0
A4
Text Label 600  1200 0    60   ~ 0
A5
Text Label 600  1300 0    60   ~ 0
A6
Text Label 600  1400 0    60   ~ 0
A7
Text Label 600  1500 0    60   ~ 0
A8
Text Label 600  1600 0    60   ~ 0
A9
Text Label 600  1700 0    60   ~ 0
A10
Text Label 600  1800 0    60   ~ 0
A11
Text Label 600  1900 0    60   ~ 0
A12
$Comp
L 6502_Header U4
U 1 1 59BCCFCA
P 5850 6500
F 0 "U4" H 5850 5350 60  0000 C CNN
F 1 "6502_Header" V 5850 6400 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket_LongPads" H 5350 6700 60  0001 C CNN
F 3 "" H 5350 6700 60  0000 C CNN
	1    5850 6500
	1    0    0    -1  
$EndComp
NoConn ~ 10850 1550
NoConn ~ 10850 1750
NoConn ~ 10850 1950
Text Label 11050 1350 2    60   ~ 0
~UART
$Comp
L C C1
U 1 1 59BD365E
P 800 7400
F 0 "C1" H 825 7500 50  0000 L CNN
F 1 "0.1uF" H 825 7300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 838 7250 50  0001 C CNN
F 3 "" H 800 7400 50  0001 C CNN
	1    800  7400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59BD36DE
P 1000 7100
F 0 "C2" H 1025 7200 50  0000 L CNN
F 1 "0.1uF" H 1025 7000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1038 6950 50  0001 C CNN
F 3 "" H 1000 7100 50  0001 C CNN
	1    1000 7100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59BD3735
P 1200 7400
F 0 "C3" H 1225 7500 50  0000 L CNN
F 1 "0.1uF" H 1225 7300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1238 7250 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59BD378F
P 1400 7100
F 0 "C4" H 1425 7200 50  0000 L CNN
F 1 "0.1uF" H 1425 7000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1438 6950 50  0001 C CNN
F 3 "" H 1400 7100 50  0001 C CNN
	1    1400 7100
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59BD37EC
P 1600 7400
F 0 "C5" H 1625 7500 50  0000 L CNN
F 1 "0.1uF" H 1625 7300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1638 7250 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59BD384C
P 1800 7100
F 0 "C6" H 1825 7200 50  0000 L CNN
F 1 "0.1uF" H 1825 7000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1838 6950 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59BD46E6
P 2200 7600
F 0 "#PWR05" H 2200 7350 50  0001 C CNN
F 1 "GND" H 2200 7450 50  0000 C CNN
F 2 "" H 2200 7600 50  0001 C CNN
F 3 "" H 2200 7600 50  0001 C CNN
	1    2200 7600
	1    0    0    -1  
$EndComp
Text Label 4350 700  2    60   ~ 0
D0
Text Label 4350 800  2    60   ~ 0
D1
Text Label 4350 900  2    60   ~ 0
D2
Text Label 4350 1000 2    60   ~ 0
D3
Text Label 4350 1100 2    60   ~ 0
D4
Text Label 4350 1200 2    60   ~ 0
D5
Text Label 4350 1300 2    60   ~ 0
D6
Text Label 4350 1400 2    60   ~ 0
D7
Text Label 2550 700  0    60   ~ 0
A0
Text Label 2550 800  0    60   ~ 0
A1
Text Label 2550 900  0    60   ~ 0
A2
Text Label 2550 1000 0    60   ~ 0
A3
Text Label 2550 1100 0    60   ~ 0
A4
Text Label 2550 1200 0    60   ~ 0
A5
Text Label 2550 1300 0    60   ~ 0
A6
Text Label 2550 1400 0    60   ~ 0
A7
Text Label 2550 1500 0    60   ~ 0
A8
Text Label 2550 1600 0    60   ~ 0
A9
Text Label 2550 1700 0    60   ~ 0
A10
Text Label 2550 1800 0    60   ~ 0
A11
Text Label 2550 1900 0    60   ~ 0
A12
Text Label 2550 2500 0    60   ~ 0
~MEM2
Text Label 2550 2400 0    60   ~ 0
~RD
Text Label 2550 2300 0    60   ~ 0
~WR
NoConn ~ 2750 2150
Text Label 11100 2850 2    60   ~ 0
~MEM3
$Comp
L C C7
U 1 1 59D724D2
P 2000 7400
F 0 "C7" H 2025 7500 50  0000 L CNN
F 1 "0.1uF" H 2025 7300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2038 7250 50  0001 C CNN
F 3 "" H 2000 7400 50  0001 C CNN
	1    2000 7400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 59D74433
P 800 6800
F 0 "#PWR06" H 800 6650 50  0001 C CNN
F 1 "+5V" H 800 6940 50  0000 C CNN
F 2 "" H 800 6800 50  0001 C CNN
F 3 "" H 800 6800 50  0001 C CNN
	1    800  6800
	1    0    0    -1  
$EndComp
$Comp
L 6809 U2
U 1 1 59EDF6E4
P 3150 5600
F 0 "U2" H 2750 7250 60  0000 C CNN
F 1 "6809" H 3450 3950 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket_LongPads" H 3150 5600 60  0001 C CNN
F 3 "" H 3150 5600 60  0000 C CNN
	1    3150 5600
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 59EE1734
P 2200 7100
F 0 "C8" H 2225 7200 50  0000 L CNN
F 1 "0.1uF" H 2225 7000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2238 6950 50  0001 C CNN
F 3 "" H 2200 7100 50  0001 C CNN
	1    2200 7100
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 59EE17CF
P 2400 7400
F 0 "C9" H 2425 7500 50  0000 L CNN
F 1 "0.1uF" H 2425 7300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2438 7250 50  0001 C CNN
F 3 "" H 2400 7400 50  0001 C CNN
	1    2400 7400
	1    0    0    -1  
$EndComp
$Comp
L CXO_DIP8 X1
U 1 1 59F04C86
P 6950 1000
F 0 "X1" H 6750 1250 50  0000 L CNN
F 1 "12.288MHz" H 7000 750 50  0000 L CNN
F 2 "Oscillators:Oscillator_DIP-8" H 7400 650 50  0001 C CNN
F 3 "" H 6850 1000 50  0001 C CNN
	1    6950 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 59F061E7
P 6950 650
F 0 "#PWR08" H 6950 500 50  0001 C CNN
F 1 "+5V" H 6950 790 50  0000 C CNN
F 2 "" H 6950 650 50  0001 C CNN
F 3 "" H 6950 650 50  0001 C CNN
	1    6950 650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59F0645D
P 6950 1450
F 0 "#PWR09" H 6950 1200 50  0001 C CNN
F 1 "GND" H 6950 1300 50  0000 C CNN
F 2 "" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 59F0A0F5
P 6600 950
F 0 "#PWR010" H 6600 800 50  0001 C CNN
F 1 "+5V" H 6600 1090 50  0000 C CNN
F 2 "" H 6600 950 50  0001 C CNN
F 3 "" H 6600 950 50  0001 C CNN
	1    6600 950 
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP2
U 1 1 59F0D24A
P 2050 3450
F 0 "JP2" H 2100 3350 50  0000 L CNN
F 1 "CLKSRC" H 2050 3550 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 2050 3450 50  0001 C CNN
F 3 "" H 2050 3450 50  0001 C CNN
	1    2050 3450
	1    0    0    -1  
$EndComp
Text Label 2700 3450 2    60   ~ 0
CPUCLK
$Comp
L +5V #PWR011
U 1 1 59F0E9A5
P 600 4150
F 0 "#PWR011" H 600 4000 50  0001 C CNN
F 1 "+5V" H 600 4290 50  0000 C CNN
F 2 "" H 600 4150 50  0001 C CNN
F 3 "" H 600 4150 50  0001 C CNN
	1    600  4150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J2
U 1 1 59F0F5F3
P 700 3500
F 0 "J2" H 700 3650 50  0000 C CNN
F 1 "GAMECLK" V 800 3500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 700 3500 50  0001 C CNN
F 3 "" H 700 3500 50  0001 C CNN
	1    700  3500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 59F0F9E6
P 1050 3950
F 0 "#PWR012" H 1050 3700 50  0001 C CNN
F 1 "GND" H 1050 3800 50  0000 C CNN
F 2 "" H 1050 3950 50  0001 C CNN
F 3 "" H 1050 3950 50  0001 C CNN
	1    1050 3950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 59F15F9D
P 2400 6800
F 0 "#PWR014" H 2400 6650 50  0001 C CNN
F 1 "VCC" H 2400 6950 50  0000 C CNN
F 2 "" H 2400 6800 50  0001 C CNN
F 3 "" H 2400 6800 50  0001 C CNN
	1    2400 6800
	1    0    0    -1  
$EndComp
$Comp
L 28C64-RESCUE-AD-6809 U1
U 1 1 59F184AE
P 1500 1600
F 0 "U1" H 1700 2600 50  0000 C CNN
F 1 "28C64" H 1800 600 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket_LongPads" H 1500 1600 50  0001 C CNN
F 3 "" H 1500 1600 50  0001 C CNN
	1    1500 1600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 59F194B7
P 2000 5900
F 0 "#FLG015" H 2000 5975 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 6050 50  0000 C CNN
F 2 "" H 2000 5900 50  0001 C CNN
F 3 "" H 2000 5900 50  0001 C CNN
	1    2000 5900
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG016
U 1 1 59F1998D
P 650 6500
F 0 "#FLG016" H 650 6575 50  0001 C CNN
F 1 "PWR_FLAG" H 650 6650 50  0000 C CNN
F 2 "" H 650 6500 50  0001 C CNN
F 3 "" H 650 6500 50  0001 C CNN
	1    650  6500
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK J3
U 1 1 59F0917C
P 1000 6050
F 0 "J3" H 1000 6245 50  0000 C CNN
F 1 "BARREL_JACK" H 1000 5895 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1000 6050 50  0001 C CNN
F 3 "" H 1000 6050 50  0001 C CNN
	1    1000 6050
	1    0    0    -1  
$EndComp
$Comp
L CP C10
U 1 1 59F0AC11
P 1650 6150
F 0 "C10" H 1675 6250 50  0000 L CNN
F 1 "470uF" H 1675 6050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D8.0mm_P3.50mm" H 1688 6000 50  0001 C CNN
F 3 "" H 1650 6150 50  0001 C CNN
	1    1650 6150
	1    0    0    -1  
$EndComp
$Comp
L 28C64 U8
U 1 1 59F12CB3
P 3450 1600
F 0 "U8" H 3650 2600 50  0000 C CNN
F 1 "28C64/IMS1630" H 3550 600 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket_LongPads" H 3450 1600 50  0001 C CNN
F 3 "" H 3450 1600 50  0001 C CNN
	1    3450 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Dual JP3
U 1 1 59F13922
P 2350 2050
F 0 "JP3" H 2400 1950 50  0000 L CNN
F 1 "ROM   RAM" H 2350 2150 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 2350 2050 50  0001 C CNN
F 3 "" H 2350 2050 50  0001 C CNN
	1    2350 2050
	0    -1   -1   0   
$EndComp
NoConn ~ 2350 2300
$Comp
L +5V #PWR017
U 1 1 59F13EE0
P 2350 1750
F 0 "#PWR017" H 2350 1600 50  0001 C CNN
F 1 "+5V" H 2350 1890 50  0000 C CNN
F 2 "" H 2350 1750 50  0001 C CNN
F 3 "" H 2350 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 59F0D778
P 3950 3500
F 0 "C11" H 3975 3600 50  0000 L CNN
F 1 "470nF" H 3975 3400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3988 3350 50  0001 C CNN
F 3 "" H 3950 3500 50  0001 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59F0D7FD
P 3950 3100
F 0 "R8" V 4030 3100 50  0000 C CNN
F 1 "10K" V 3950 3100 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3880 3100 50  0001 C CNN
F 3 "" H 3950 3100 50  0001 C CNN
	1    3950 3100
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 59F0D8E1
P 3700 3100
F 0 "D1" H 3700 3200 50  0000 C CNN
F 1 "IN4148" H 3700 3000 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 3700 3100 50  0001 C CNN
F 3 "" H 3700 3100 50  0001 C CNN
	1    3700 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 59F0DEDC
P 3950 3750
F 0 "#PWR018" H 3950 3500 50  0001 C CNN
F 1 "GND" H 3950 3600 50  0000 C CNN
F 2 "" H 3950 3750 50  0001 C CNN
F 3 "" H 3950 3750 50  0001 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 59F0DF40
P 3950 2850
F 0 "#PWR019" H 3950 2700 50  0001 C CNN
F 1 "+5V" H 3950 2990 50  0000 C CNN
F 2 "" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59F0EE62
P 3350 3300
F 0 "SW1" H 3400 3400 50  0000 L CNN
F 1 "RESET" H 3350 3240 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 3350 3500 50  0001 C CNN
F 3 "" H 3350 3500 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59F0F33A
P 3100 3500
F 0 "R7" V 3180 3500 50  0000 C CNN
F 1 "100R" V 3100 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3030 3500 50  0001 C CNN
F 3 "" H 3100 3500 50  0001 C CNN
	1    3100 3500
	1    0    0    -1  
$EndComp
Text Label 5750 3300 2    60   ~ 0
~RESET
$Comp
L R R6
U 1 1 59F10F97
P 1350 4500
F 0 "R6" V 1430 4500 50  0000 C CNN
F 1 "10K" V 1350 4500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1280 4500 50  0001 C CNN
F 3 "" H 1350 4500 50  0001 C CNN
	1    1350 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X01 J5
U 1 1 59F12CFF
P 1600 4300
F 0 "J5" H 1600 4400 50  0000 C CNN
F 1 "NMI" H 1600 4200 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 1600 3100 50  0001 C CNN
F 3 "" H 1600 3100 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X01 J6
U 1 1 59F14664
P 4300 3300
F 0 "J6" H 4300 3400 50  0000 C CNN
F 1 "RESET" H 4300 3200 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4300 2100 50  0001 C CNN
F 3 "" H 4300 2100 50  0001 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 59F1B4CD
P 4750 6200
F 0 "#PWR020" H 4750 6050 50  0001 C CNN
F 1 "+5V" H 4750 6340 50  0000 C CNN
F 2 "" H 4750 6200 50  0001 C CNN
F 3 "" H 4750 6200 50  0001 C CNN
	1    4750 6200
	1    0    0    -1  
$EndComp
$Comp
L SCN2661 U10
U 1 1 59F9E123
P 7100 4150
F 0 "U10" H 6700 4900 60  0000 C CNN
F 1 "SCN2661C" H 7350 3450 60  0000 C TNN
F 2 "" H 7100 4050 60  0000 C CNN
F 3 "" H 7100 4050 60  0000 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
Text Label 8050 3850 2    60   ~ 0
D0
Text Label 8050 3950 2    60   ~ 0
D1
Text Label 8050 4050 2    60   ~ 0
D2
Text Label 8050 4150 2    60   ~ 0
D3
Text Label 8050 4250 2    60   ~ 0
D4
Text Label 8050 4350 2    60   ~ 0
D5
Text Label 8050 4450 2    60   ~ 0
D6
Text Label 8050 4550 2    60   ~ 0
D7
Text Label 8050 4650 2    60   ~ 0
A1
Text Label 8050 4750 2    60   ~ 0
A0
Text Label 8050 3650 2    60   ~ 0
R/~W
Text Label 8050 3550 2    60   ~ 0
~UART
$Comp
L 74LS04 U9
U 1 1 59FA6EF9
P 5100 3500
F 0 "U9" H 5295 3615 50  0000 C CNN
F 1 "74LS04" H 5290 3375 50  0000 C CNN
F 2 "" H 5100 3500 50  0001 C CNN
F 3 "" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
Text Label 5750 3500 2    60   ~ 0
RESET
Text Label 6050 3550 0    60   ~ 0
RESET
Text Label 6050 3650 0    60   ~ 0
RXD
Text Label 6050 3750 0    60   ~ 0
TXD
$Comp
L CONN_02X01 J4
U 1 1 59FAB90F
P 5800 4150
F 0 "J4" H 5800 4250 50  0000 C CNN
F 1 "IRQ" H 5800 4050 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 5800 2950 50  0001 C CNN
F 3 "" H 5800 2950 50  0001 C CNN
	1    5800 4150
	1    0    0    -1  
$EndComp
Text Label 5400 4150 0    60   ~ 0
~IRQ
$Comp
L GND #PWR021
U 1 1 59FAE89B
P 6150 4900
F 0 "#PWR021" H 6150 4650 50  0001 C CNN
F 1 "GND" H 6150 4750 50  0000 C CNN
F 2 "" H 6150 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
NoConn ~ 6350 4050
NoConn ~ 6350 4350
NoConn ~ 6350 4450
NoConn ~ 6350 4550
NoConn ~ 6350 4650
NoConn ~ 6350 4750
$Comp
L 74LS04 U9
U 2 1 59FB0784
P 6800 2150
F 0 "U9" H 6995 2265 50  0000 C CNN
F 1 "74LS04" H 6990 2025 50  0000 C CNN
F 2 "" H 6800 2150 50  0001 C CNN
F 3 "" H 6800 2150 50  0001 C CNN
	2    6800 2150
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U9
U 3 1 59FB0857
P 7800 2150
F 0 "U9" H 7995 2265 50  0000 C CNN
F 1 "74LS04" H 7990 2025 50  0000 C CNN
F 2 "" H 7800 2150 50  0001 C CNN
F 3 "" H 7800 2150 50  0001 C CNN
	3    7800 2150
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59FB12BE
P 6750 1800
F 0 "R9" V 6830 1800 50  0000 C CNN
F 1 "1M0" V 6750 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6680 1800 50  0001 C CNN
F 3 "" H 6750 1800 50  0001 C CNN
	1    6750 1800
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 59FB19BB
P 7300 2350
F 0 "R10" V 7380 2350 50  0000 C CNN
F 1 "1K0" V 7300 2350 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7230 2350 50  0001 C CNN
F 3 "" H 7300 2350 50  0001 C CNN
	1    7300 2350
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59FB1B4B
P 6300 2800
F 0 "C12" H 6325 2900 50  0000 L CNN
F 1 "22pF" H 6325 2700 50  0000 L CNN
F 2 "" H 6338 2650 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 59FB1BFE
P 7300 2800
F 0 "C13" H 7325 2900 50  0000 L CNN
F 1 "22pF" H 7325 2700 50  0000 L CNN
F 2 "" H 7338 2650 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 59FB1CBD
P 6800 2600
F 0 "Y1" H 6800 2750 50  0000 C CNN
F 1 "5.0688MHz" H 6800 2450 50  0000 C CNN
F 2 "" H 6800 2600 50  0001 C CNN
F 3 "" H 6800 2600 50  0001 C CNN
	1    6800 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 59FB299B
P 6800 3050
F 0 "#PWR022" H 6800 2800 50  0001 C CNN
F 1 "GND" H 6800 2900 50  0000 C CNN
F 2 "" H 6800 3050 50  0001 C CNN
F 3 "" H 6800 3050 50  0001 C CNN
	1    6800 3050
	1    0    0    -1  
$EndComp
Text Label 8500 2150 2    60   ~ 0
SERCLK
$Comp
L 74LS163 U11
U 1 1 59FB590E
P 8500 1100
F 0 "U11" H 8550 1200 50  0000 C CNN
F 1 "74LS163" H 8600 900 50  0000 C CNN
F 2 "" H 8500 1100 50  0001 C CNN
F 3 "" H 8500 1100 50  0001 C CNN
	1    8500 1100
	1    0    0    -1  
$EndComp
Text Label 7500 1600 0    60   ~ 0
~RESET
$Comp
L GND #PWR023
U 1 1 59FB5D7F
P 7550 950
F 0 "#PWR023" H 7550 700 50  0001 C CNN
F 1 "GND" H 7550 800 50  0000 C CNN
F 2 "" H 7550 950 50  0001 C CNN
F 3 "" H 7550 950 50  0001 C CNN
	1    7550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4100 3950 4100
Wire Wire Line
	4200 4200 3950 4200
Wire Wire Line
	4200 4300 3950 4300
Wire Wire Line
	4200 4400 3950 4400
Wire Wire Line
	4200 4500 3950 4500
Wire Wire Line
	4200 4600 3950 4600
Wire Wire Line
	4200 4700 3950 4700
Wire Wire Line
	4200 4800 3950 4800
Wire Wire Line
	4200 4900 3950 4900
Wire Wire Line
	4200 5000 3950 5000
Wire Wire Line
	4200 5100 3950 5100
Wire Wire Line
	4200 5200 3950 5200
Wire Wire Line
	4200 5300 3950 5300
Wire Wire Line
	4200 5400 3950 5400
Wire Wire Line
	4200 5500 3950 5500
Wire Wire Line
	4200 5600 3950 5600
Wire Wire Line
	4900 6400 5200 6400
Wire Wire Line
	4900 6500 5200 6500
Wire Wire Line
	4900 6600 5200 6600
Wire Wire Line
	4900 6700 5200 6700
Wire Wire Line
	4900 6800 5200 6800
Wire Wire Line
	4900 6900 5200 6900
Wire Wire Line
	4900 7000 5200 7000
Wire Wire Line
	4900 7100 5200 7100
Wire Wire Line
	4900 7200 5200 7200
Wire Wire Line
	4900 7300 5200 7300
Wire Wire Line
	4900 7400 5200 7400
Wire Wire Line
	4900 7500 5200 7500
Wire Wire Line
	6500 7400 6800 7400
Wire Wire Line
	6800 7100 6500 7100
Wire Wire Line
	6800 7200 6500 7200
Wire Wire Line
	6800 7300 6500 7300
Wire Wire Line
	6800 7000 6500 7000
Wire Wire Line
	6800 6300 6500 6300
Wire Wire Line
	6800 6400 6500 6400
Wire Wire Line
	6800 6500 6500 6500
Wire Wire Line
	6800 6600 6500 6600
Wire Wire Line
	6800 6700 6500 6700
Wire Wire Line
	6800 6800 6500 6800
Wire Wire Line
	6800 6900 6500 6900
Wire Wire Line
	4200 5800 3950 5800
Wire Wire Line
	4200 5900 3950 5900
Wire Wire Line
	4200 6000 3950 6000
Wire Wire Line
	4200 6100 3950 6100
Wire Wire Line
	4200 6200 3950 6200
Wire Wire Line
	4200 6300 3950 6300
Wire Wire Line
	4200 6400 3950 6400
Wire Wire Line
	4200 6500 3950 6500
Wire Wire Line
	4200 6700 3950 6700
Wire Wire Line
	4200 7100 3950 7100
Wire Wire Line
	6800 6200 6500 6200
Wire Wire Line
	6800 5700 6500 5700
Wire Wire Line
	6800 5600 6500 5600
Wire Wire Line
	1800 4600 2300 4600
Wire Wire Line
	4900 6100 5200 6100
Wire Wire Line
	1200 4650 1200 4900
Wire Wire Line
	1050 4650 1050 5000
Wire Wire Line
	750  4650 750  5300
Wire Wire Line
	600  4650 600  5400
Wire Wire Line
	6800 7500 6500 7500
Wire Wire Line
	6800 7550 6800 7500
Wire Wire Line
	4750 5600 5200 5600
Wire Wire Line
	8300 5350 8250 5350
Wire Wire Line
	8250 4950 8250 5550
Wire Wire Line
	8250 5550 8300 5550
Connection ~ 8250 5350
Wire Wire Line
	11100 5050 10950 5050
Wire Wire Line
	11100 5550 10950 5550
Wire Wire Line
	9600 5150 9600 5800
Wire Wire Line
	9600 5650 9750 5650
Connection ~ 9600 5650
Wire Wire Line
	9500 5450 9750 5450
Wire Wire Line
	9600 5150 9750 5150
Wire Wire Line
	8050 4950 9750 4950
Connection ~ 8250 4950
Wire Wire Line
	900  4650 900  5200
Wire Wire Line
	10500 1050 10500 850 
Wire Wire Line
	10400 1050 10400 850 
Wire Wire Line
	9000 2800 9150 2800
Wire Wire Line
	9000 2450 9150 2450
Wire Wire Line
	9000 2300 9150 2300
Wire Wire Line
	8300 6150 8250 6150
Wire Wire Line
	8250 6150 8250 6350
Wire Wire Line
	8250 6350 8300 6350
Connection ~ 8250 6250
Wire Wire Line
	9600 6250 9500 6250
Wire Wire Line
	9000 1550 9150 1550
Wire Wire Line
	9000 1400 9150 1400
Wire Wire Line
	11100 2850 10850 2850
Wire Wire Line
	2400 700  2200 700 
Wire Wire Line
	2400 800  2200 800 
Wire Wire Line
	2400 900  2200 900 
Wire Wire Line
	2400 1000 2200 1000
Wire Wire Line
	2400 1100 2200 1100
Wire Wire Line
	2400 1200 2200 1200
Wire Wire Line
	2400 1300 2200 1300
Wire Wire Line
	2400 1400 2200 1400
Wire Wire Line
	600  2500 800  2500
Wire Wire Line
	600  2400 800  2400
Wire Wire Line
	600  2300 800  2300
Wire Wire Line
	600  700  800  700 
Wire Wire Line
	600  800  800  800 
Wire Wire Line
	600  900  800  900 
Wire Wire Line
	600  1000 800  1000
Wire Wire Line
	600  1100 800  1100
Wire Wire Line
	600  1200 800  1200
Wire Wire Line
	600  1300 800  1300
Wire Wire Line
	600  1400 800  1400
Wire Wire Line
	600  1500 800  1500
Wire Wire Line
	600  1600 800  1600
Wire Wire Line
	600  1700 800  1700
Wire Wire Line
	600  1800 800  1800
Wire Wire Line
	600  1900 800  1900
Wire Wire Line
	4750 6200 4750 6300
Wire Wire Line
	4750 6300 5200 6300
Wire Wire Line
	11050 1350 10850 1350
Wire Wire Line
	10800 850  10800 950 
Wire Wire Line
	800  6800 800  7250
Wire Wire Line
	2550 700  2750 700 
Wire Wire Line
	2550 800  2750 800 
Wire Wire Line
	2550 900  2750 900 
Wire Wire Line
	2550 1000 2750 1000
Wire Wire Line
	2550 1100 2750 1100
Wire Wire Line
	2550 1200 2750 1200
Wire Wire Line
	2550 1300 2750 1300
Wire Wire Line
	2550 1400 2750 1400
Wire Wire Line
	2550 1500 2750 1500
Wire Wire Line
	2550 1600 2750 1600
Wire Wire Line
	2550 1700 2750 1700
Wire Wire Line
	2550 1800 2750 1800
Wire Wire Line
	2550 1900 2750 1900
Wire Wire Line
	2550 2300 2750 2300
Wire Wire Line
	2550 2400 2750 2400
Wire Wire Line
	2550 2500 2750 2500
Wire Wire Line
	4350 700  4150 700 
Wire Wire Line
	4350 800  4150 800 
Wire Wire Line
	4350 900  4150 900 
Wire Wire Line
	4350 1000 4150 1000
Wire Wire Line
	4350 1100 4150 1100
Wire Wire Line
	4350 1200 4150 1200
Wire Wire Line
	4350 1300 4150 1300
Wire Wire Line
	4350 1400 4150 1400
Wire Wire Line
	11100 2650 10850 2650
Wire Wire Line
	8050 6250 8250 6250
Wire Wire Line
	9600 5800 8050 5800
Wire Wire Line
	2400 7600 2400 7550
Connection ~ 2200 7600
Wire Wire Line
	2000 7600 2000 7550
Connection ~ 2000 7600
Wire Wire Line
	1600 7600 1600 7550
Connection ~ 1600 7600
Wire Wire Line
	1200 7600 1200 7550
Connection ~ 1200 7600
Wire Wire Line
	1000 7600 1000 7250
Connection ~ 1000 7600
Wire Wire Line
	1400 7600 1400 7250
Connection ~ 1400 7600
Wire Wire Line
	1800 7600 1800 7250
Connection ~ 1800 7600
Wire Wire Line
	800  6900 2400 6900
Wire Wire Line
	2200 6900 2200 6950
Connection ~ 800  6900
Wire Wire Line
	2400 6800 2400 7250
Connection ~ 2200 6900
Wire Wire Line
	2000 5900 2000 7250
Connection ~ 2000 6900
Wire Wire Line
	1800 6950 1800 6900
Connection ~ 1800 6900
Connection ~ 1600 6900
Wire Wire Line
	1400 6950 1400 6900
Connection ~ 1400 6900
Wire Wire Line
	1200 7250 1200 6900
Connection ~ 1200 6900
Wire Wire Line
	1000 6950 1000 6900
Connection ~ 1000 6900
Wire Wire Line
	6950 700  6950 650 
Wire Wire Line
	6600 950  6600 1000
Wire Wire Line
	6600 1000 6650 1000
Wire Wire Line
	2050 3550 2050 4400
Wire Wire Line
	2050 4400 2300 4400
Wire Wire Line
	900  3450 1800 3450
Wire Wire Line
	900  3550 1050 3550
Wire Wire Line
	1050 3550 1050 3950
Wire Wire Line
	1050 3850 2300 3850
Wire Wire Line
	2300 3850 2300 4100
Connection ~ 1050 3850
Wire Wire Line
	2700 3450 2300 3450
Wire Wire Line
	2200 7600 2200 7250
Connection ~ 2400 6900
Wire Wire Line
	6950 1300 6950 1450
Wire Wire Line
	1300 5950 2000 5950
Wire Wire Line
	1650 6000 1650 5950
Connection ~ 1650 5950
Wire Wire Line
	650  7600 2400 7600
Connection ~ 2000 5950
Wire Wire Line
	650  6550 1650 6550
Connection ~ 650  6550
Wire Wire Line
	1350 6050 1350 6550
Connection ~ 1350 6550
Wire Wire Line
	650  6500 650  7600
Wire Wire Line
	1650 6550 1650 6300
Wire Wire Line
	1300 6050 1350 6050
Wire Wire Line
	1300 6150 1350 6150
Connection ~ 1350 6150
Wire Wire Line
	800  7600 800  7550
Connection ~ 800  7600
Wire Wire Line
	1600 7250 1600 6900
Wire Wire Line
	2450 2050 2750 2050
Wire Wire Line
	2350 1750 2350 1800
Wire Wire Line
	3950 3250 3950 3350
Wire Wire Line
	3700 3250 3700 3300
Connection ~ 3950 3300
Wire Wire Line
	3950 2850 3950 2950
Wire Wire Line
	3700 2950 3700 2900
Wire Wire Line
	3700 2900 3950 2900
Connection ~ 3950 2900
Connection ~ 3700 3300
Wire Wire Line
	3950 3650 3950 3750
Wire Wire Line
	3100 3350 3100 3300
Wire Wire Line
	3100 3300 3150 3300
Connection ~ 3950 3700
Wire Wire Line
	3100 3650 3100 3700
Wire Wire Line
	3100 3700 3950 3700
Wire Wire Line
	1200 4900 2300 4900
Wire Wire Line
	1050 5000 2300 5000
Wire Wire Line
	900  5200 2300 5200
Wire Wire Line
	750  5300 2300 5300
Wire Wire Line
	600  5400 2300 5400
Wire Wire Line
	1350 4650 1350 4700
Wire Wire Line
	1350 4700 2300 4700
Wire Wire Line
	600  4150 600  4350
Wire Wire Line
	1200 4150 1200 4350
Wire Wire Line
	600  4200 1200 4200
Connection ~ 600  4200
Wire Wire Line
	1050 4350 1050 4200
Connection ~ 1050 4200
Wire Wire Line
	900  4350 900  4200
Connection ~ 900  4200
Wire Wire Line
	750  4350 750  4200
Connection ~ 750  4200
Wire Wire Line
	1350 4350 1350 4300
Wire Wire Line
	1850 4300 1850 4150
Wire Wire Line
	1850 4150 1200 4150
Connection ~ 1200 4200
Wire Wire Line
	3550 3300 4050 3300
Wire Wire Line
	4550 3300 5750 3300
Wire Wire Line
	4750 5700 4750 5600
Wire Wire Line
	8050 3550 7850 3550
Wire Wire Line
	8050 3650 7850 3650
Wire Wire Line
	8050 3850 7850 3850
Wire Wire Line
	8050 3950 7850 3950
Wire Wire Line
	8050 4050 7850 4050
Wire Wire Line
	8050 4150 7850 4150
Wire Wire Line
	8050 4250 7850 4250
Wire Wire Line
	8050 4350 7850 4350
Wire Wire Line
	8050 4450 7850 4450
Wire Wire Line
	8050 4550 7850 4550
Wire Wire Line
	8050 4650 7850 4650
Wire Wire Line
	8050 4750 7850 4750
Wire Wire Line
	5750 3500 5550 3500
Wire Wire Line
	6050 3550 6350 3550
Wire Wire Line
	6050 3650 6350 3650
Wire Wire Line
	6050 3750 6350 3750
Wire Wire Line
	6050 4150 6350 4150
Wire Wire Line
	6200 4250 6350 4250
Wire Wire Line
	6200 4250 6200 4150
Connection ~ 6200 4150
Wire Wire Line
	5400 4150 5550 4150
Wire Wire Line
	6150 3950 6350 3950
Wire Wire Line
	6150 3850 6350 3850
Wire Wire Line
	6150 3850 6150 4900
Connection ~ 6150 3950
Wire Wire Line
	6300 2950 6300 3000
Wire Wire Line
	6300 3000 7300 3000
Wire Wire Line
	7300 3000 7300 2950
Wire Wire Line
	6800 3050 6800 3000
Connection ~ 6800 3000
Wire Wire Line
	7300 2600 6950 2600
Wire Wire Line
	6300 2600 6650 2600
Wire Wire Line
	6600 1800 6300 1800
Wire Wire Line
	6300 1800 6300 2650
Wire Wire Line
	6350 2150 6300 2150
Connection ~ 6300 2150
Wire Wire Line
	7250 2150 7350 2150
Wire Wire Line
	7300 1800 7300 2200
Connection ~ 7300 2150
Wire Wire Line
	7300 2500 7300 2650
Connection ~ 7300 2600
Connection ~ 6300 2600
Wire Wire Line
	6900 1800 7300 1800
Wire Wire Line
	8500 2150 8250 2150
Wire Wire Line
	7500 1600 7800 1600
Wire Wire Line
	7550 600  7550 950 
Wire Wire Line
	7550 900  7800 900 
Wire Wire Line
	7550 800  7800 800 
Connection ~ 7550 900 
Wire Wire Line
	7550 700  7800 700 
Connection ~ 7550 800 
Wire Wire Line
	7550 600  7800 600 
Connection ~ 7550 700 
NoConn ~ 9200 800 
NoConn ~ 9200 900 
Wire Wire Line
	7250 1000 7450 1000
Wire Wire Line
	7450 1000 7450 1400
Wire Wire Line
	7450 1400 7800 1400
NoConn ~ 9200 1100
$Comp
L +5V #PWR024
U 1 1 59FB8771
P 7700 1100
F 0 "#PWR024" H 7700 950 50  0001 C CNN
F 1 "+5V" H 7700 1240 50  0000 C CNN
F 2 "" H 7700 1100 50  0001 C CNN
F 3 "" H 7700 1100 50  0001 C CNN
	1    7700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1100 7800 1100
Wire Wire Line
	7700 1100 7700 1300
Wire Wire Line
	7700 1200 7800 1200
Wire Wire Line
	7700 1300 7800 1300
Connection ~ 7700 1200
NoConn ~ 9200 700 
Wire Wire Line
	9500 600  9200 600 
Text Label 9500 600  2    60   ~ 0
CPUCLK
Wire Wire Line
	4600 3300 4600 3500
Wire Wire Line
	4600 3500 4650 3500
Connection ~ 4600 3300
Wire Wire Line
	9150 1900 9100 1900
Wire Wire Line
	9100 1900 9100 2100
Wire Wire Line
	9100 2100 10900 2100
Wire Wire Line
	10900 2100 10900 2250
Wire Wire Line
	10900 2250 10850 2250
Wire Wire Line
	8500 2150 8500 3750
Connection ~ 14300 2850
$Comp
L PAL24 J?
U 1 1 5AB89782
P 9950 3850
F 0 "J?" H 9950 3950 50  0000 C CNN
F 1 "PAL24" H 9950 3750 50  0000 C CNN
F 2 "" H 9950 3850 50  0001 C CNN
F 3 "" H 9950 3850 50  0001 C CNN
	1    9950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3750 7850 3750
NoConn ~ 10850 2450
$EndSCHEMATC
