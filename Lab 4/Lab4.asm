$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main

#These three values are associated with the timing of the circuit
#Tune them to set the heartbeat of the program
S_TICKS EQU #100
M_TICKS EQU #100
L_TICKS EQU #90

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
	mov r1, S_TICKS
	mov r2, M_TICKS
	mov r3, L_TICKS
Forever:
	; Latching circuit
	jb key.3, ENDLATCH		; jump if bit 3 of switch is = 1
	mov r0, SWA 			; store switch values in r0
ENDLATCH: 
	
	; Timing circuit
	djnz r1, ENDTIME
	mov r1, S_TICKS 	; if we got here, that means r1 is zero
	djnz r2, ENDTIME
	mov r2, M_TICKS	; if we got here, that means r2 is zero
	djnz r3, ENDTIME
	mov r3, L_TICKS	; if we got here, that means r3 is zero
	; This line should execute once a second
	cpl LEDRA.0		;heartbeat
	
	mov r4, #00H
	Display_on(HEX0, r4)
	inc r4 ; increment r4
	Display_on(HEX1, r4)
	inc r4 ; increment r4
	Display_on(HEX2, r4)
	inc r4 ; increment r4
	Display_on(HEX3, r4)
	inc r4 ; increment r4
	Display_on(HEX4, r4)
	inc r4 ; increment r4
	Display_on(HEX5, r4)
	
	
ENDTIME:	
	ljmp Forever ; Repeat forever
END
