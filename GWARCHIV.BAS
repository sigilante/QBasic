SCREEN 9: WIDTH 80, 43: COLOR 10
REM ** GAME WRIGHT ORGANIZATIONAL SYSTEM
PRINT "Welcome to the Game Wright archiving/retrieval system."
PRINT "Press 1 for help, or any other key to continue. . ."
A$ = INPUT$(1)

DIM SHARED mouse$
RESTORE
mouse$ = SPACE$(57)
FOR I% = 1 TO 57
  READ A$
  H$ = CHR$(VAL("&H" + A$))
  MID$(mouse$, I%, 1) = H$
NEXT I%
DATA 55,89,E5,8B,5E,0C,8B,07,50,8B,5E,0A,8B,07,50,8B
DATA 5E,08,8B,0F,8B,5E,06,8B,17,5B,58,1E,07,CD,33,53
DATA 8B,5E,0C,89,07,58,8B,5E,0A,89,07,8B,5E,08,89,0F
DATA 8B,5E,06,89,17,5D,CA,08,00
CLS

MS% = MouseInit%
IF NOT MS% THEN
  PRINT "Mouse not found": LET AMOUSE$ = "NO":


END IF
PRINT "Mouse found and initialized": LET AMOUSE$ = "YES"

DO
mousestatus lb%, rb%, Xmouse%, Ymouse%
LOCATE 5, 1
PRINT "Mouse STUFF:  LB:"; lb%, "RB:"; rb%, "X:"; Xmouse%, "Y:"; Ymouse%
PRINT "Joystick   :  B1:"; BUT1%, "B2:"; BUt2%, "B3:"; BUT3%, "X:"; Joyx%, "Y:"; JOYY%; X
LOOP

SUB Help
PRINT "F"
END SUB

