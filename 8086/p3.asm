; 16 bit addition


; Defines the program title.
TITLE "16 bit addition"

.MODEL small
.STACK
.DATA
    A DW 9834h
    B DW 4321h
    SUM DW ?
    CARRY DB 00H

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,A
    ADD AX,B
    JNC SKIP
    INC CARRY
    SKIP:
        MOV SUM,AX
        INT 03h
MAIN ENDP
END MAIN