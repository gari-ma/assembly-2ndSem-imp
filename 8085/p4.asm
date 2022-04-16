; Sixteen data are stored in memory location at 1050H to 105FH. Transfer the entire block of
; data to new location starting at 1070H



; save the current memory location to HL pair
LXI h, 1050h   
LXI b, 1070h

MOV C, 10h ; 🚀🚀🚀🚀🚀 10h = 16 in hex

goto:
; now we have a pointer m which points to the memory location pointed by HL pair
; we need to set the value of m to FFh which is equivalent in setting the value of memory location pointed by HL pair
MVI m, 
; Now to get to another preeceding location, we increase the value of HL pair by 1
INX h
; we decrease C by 1 everytimne to control looping
DCR C

; now the last operation done by ALU is DCR operation
; when the value of C is finally 00h, the zero flag i.e. ZF becomes one.
; so when finally the value of ZF = 1, we terminate the loop
JNZ goto ; or otherwise we loop until the ZF becomes 1

HLT
