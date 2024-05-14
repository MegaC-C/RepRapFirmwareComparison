M581 P0 T2 S1 R-1  ; disable trigger (R-1) on input 0 (P0) for trigger2.g (T2)
M42 P4 S1 ;
M42 P5 S0 ;
G91 ;
G1 H2 X100 Y100 Z100 U100 V100 W100 A100 B100 F1000 ;
G1 H2 X-10 Y-10 Z-10 U-10 V-10 W-10 A-10 B-10 F1000 ;
M581 P0 T2 S1 R0  ; connect trigger2.g (T2) to input 0 (P0), trigger occurs on an inactive-to-active edge (S1) at any time (R0)
M42 P4 S0 ;
M42 P5 S1 ;