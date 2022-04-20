; Program to display character with attribute

.MODEL small
.STACK
.DATA
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,09h
    MOV AL, 01h
    MOV BH, 00
    MOV BL, 0c
    MOV CX, 79
    INT 20h
    MOV AX, 4c00h
    INT 21h

    INT 21h
MAIN ENDP
END MAIN