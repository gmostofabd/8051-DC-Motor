
        ORG 00H                 ; initial starting address
MAIN: 
        MOV     P1,#00000001B   ; motor runs clockwise
        ACALL   DELAY           ; calls the 1S DELAY
        MOV     P1,#00000010B   ; motor runs anti clockwise
        ACALL   DELAY           ; calls the 1S DELAY
        SJMP    MAIN            ; jumps to label MAIN for repaeting the cycle

DELAY:  MOV     R4,#0FH
WAIT1:  MOV     R3,#00H
WAIT2:  MOV     R2,#00H
WAIT3:  DJNZ    R2,WAIT3
        DJNZ    R3,WAIT2
        DJNZ    R4,WAIT1
        RET
    END
