; code created by npgarima
; We have a list of data stored at memory location starting at 2050H. The end of the data array
; is indicated by data byte 00H. Add the set of readings. Display the sum at Port 1 and total
; carry at Port 2.

LXI H, 2050h  ; initialize the start address
MOV A, 00H    ; cleaning the accumulator

; check the current value 
loop:
    ADD m ; add memory to accumulator
    
    
