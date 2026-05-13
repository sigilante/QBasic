CLS : COLOR 11
PRINT TAB(26); "L GAME": COLOR 3
PRINT TAB(23); "GAME WRIGHT": COLOR 9
PRINT TAB(22); "PLAINVIEW, TX": COLOR 10
PRINT : PRINT : PRINT
DIM C(4), O(4), T(4), B(16), N(16), M(100)
PRINT "INSTRUCTIONS"; : INPUT A$
IF LEFT$(A$, 1) = "Y" THEN GOTO Instructions
PRINT "BOARD PRINTOUT"; : INPUT A$
IF LEFT$(A$, 1) = "N" THEN GOTO NoBoard
LET F2 = 0
GOTO 70
NoBoard:
 LET F2 = 1
 GOSUB DataInit1
 GOTO WantToStart
DataInit1:
 REM ** Initialize data
 REM ** B1,B2 = POSITIONS OF BOXES
 REM ** C(1,2,3,4) = COMPUTER'S POSITION
 REM ** O(1,2,3,4) = YOUR POSITION
 REM ** T(1,2,3,4) = 6,7,10,11 = CENTER POSITIONS
 REM ** B(1,...16) = BOARD:
 REM        B(X) = 0 EMPTY
 REM        B(X) = 1 YOUR L
 REM        B(X) = 2 COMPUTER'S L
 REM        B(X) = 3 BOX
 RESTORE
 DATA 1,16,2,7,6,6,11,7,10,15,10,3,14,11
 DATA 3,2,2,0,0,2,1,0,0,2,1,0,0,1,1,3
 READ B1, B2
 FOR X = 1 TO 4
  READ C(X), O(X), T(X)
  NEXT X
 RETURN
DataInit:
 PRINT "DO YOU WISH TO START";
 INPUT A$
 IF LEFT$(A$, 1) = "N" THEN GOTO MoreJunk1
REM ** YOUR MOVE
 GOSUB 2270
 PRINT
 PRINT "YOUR MOVE FOR L"; : INPUT D(1), D(2), D(3), D(4)
 IF ABS(D(1)) + ABS(D(2)) + ABS(D(3)) + ABS(D(4)) = 0 THEN 1280
REM ** BUBBLE SORT
 FOR X = 1 TO 4
  FOR Y = 2 TO 4
   IF D(Y) > D(Y - 1) THEN GOTO NextY
   LET Z = D(Y)
   LET D(Y) = D(Y - 1)
   LET D(Y - 1) = Z
NextY:
  NEXT Y
 NEXT X
REM ** CHECK FOR LEGAL MOVE
 FOR X = 1 TO 4
  LET N(X) = D(X)
 NEXT X
 LET N1 = 4
 LET F1 = 0
 GOSUB LetSomeMore
 IF M1 <> 4 THEN GOTO IllegalMove
 FOR X = 1 TO 4
  IF B(M(X)) > 1 THEN GOTO IllegalMove
 NEXT X
 FOR X = 1 TO 4
  LET B(O(X)) = 0
 NEXT X
 FOR X = 1 TO 4
  LET B(M(X)) = 1
  LET O(X) = M(X)
 NEXT X
 LET B(B1) = 0
 LET B(B2) = 0
 PRINT "YOUR MOVE FOR THE BOXES";
 INPUT X, Y
  IF ABS(X) = ABS(Y) <> X + Y THEN GOTO IllegalMoveForBox
  IF X = Y THEN GOTO IllegalMoveForBox
  IF B(X) + B(Y) > 0 THEN GOTO IllegalMoveForBox
 LET B1 = X
 LET B2 = Y
 LET B(B1) = 3
 LET B(B2) = 3
  PRINT "OKAY!"
  GOSUB ShowBoard
REM ** COMPUTER'S MOVE

