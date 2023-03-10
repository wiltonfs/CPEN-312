$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero

M0:
	cpl LEDRA.0 ; Turn LEDR0 on/off
	ljmp M0     ; Repeat forever
END
