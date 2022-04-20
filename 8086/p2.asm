; program to display from 0 to 9

; Defines the program title.
TITLE " program to display from 0 to 9"

.MODEL small
.STACK
.DATA
    VAL DB '0'
.CODE
SPACE MACRO
    MOV DL, ' '
    MOV AH, 02H
    INT 21h
ENDM


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,10
    MOV DL, VAL
    top:
        MOV AH,02H
        INT 21h
        INC DL
        PUSH DX
        SPACE
        POP DX
        DEC CX
        JZ last
    jmp top
    
    last:
    
    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN