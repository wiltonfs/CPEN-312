;Blinks LEDR0 each second
$MODDE0CV

org 0000H
	ljmp myprogram
	
	
;For a 33.33MHz clock takes 30ns
WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1 ; 3 machine cycles, 22.5us
	djnz R1, L2 ; 5.625ms
	djnz R2, L3 ; 0.5s approx
	ret
	
myprogram:
	mov SP, #7FH
	mov LEDRA,#0
	mov LEDRB,#0
	
M0:
	cpl LEDRA.0
	lcall WaitHalfSec
	sjmp M0
END