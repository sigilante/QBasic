REM***GAMES FOR KIDS
REM**MAIN MENU
1 CLS : LOCATE 10, 20: COLOR 2, 0
2 PRINT CHR$(218); STRING$(10, CHR$(196)); " GAMES FOR KIDS "; STRING$(10, CHR$(196)); CHR$(191)
3 PRINT "                   "; CHR$(179); " (1) YOUR AGE IN DOG YEARS          "; CHR$(179)
4 PRINT "                   "; CHR$(179); " (2) YOUR WEIGHT ON THE MOON        "; CHR$(179)
5 PRINT "                   "; CHR$(179); " (3) ALPHABET  (X) TO QUIT          "; CHR$(179)
6 PRINT "                   "; CHR$(192); STRING$(36, CHR$(196)); CHR$(217)
7 PRINT "                   WHAT IS YOUR CHOICE"; : INPUT A$
IF A$ = "1" THEN GOTO 10
IF A$ = "2" THEN GOTO 20
IF A$ = "3" THEN GOTO 30
IF A$ = "X" THEN END

10 REM*DOGAGECALC
    INPUT "WHAT IS YOUR AGE"; AGE
    PRINT "YOUR AGE IN DOG YEARS IS "; AGE * 7; "!!!"
    FOR T = 1 TO 50000: NEXT T: GOTO 1
20 REM*MOONWEIGHT
    INPUT "WHAT IS YOUR WEIGHT"; WEIGHT
    PRINT "YOU ONLY WEIGH "; WEIGHT / 6; " ON THE MOON!!!"
    FOR T = 1 TO 50000: NEXT T: GOTO 1
30 REM*ALPHABET
    PRINT "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    PRINT "abcdefghijklmnopqrstuvwxyz"
    FOR T = 1 TO 50000: NEXT T: GOTO 1




















