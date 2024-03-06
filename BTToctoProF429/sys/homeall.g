; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.4.0-LPC-STM32+8 on Tue Mar 05 2024 06:46:39 GMT+0100 (Mitteleuropäische Normalzeit)
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-605 Y-605 F1800 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X-605             ; home X axis
G1 H1 Y-605             ; home Y axis
G1 X5 Y5 F6000          ; go back a few mm
G1 H1 X-605 F360        ; move slowly to X axis endstop once more (second pass)
G1 H1 Y-605             ; then move slowly to Y axis endstop
G1 H1 Z-105 F360        ; move Z down stopping at the endstop
G90                     ; absolute positioning
G92 Z0                  ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning

