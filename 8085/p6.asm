; If the content of memory location 2050H is greater than or equal to 64H, display 0FH else
; display FFH

; loads the content of 2050h to A
LDA 2050H

SBI 64h ; subtracts a with 64h

;;;;;;;;;;;;;;;;;;;;;;;;;;
; Check carru flag status;
;;;;;;;;;;;;;;;;;;;;;;;;;;
; CF = 0 ;;;;;;;;  small ;
; CF = 1 ;;;;;;;;  great ;
;;;;;;;;;;;;;;;;;;;;;;;;;;

JC goto
; smaller
MVI A, FFh
OUT 01
HLT
goto:
; greater
MVI A, 0Fh
OUT 01
HLT

