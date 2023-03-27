$modde0cv

CSEG at 0
ljmp START

dseg at 30h
x: ds 4 ; 32-bits for variable ‘x’
y: ds 4 ; 32-bits for variable ‘y’
z: ds 4 ; 32 bit holder number 'z'
bcd: ds 5 ; 10-digit packed BCD (each byte stores 2 digits)
bseg
mf: dbit 1 ; Math functions flag
$include(math32.asm)

CSEG
	
	
	; Look-up table for 7-seg displays
myLUT:
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H        ; 0 TO 4
    DB 092H, 082H, 0F8H, 080H, 090H        ; 4 TO 9

showBCD MAC
	; Display LSD
    mov A, %0
    anl a, #0fh
    movc A, @A+dptr
    mov %1, A
	; Display MSD
    mov A, %0
    swap a
    anl a, #0fh
    movc A, @A+dptr
    mov %2, A
ENDMAC

Display:
	mov dptr, #myLUT
	showBCD(bcd+0, HEX0, HEX1)
	showBCD(bcd+1, HEX2, HEX3)
	showBCD(bcd+2, HEX4, HEX5)
    ret

MYRLC MAC
	mov a, %0
	rlc a
	mov %0, a
ENDMAC

PushX:
	push x+0
	push x+1
	push x+2
	push x+3
	ret
PopX:
	pop x+3				
	pop x+2
	pop x+1
	pop x+0
	ret

PushY:
	push y+0
	push y+1
	push y+2
	push y+3
	ret

PopY:
	pop y+3				
	pop y+2
	pop y+1
	pop y+0
	ret


Shift_Digits:
	mov R0, #4 ; shift left four bits
Shift_Digits_L0:
	clr c
	MYRLC(bcd+0)
	MYRLC(bcd+1)
	MYRLC(bcd+2)
	MYRLC(bcd+3)
	MYRLC(bcd+4)
	djnz R0, Shift_Digits_L0
	; R7 has the new bcd digit	
	mov a, R7
	orl a, bcd+0
	mov bcd+0, a
	; bcd+3 and bcd+4 don't fit in the 7-segment displays so make them zero
	clr a
	mov bcd+4, a
	ret

Wait50ms:
;33.33MHz, 1 clk per cycle: 0.03us
	mov R0, #30
L3: mov R1, #74
L2: mov R2, #250
L1: djnz R2, L1 ;3*250*0.03us=22.5us
    djnz R1, L2 ;74*22.5us=1.665ms
    djnz R0, L3 ;1.665ms*30=50ms
    ret

; Check if SW0 to SW9 are toggled up.  Returns the toggled switch in
; R7.  If the carry is not set, no toggling switches were detected.
ReadNumber:
	mov r4, SWA ; Read switches 0 to 7
	mov a, SWB ; Read switches 8 to 9
	anl a, #00000011B ; Only two bits of SWB available
	mov r5, a
	mov a, r4
	orl a, r5
	jz ReadNumber_no_number
	lcall Wait50ms ; debounce
	mov a, SWA
	clr c
	subb a, r4
	jnz ReadNumber_no_number ; it was a bounce
	mov a, SWB
	anl a, #00000011B
	clr c
	subb a, r5
	jnz ReadNumber_no_number ; it was a bounce
	mov r7, #16 ; Loop counter
ReadNumber_L0:
	clr c
	mov a, r4
	rlc a
	mov r4, a
	mov a, r5
	rlc a
	mov r5, a
	jc ReadNumber_decode
	djnz r7, ReadNumber_L0
	sjmp ReadNumber_no_number	
ReadNumber_decode:
	dec r7
	setb c
ReadNumber_L1:
	mov a, SWA
	jnz ReadNumber_L1
ReadNumber_L2:
	mov a, SWB
	jnz ReadNumber_L2
	ret
ReadNumber_no_number:
	clr c
	ret
	
START: ; Called once on start
	mov SP, #7FH
	clr a
	mov LEDRA, a
	mov LEDRB, a
	mov bcd+0, a
	mov bcd+1, a
	mov bcd+2, a
	mov bcd+3, a
	mov bcd+4, a
	lcall Display

	mov b, #00000001B ; b=0:addition, b=1:subtraction, etc.
	setb LEDRA.0 ; Turn LEDR0 on to indicate addition
	
LOOP: ; Called forever
	mov LEDRA, b
	
	jb KEY.3, no_funct 		; If 'Function' key not pressed, skip
		jnb KEY.3, $ 		; Wait for release of 'Function' key
		mov a, b 
		mov b, #0x02H
		mul ab
		mov b, a					; 'b' is used as function select
		cjne a, #10000000B, forever ; ^
		mov b, 	#00000001B 			; ^
		ljmp forever 				; Go check for more input
		
	
no_funct:
	jb KEY.2, no_load 		; If 'Load' key not pressed, skip
		jnb KEY.2, $ 		; Wait for user to release 'Load' key
		lcall bcd2hex 		; Convert the BCD number to hex in x
		lcall copy_xy 		; Copy x to y
		Load_X(0) 			; Clear x (this is a macro)
		lcall hex2bcd 		; Convert result in x to BCD
		lcall Display 		; Display the new BCD number
		ljmp forever 		; Go check for more input
	
no_load:
	jb KEY.1, no_equal 		; If 'equal' key not pressed, skip
		jnb KEY.1, $ 		; Wait for user to release 'equal' key
		lcall bcd2hex 		; Convert the BCD number to hex in x
		
		mov a, b 			; Check if we are doing addition
	
	CJNE a, #00000001B, Addition
		lcall add32 	; x+y stored in x
Addition:
	
	CJNE a, #00000010B, Subtraction
		lcall sub32 	; x-y stored in x
Subtraction:
	
	CJNE a, #00000100B, Multiplication
		lcall mul32
Multiplication:
	
	CJNE a, #00001000B, Division
		lcall div32
Division:
	
	CJNE a, #00010000B, Remainder
		
		lcall PushX
							;temporarily store value of x in memory
		lcall div32			;divides x by y, stores the divided value in x (gets rid of remainder)
		lcall mul32			;multiplies x by y
		lcall xchg_xy		;swap x and y
		
		lcall PopX
		
		lcall sub32			;subtract divided and multiplied value of x from full x
Remainder:
	
	CJNE a, #00100000B, Percentage
		
		lcall PushY			;store y in temporary memory
		
		load_y(100)
		lcall mul32 		;mul x by y, store in x
		
		lcall PopY
		lcall div32 		;div x by y, store in x

sjmp no_equal3
	no_equal:
	ljmp no_equal2
no_equal3:		
		
Percentage:
	
	CJNE a, #01000000B, SQRT
		;run through all numbers from 0 upwards, square them, and check if it is less
		;if less, go next, if more, output last value
		;uses R6 as 
		
		Load_y(0)
		push AR6
		mov R6, #00000000B
		SQRTLoop:
			Push X
			load_x(y)
			lcall mul32
							;square y, store in Y
			
			lcall mul32
			lcall x_gt_y
			mov R6, mf
			CJNE R6, #00000001B, SQRTAnswerFound
			
			
			
		sjmp SQRTLoop
		
		SQRTAnswerFound:
						;do something to use R6 to set y = R6 - 1
		lcall sub32 	;sub x from y
		
SQRT:
	
	lcall hex2bcd 		; Convert result in x to BCD
	lcall Display 		; Display the new BCD number
	ljmp forever 		; Go check for more input
	
no_equal2:
	; get more numbers
	lcall ReadNumber
	jnc no_new_digit ; Indirect jump to 'forever'
	lcall Shift_Digits
	lcall Display
no_new_digit:

	ljmp forever ; 'forever' is to far away, need to use ljmp
	
end
