$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main

LETTER_J EQU #0x61
LETTER_E EQU #0x06
LETTER_S EQU #0x12
LETTER_U EQU #0x41
BLANK    EQU #0xff
	
Delay:
	mov R2, #90
L2: mov R1, #250
L1: mov R0, #250
L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
	djnz R1, L1 ; 22.5us*250=5.625ms
	djnz R2, L2 ; 5.625ms*90=0.506s (approximately)
	ret

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
Forever:
	mov HEX4, LETTER_J
	lcall Delay
	mov HEX3, LETTER_E
	lcall Delay
	mov HEX2, LETTER_S
	lcall Delay
	mov HEX1, LETTER_U
	lcall Delay
	mov HEX0, LETTER_S
	lcall Delay
	
	mov HEX4, BLANK
	mov HEX3, BLANK
	mov HEX2, BLANK
	mov HEX1, BLANK
	mov HEX0, BLANK
	lcall Delay
	lcall Delay
	
	ljmp Forever ; Repeat forever	
END
