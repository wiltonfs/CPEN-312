$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main
    
; Look-up table for my student number
; Least sig to most sig
; 48059760
T_StuNum:
	DB 40H, 02H, 78H, 10H, 12H, 40H, 00H, 19H
T_HexDisp:
	DB 91H, HEX1, HEX2, HEX3, HEX4, HEX5

Display_on mac
	mov b, a ; Preserve value of accumulator
	
	mov dptr, #T_StuNum ; point to student number lookup table
	mov a, %1 ; Load input into accumulator
	movc a, @dptr+a ; Read from table
	
	mov %0, a ; Display number

	mov a, b ; Restore value of accumulator
endmac

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
Forever:
	mov r1, #00H
	Display_on(HEX0, r1)
	inc r1 ; increment r1
	Display_on(HEX1, r1)
	inc r1 ; increment r1
	Display_on(HEX2, r1)
	inc r1 ; increment r1
	Display_on(HEX3, r1)
	inc r1 ; increment r1
	Display_on(HEX4, r1)
	inc r1 ; increment r1
	Display_on(HEX5, r1)

	ljmp Forever ; Repeat forever
END
