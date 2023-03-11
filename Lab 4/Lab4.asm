$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main

;These three values are associated with the timing of the circuit
;Tune them to set the "heartbeat" of the program
S_TICKS EQU #100
M_TICKS EQU #100
L_TICKS EQU #90

; Look-up table for my student number
; Least sig to most sig
; 48059760
T_StuNum:
	DB 40H, 02H, 78H, 10H, 12H, 40H, 00H, 19H

Display_on mac
	mov b, a ; Preserve value of accumulator (just in case)
	
	mov dptr, #T_StuNum ; point to student number lookup table
	mov a, %1 ; Load macro's input into accumulator
	movc a, @dptr+a ; Read from table with the input offset
	
	mov %0, a ; Display number to given register

	mov a, b ; Restore value of accumulator (just in case)
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
	
	
	; these lines executes once a "heartbeat"
	cpl LEDRA.0		;flip LED to visualize heartbeat
	
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
