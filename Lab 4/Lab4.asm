$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; Which code memory location to start at after reset
	ljmp pgrmstart	; jump down to the label called "pgrmstart"

;These three values are associated with the timing of the circuit
;Tune them to set the "heartbeat" of the program
;The time between "heartbeats" is a function of product of these three
;But none of them can be over 255 (8 bit)
S_TICKS EQU #100
M_TICKS EQU #100
L_TICKS EQU #90

; Look-up table for my student number
; Least sig to most sig
; My student num: 48059760
; last one is just blank
T_StuNum:
	; 	0	6	  7	   9	5	 0	  8	   4 	
	DB 40H, 02H, 78H, 10H, 12H, 40H, 00H, 19H
	; BLANK
	DB 7FH
	;   H 	 E	  L	   O
	DB 89H, 86H, 0xC7H, 40H

;This is a "function", it takes two parameters. These parameters can be accessed using %0 and %1
Display_on mac
	mov b, a ; Preserve value of accumulator (just in case I was doing something important before)
	
	mov dptr, #T_StuNum ; point to student number lookup table
	mov a, %1 ; Load second input into accumulator
	movc a, @dptr+a ; Read from table with the input offset. movc means reading from the code dataspace, and the @ is a dereference thing bc its a pointer
	
	mov %0, a ; Display number to given (first input) register

	mov a, b ; Restore value of accumulator (just in case I was doing something important before)
endmac

;This is a "function", it takes no parameters. It just displays the first 6 digits of my student number
Most_sig mac
	Display_on(HEX0, #02)
	Display_on(HEX1, #03)
	Display_on(HEX2, #04)
	Display_on(HEX3, #05)
	Display_on(HEX4, #06)
	Display_on(HEX5, #07)
endmac

;This is a "function", it takes no parameters. It just displays all blank
All_blnk mac
	Display_on(HEX0, #08)
	Display_on(HEX1, #08)
	Display_on(HEX2, #08)
	Display_on(HEX3, #08)
	Display_on(HEX4, #08)
	Display_on(HEX5, #08)
endmac

;This is a "function", it takes no parameters. It just displays the last 6 digits of my student number
Least_sig mac
	Display_on(HEX0, #00)
	Display_on(HEX1, #01)
	Display_on(HEX2, #02)
	Display_on(HEX3, #03)
	Display_on(HEX4, #04)
	Display_on(HEX5, #05)
endmac

;This is a "function", it takes no parameters. It just displays HELLO
Hello mac
	Display_on(HEX0, #08H)
	Display_on(HEX1, #0CH)
	Display_on(HEX2, #0BH)
	Display_on(HEX3, #0BH)
	Display_on(HEX4, #0AH)
	Display_on(HEX5, #09H)
endmac

;This is a "function", it takes no parameters. It just displays the custom display for mode 7
Custom_disp mac
	; Up to you to implement
endmac

; The code under this label runs once, when the program starts
pgrmstart:
	; Turns off LEDs and stuff
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
	
	; Start timer
	mov r1, S_TICKS
	mov r2, M_TICKS
	mov r3, L_TICKS
	
	; Mode 0 by default, display first 6 digits
	Most_sig()
	
; The code under this label runs continuously
loop:
	; Latching logic
	jb key.3, ENDLATCHtmp	; jump if bit 3 of switch is = 1
	ljmp LATCHLOGIC
ENDLATCHtmp: ljmp ENDLATCH	; I have to do this weird jumping bc jb can only jump up to 127 lines

; The code under this label has to do with latching our mode, and updating the display
; to the "first frame" of that mode
LATCHLOGIC:
	mov r0, SWA 			; store switch values in r0
	; Evaluate initial display depending on mode
	mov a, r0 				
	ANL a, #07				; strip A to only the least significant 3 values by ANDing it with 00000111 (Not strictly nesc.)
	
	; Think of this as a big Switch statement that finds what mode we are in
	; There is a better way to do this, as a lot of the modes have the same start
	; However, to start with this is a more clear way to see what is going on
	CJNE a, #00, MODE1 		; jump if A != byte
	; Mode 0
	Most_sig() ; display first 6 digits
	
	ljmp ENDLATCH	
MODE1:	CJNE a, #01, MODE2 		; jump if A != byte 
	; Mode 1
	All_blnk()
	Display_on(HEX0, #00)
	Display_on(HEX1, #01)
		
	ljmp ENDLATCH
MODE2:	CJNE a, #02, MODE3 		; jump if A != byte 
	; Mode 2
	Most_sig() ; display first 6 digits
	
	ljmp ENDLATCH
MODE3:	CJNE a, #03, MODE4 		; jump if A != byte 
	; Mode 3
	Most_sig() ; display first 6 digits
	
	ljmp ENDLATCH
MODE4:	CJNE a, #04, MODE5 		; jump if A != byte 
	; Mode 4
	Least_sig() ; display last 6 digits
	
	ljmp ENDLATCH
MODE5:	CJNE a, #05, MODE6 		; jump if A != byte 
	; Mode 5
	All_blnk()
	
	ljmp ENDLATCH
MODE6:	CJNE a, #06, MODE7 		; jump if A != byte 
	; Mode 6
	Hello()
	
	ljmp ENDLATCH
MODE7:	; this should be the "else" case
	; Mode 7
	Custom_disp()
	
	ljmp ENDLATCH	
ENDLATCH: 

; The code under this label has to do with timekeeping
TIMELOGIC:	
	; Timing logic
	djnz r1, ENDTIME
	mov r1, S_TICKS 	; if we got here, that means r1 is zero
	djnz r2, ENDTIME
	mov r2, M_TICKS	; if we got here, that means r2 is zero
	djnz r3, ENDTIME
	mov r3, L_TICKS	; if we got here, that means r3 is zero
	
	; these lines execute once a "heartbeat"
	cpl LEDRA.0		;flip LED to visualize heartbeat
	
ENDTIME:

	ljmp loop ; Go back up to Forever to keep repeating forever
END
