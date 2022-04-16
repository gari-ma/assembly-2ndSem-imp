; code created by npgarima
; The temperature of two furnaces being monitored by a microprocessor based system. A set of
; readings of the first furnace recorded by thermal sensor is stored at memory locations starting
; at 4050H. Corresponding readings from the second furnace is stored at the memory location
; starting at 4070H. Each reading from the first furnace is expected to be higher than the
; corresponding reading from the second furnace. Among the eight bit data bit D7 is used to
; test the validity of the data. Write an 8085 program to compare valid data from the two
; tables, if data from first table is larger than the corresponding data from the second table
; store 01H in the corresponding memory of the third location starting at 4090H and display
; 01H to indicate the normal operation else store FFH in the corresponding memory location
; and display FFH in the port to indicate the emergency. When emergency condition is reached
; stop the operation. 