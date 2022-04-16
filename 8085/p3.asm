; Sixteen bytes of data are stored in memory location at 1050H to 105FH. Replace each data
; byte by FF.

; 1051  => FFh
; 1052  => FFh
; 1053  => FFh
; 1050  => FFh
; 1054  => FFh
; 1055  => FFh
; 1056  => FFh
; 1057  => FFh
; 1058  => FFh
; 1059  => FFh
; 105A  => FFh
; 105B  => FFh
; 105C  => FFh
; 105D  => FFh
; 105E  => FFh
; 105F  => FFh

; so we need to loop all the memory locations and assign FF as the new value

; save the current memory location to HL pair
LXI h, 1050h

MOV C, 0Ah ; 🚀🚀🚀🚀🚀 TODO : Needs correction here 

goto:
; now we have a pointer m which points to the memory location pointed by HL pair
; we need to set the value of m to FFh which is equivalent in setting the value of memory location pointed by HL pair
MVI m, FFh
; Now to get to another preeceding location, we increase the value of HL pair by 1
INX h
; we decrease C by 1 everytimne to control looping
DCR C

; now the last operation done by ALU is DCR operation
; when the value of C is finally 00h, the zero flag i.e. ZF becomes one.
; so when finally the value of ZF = 1, we terminate the loop
JNZ goto ; or otherwise we loop until the ZF becomes 1

HLT