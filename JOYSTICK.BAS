DECLARE SUB STICKS (Joyx%, JOYY%, BUT1%, BUt2%, BUT3%)
DIM SHARED mouse$
RESTORE
SCREEN 12
CLS
DO
STICKS Joyx%, JOYY%, BUT1%, BUt2%, BUT3%
LOCATE 1, 1
PRINT "Joystick   :  B1:"; BUT1%, "B2:"; BUt2%, "B3:"; BUT3%, "X:"; Joyx%, "Y:"; JOYY%; X
PSET (Joyx%, JOYY%), 0
DRAW "C15 D10 R2 D5 R2 U5"
LOOP

SUB STICKS (Joyx%, JOYY%, BUT1%, BUt2%, BUT3%)
Joyx% = STICK(0)
JOYY% = STICK(1)

BUT1% = STRIG(1)
BUt2% = STRIG(5)
BUT3% = STRIG(7)

END SUB

