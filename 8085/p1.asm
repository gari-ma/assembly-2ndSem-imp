; Wap to Add two numbers located at 3030H and 4040H. Display sum on Port 1. If carry is generated,
; display it on Port 2. Store sum on 5050H.



; load first number
LDA 3030h ; loads the value stored at [3030h] into accumulator A
MOV b,a   ; moves the value of a to b

; load Swcond number
LDA 4040h  ; load the value stored at [4040h] into accumulator A

; add the 8 bit number 
; 8 bit number ma carry herirakhna pardaina
ADD b      ; this is like A = A + B

; move the sum i.e A to memory address [5050h]
STA 5050h
OUT 01h ; display the sum in Port [01h]



jnc back ; if carry there is carry
MOV a,01h  ; mov 01 to a i.e 1 carry aako cha vanera dekhauna
OUT 02h    ; output the value stored in A to port no [02h]


back: ; else
HLT


