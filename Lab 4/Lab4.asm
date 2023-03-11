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
	mov r1, #250
	mov r2, #250
	mov r3, #180
Forever:
	; Latching circuit
	mov a, key	; put button val into accumulator
	jnz ENDLATCH	; if not zero (button not pressed), jump over the latch
	mov r0, SWA 	; store switch values in r0
ENDLATCH: 
	
	; Timing circuit
	djnz r1, ENDTIME
	mov r1, #250 	; if we got here, that means r1 is zero
	djnz r2, ENDTIME
	mov r2, #250	; if we got here, that means r2 is zero
	djnz r3, ENDTIME
	mov r3, #180	; if we got here, that means r3 is zero
	; This line should execute once a second
	cpl LEDRA.0		;heartbeat
ENDTIME:		
	
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
