SCREEN 12
DEF SEG = 0
Status% = PEEK(&H417)
POKE &H417, (Status% OR &H40)
COLOR 10
PRINT "THIS IS A REMINDER: OCCASIONALY, IF YOU DO THIS PROGRAM FOR A LONG"
PRINT "TIME, PRESS <Ctrl> + <Pause/Break> AND THEN HIT <F5>. TO STOP, HIT"
PRINT "<Ctrl> + <Pause/Break>. THANK YOU."
INPUT "UFO COLOR(1-15)"; A%
INPUT "# OF DOTS(HIT '0' FOR NONE, 4000 IS NICE)"; C%
INPUT "SOUND(Y/N)"; D$
INPUT "BORDER COLOR(1-15)"; E%
INPUT "FILL UFO WITH COLOR(Y/N)"; F$
IF F$ = "Y" THEN INPUT "FILL UFO WITH WHAT COLOR(1-15)"; G%
15 INPUT "RADIUS OF UFO(1-150)"; H%
IF H% > 150 THEN 15
CLS
X = 251
Y = 251
DX = 1: DY = 1
LINE (639, 479)-(0, 0), E%, B
FOR DOT = 1 TO C%: PSET (RND * 639, RND * 479), E%: NEXT DOT
DO
IF POINT(X + H% + 2, Y) = E% OR POINT(X - H% - 2, Y) = E% THEN DX = -DX
IF POINT(X, Y - (H% - 5)) = E% OR POINT(X, Y + (H% + 5)) = E% THEN DY = -DY
CIRCLE (X, Y), H%, A%, , , .4
CIRCLE (X, Y), 5, E% - 1
CIRCLE (X + 40, Y), 5, E% - 1
CIRCLE (X - 40, Y), 5, E% - 1
CIRCLE (X - 20, Y), 5, E% - 1
CIRCLE (X + 20, Y), 5, E% - 1
PAINT (X, Y), G%, A%
PAINT (X + 40, Y), E% - 1, 0
PAINT (X + 20, Y), E% - 1, 0
PAINT (X - 40, Y), E% - 1, 0
PAINT (X - 20, Y), E% - 1, 0
'FOR T = 1 TO 200: NEXT T
IF D$ = "Y" THEN SOUND RND * 32767, 1
PAINT (X, Y), 0, E%
X = X + DX
Y = Y + DY
LOOP UNTIL (INKEY$ <> "")




