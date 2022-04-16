# 8085 and 8086 assembly important programmes

8085 is an 8-bit, general purpose microprocessor. All the important assmebly programs necessary for Bsc.CSIT 
2nd semester exams are in this repository.

## Directories
1. 8085 -> contains 8085 programmes
2. 8086 -> contains 8086 programmes
3. questions -> contains questions for further practise.

# Some Important 8085 opcodes and its usages

1. MOV A,B   => USed for register to register data transfer
2. MVI A,20h => used for immediate data transfer to register
3. LDA 2020h => Loads the content of memory location [2020h] to `Accumulator`   
4. STA 5050h => stores the value of `Accumulator` to memory location [5050h]
5. LXI B, 2000h => stores 2000h in BC pair (notice X says pair)

# Looping in 8085/8086
There are various ways of looping in 8085/8086. One of the example is explained below:

```asm
MOV C, 10h    ; initialize a counter register

goto:         ; create a label for loop control
; Paste the code that must be inside in a loop here
DCR C         ; decrement the value of counter
JNZ goto      ; loops until the value of C becomes zero
```

... ( More to come )