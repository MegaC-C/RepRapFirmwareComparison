; Das ist der Spülen Knopf
var epoxyAmount = 400 ; epoxy volume in xx/100 mL (e.g. 150 = 1.5 mL)
var epoxyRetract = -7 ; retract volume so no droplet forms

set var.epoxyAmount = var.epoxyAmount - var.epoxyRetract ; add the retracted amount

M581 P2 T2 S1 R-1  ; disable trigger (R-1) on input 2 (P2) for trigger2.g (T2)
M581 P3 T3 S1 R-1  ; disable trigger (R-1) on input 3 (P3) for trigger3.g (T3)
M42 P4 S1 ; turn on red LED
M42 P5 S0 ; turn off green LED
M42 P9 S1 ; turn on fan with full speed
G91 ;
G1 H2 X{var.epoxyAmount} Y{var.epoxyAmount} Z{var.epoxyAmount} U{var.epoxyAmount} V{var.epoxyAmount} W{var.epoxyAmount} A{var.epoxyAmount} B{var.epoxyAmount} F800 ;
G1 H2 X{var.epoxyRetract} Y{var.epoxyRetract} Z{var.epoxyRetract} U{var.epoxyRetract} V{var.epoxyRetract} W{var.epoxyRetract} A{var.epoxyRetract} B{var.epoxyRetract} F800 ;
M581 P2 T2 S1 R0  ; reconnect trigger2.g (T2) to input 2 (P2), trigger occurs on an inactive-to-active edge (S1) at any time (R0)
M581 P3 T3 S1 R0  ; reconnect trigger3.g (T3) to input 3 (P3), trigger occurs on an inactive-to-active edge (S1) at any time (R0)
M42 P4 S0 ; turn off red LED
M42 P5 S1 ; turn on green LED
M42 P9 S0.7 ; turn on fan with PWM