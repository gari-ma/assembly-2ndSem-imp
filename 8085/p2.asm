; Write an Assembly Language Program that retrieves a data located at 2050H and it displays,
; if it is even and stores FFH on that location if it is odd.



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Even or odd Logic ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; a number is said to be even if it is divided by 2 it gives remainder 0
; but since we have no any opcode for division or multiplication, we have to think of any other way for 
; saying whether the number is even or odd

; lets have a look at and truth table
; -------------------------------------- ;
;;;;   A    ;;;;    B    ;;;;   Z    ;;;;;
; -------------------------------------- ;
;;;;   0    ;;;;    0    ;;;;   0    ;;;;;   < Dont care
;;;;   0    ;;;;    1    ;;;;   0    ;;;;;   <- see in case of even i.e treating 0 as even leads output 0
;;;;   1    ;;;;    0    ;;;;   0    ;;;;;   < - Don't care
;;;;   1    ;;;;    1    ;;;;   1    ;;;;;   <- see in case of odd i.e 1 is odd leading output as 1 
; -------------------------------------- ;

; So we can conclude that When any number is `ANDED` with `1`. The output if 0 says the number is even and
; output as 1 says the number is odd.

; Let's see a program demonstrating this.


; retrive the data located at [2050h] to accumulator
LDA 2050h  

; Do and operation with A and 01h
ANA 01h   ; ANA because 01h is immediate data

; now if the result is not zero then the number is odd
jnz back
MVI A, ffh  ; moves FFh to A
STA 2050h   ; stores FFh to [2050h] 


back: ; else if the result is zero then the number is even1
LDA 2050h ; loads the value of [2050h] in accumulator
OUT 01h   ; as qusestion says, display number if even

HLT


; ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ 
; Zero flag logic:
; if output == 0 then ZF =1 
; ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ ⚠️ 