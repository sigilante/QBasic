10 SCREEN 12: WIDTH 80, 30
20 LET X = 20: Y = 15
30 GOSUB 100
40 LET X = X + (K = 21) - (K = 8)
50 LET Y = Y + (K = 10) - (K = 11)
60 LET X = X - (X > 39) + (X < 1): Y = Y - (Y > 23) + (Y < 1)
70 LOCATE X, Y: PRINT " "
80 GOSUB 100
90 LOCATE X, Y: PRINT "Ü": GOTO 30
100 LET K = PEEK(49168) - 128: RETURN

