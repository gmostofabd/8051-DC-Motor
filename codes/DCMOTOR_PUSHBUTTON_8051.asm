	ORG 	00H 			; initiall starting address
	MOV 	P3,#00000000B 		; initiates P3 as the pushbutton 
	MOV 	P1,#00000000B 		; clears P1 for motor OFF initially

MAIN:	MOV 	A,P3 			; Current state of P3 to Accumulator
	CJNE 	A,#00000001B,LABEL1 	; checks whether S2 is pressed
	MOV 	P1,#00000001B 		; makes the motor run clockwise

LABEL1:	CJNE 	A,#00000010B,LABEL2 	; checks whether S3 is pressed
	MOV 	P1,#00000010B 		; makes the motor to run anti clockwise

LABEL2:	SJMP 	MAIN 			; jumps back to the MAIN loop

	END