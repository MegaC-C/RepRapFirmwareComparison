; Configuration file for RepRapFirmware on Duet 3 Main Board 6HC
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.5.0-rc.3+2 on Mon Apr 08 2024 17:15:14 GMT+0200 (Mitteleuropäische Sommerzeit)

; General
M550 P"BTT_Kraken_Epoxy" ; set hostname

; Network
M552 P0.0.0.0 S1 ; configure Ethernet adapter
M586 P0 S1 ; configure HTTP

; Smart Drivers
M569 P0 S1 D2 ; driver 0 goes forwards (extruder 0)
M569 P1 S1 D2 ; driver 1 goes forwards (extruder 1)
M569 P2 S1 D2 ; driver 2 goes forwards (extruder 2)
M569 P3 S1 D2 ; driver 3 goes forwards (extruder 3)
M569 P4 S1 D2 ; driver 4 goes forwards (extruder 4)
M569 P5 S1 D2 ; driver 5 goes forwards (extruder 5)
M569 P6 S1 D2 ; driver 3 goes forwards (extruder 6)
M569 P7 S1 D2 ; driver 4 goes forwards (extruder 7)

; Motor Idle Current Reduction
M906 I30 ; set motor current idle factor
M84 S30 ; set motor current idle timeout

; Extruders
M584 X0 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 Y1 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 Z2 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 U3 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 V4 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 W5 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 A6 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M584 B7 R0 ; set axis mapping, LIN R0 = LINEAR, R1 = ROTATION
M350 X16 Y16 Z16 U16 V16 W16 A16 B16 I1 ; configure microstepping with interpolation
M569.9 P0 R0.022 ; driver 0 has a 0.022 Ohm sense resistor
M569.9 P1 R0.022 ; driver 1 has a 0.022 Ohm sense resistor
M569.9 P2 R0.022 ; driver 2 has a 0.022 Ohm sense resistor
M569.9 P3 R0.022 ; driver 3 has a 0.022 Ohm sense resistor
M569.9 P4 R0.075 ; driver 4 has a 0.075 Ohm sense resistor
M569.9 P5 R0.075 ; driver 5 has a 0.075 Ohm sense resistor
M569.9 P6 R0.075 ; driver 6 has a 0.075 Ohm sense resistor
M569.9 P7 R0.075 ; driver 7 has a 0.075 Ohm sense resistor
M906 X4000 Y4000 Z4000 U4000 V2000 W2000 A2000 B2000 ; set extruder driver currents
M92 X64 Y64 Z64 U64 V64 W64 A64 B64 ; configure steps per XX uL
;M208 X0:100 Y0:100 Z0:100 U0:100 V0:100 W0:100 A0:100 B0:100 ; set minimum and maximum axis limits
M566 X10000 Y10000 Z10000 U10000 V10000 W10000 A10000 B10000 ; set maximum instantaneous speed changes (mm/min)
M203 X10000 Y10000 Z10000 U10000 V10000 W10000 A10000 B10000 ; set maximum speeds (mm/min)
M201 X10 Y10 Z10 U10 V10 W10 A10 B10 ; set accelerations (mm/s^2)

; Kinematics
M669 K0 ; configure Cartesian kinematics

; Endstops
M574 X0 Y0 Z0 U0 V0 W0 A0 B0 ; configure B axis endstop

; Mosfet GPIOs
M950 P0 C"e0heat" ; high current mosfets
M950 P1 C"e1heat" ; high current mosfets
M950 P2 C"e2heat" ; high current mosfets
M950 P3 C"e3heat" ; high current mosfets
M950 P4 C"fan0" ; low current mosfets
M950 P5 C"fan1" ; low current mosfets
M950 P6 C"fan2" ; low current mosfets
M950 P7 C"fan3" ; low current mosfets
M950 P8 C"fan4" ; low current mosfets
M950 P9 C"fan5" ; low current mosfets
M950 P10 C"fan6" ; low current mosfets
M950 P11 C"fan7" ; low current mosfets
M42 P4 S0 ;
M42 P5 S1 ;

; Input Buttons
M950 J0 C"xstop"  ; Input 0 uses xstop pin
M581 P0 T0 S1 R0  ; connect emergency stop (T0=M112) to input 0 (P0), trigger occurs on an inactive-to-active edge (S1) at any time (R0)
M950 J2 C"e1stop"  ; Input 2 uses xstop pin
M581 P2 T2 S1 R0  ; connect trigger2.g (T2) to input 2 (P2), trigger occurs on an inactive-to-active edge (S1) at any time (R0)
M950 J3 C"e4stop"  ; Input 3 uses xstop pin
M581 P3 T3 S1 R0  ; connect trigger3.g (T3) to input 3 (P3), trigger occurs on an inactive-to-active edge (S1) at any time (R0)

; Miscellaneous
M501 ; load saved parameters from non-volatile memory
