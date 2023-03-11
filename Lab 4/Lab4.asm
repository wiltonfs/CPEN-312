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
; last one is just blank
T_StuNum:
	DB 40H, 02H, 78H, 10H, 12H, 40H, 00H, 19H, 7FH

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
	
	; Start timer
	mov r1, S_TICKS
	mov r2, M_TICKS
	mov r3, L_TICKS
	
	; Mode 0 by default
	Display_on(HEX0, #02)
	Display_on(HEX1, #03)
	Display_on(HEX2, #04)
	Display_on(HEX3, #05)
	Display_on(HEX4, #06)
	Display_on(HEX5, #07)
Forever:
	; Latching circuit
	jb key.3, ENDLATCHtmp	; jump if bit 3 of switch is = 1
	ljmp LATCHLOGIC
ENDLATCHtmp: ljmp ENDLATCH	; I have to do this weird jumping bc jb can only jump up to 127 lines

LATCHLOGIC:
	mov r0, SWA 			; store switch values in r0
	; Evaluate initial load depending on switch value
	mov a, r0
	ANL a, #07				; strip A to only the least significant 3 values
	
	CJNE a, #00, MODE1 		; jump if A != byte
	; Mode 0
	Display_on(HEX0, #02)
	Display_on(HEX1, #03)
	Display_on(HEX2, #04)
	Display_on(HEX3, #05)
	Display_on(HEX4, #06)
	Display_on(HEX5, #07)
	
	ljmp ENDLATCH	
MODE1:	CJNE a, #01, MODE2 		; jump if A != byte 
	; Mode 1
	Display_on(HEX0, #00)
	Display_on(HEX1, #01)
	Display_on(HEX2, #08)
	Display_on(HEX3, #08)
	Display_on(HEX4, #08)
	Display_on(HEX5, #08)
		
	ljmp ENDLATCH
MODE2:	CJNE a, #02, MODE3 		; jump if A != byte 
	; Mode 2
	
	
	ljmp ENDLATCH
MODE3:	CJNE a, #03, MODE4 		; jump if A != byte 
	; Mode 3
	
	
	ljmp ENDLATCH
MODE4:	CJNE a, #04, MODE5 		; jump if A != byte 
	; Mode 4
	
	
	ljmp ENDLATCH
MODE5:	CJNE a, #05, MODE6 		; jump if A != byte 
	; Mode 5
	
	
	ljmp ENDLATCH
MODE6:	CJNE a, #06, MODE7 		; jump if A != byte 
	; Mode 6
	
	
	ljmp ENDLATCH
MODE7:	; this should be the "else" case
	; Mode 7
	
	
	ljmp ENDLATCH	
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
	
ENDTIME:

	ljmp Forever ; Repeat forever
END
