; code created by npgarima
; We have a list of data stored at memory location starting at 2050H. The end of the data array
; is indicated by data byte 00H. Add the set of readings. Display the sum at Port 1 and total
; carry at Port 2.

LXI H, 2050h  ; initialize the start address
MOV A, 00H    ; cleaning the accumulator
MOV B, 00h    ; for storing the sum
MOV C, 00h    ; for storing the carry


loop: 
    ADC m ; add memory to accumulator
    MOV B,A ; store sum in B
    MOV A, 00h ; clears the accumulator
    ADD m ; this line is to change the status of the ZF
    MOV A, B ; set the sum back to accumulator, MOV instruction does not affect ZF
JNZ loop

JNC nocarry
    MOV C, 01h  ; set the carry as 1
nocarry:
; output sum in port 1
MOV A,B
OUT 01h 

; output carry in port 2
MOV A,C
OUT 02h

HLT



    
    
