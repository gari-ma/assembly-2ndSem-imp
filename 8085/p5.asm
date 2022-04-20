; Six bytes are stored in memory locations starting at 2050H. Add all the data bytes, save any
; carry generated while adding the data bytes. Display entire sum at two output ports and store
; total carry in 2070H and sum in 2071H.

MVI C, 06h  ; counter register
LXI H, 2050h  ; move starting address to HL pair for using m

; loop througn all the entry and append accumulator with preeciding sum

loop:
    ADC m 
    INX H
    DCR C
JNZ loop


; ! this questions is not clear