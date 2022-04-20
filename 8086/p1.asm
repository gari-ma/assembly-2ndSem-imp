; program to display hello world

; Defines the program title.
TITLE "program to display Hello World"

.MODEL small
.STACK
.DATA
    STRING DB "Hello World$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV DX, OFFSET STRING
    MOV AH,09h
    INT 21h
    MOV AX,4000h
    INT 21h
MAIN ENDP
END MAIN