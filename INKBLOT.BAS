SCREEN 12
WIDTH 80, 60
COLOR 11
PRINT TAB(36); "INKBLOT"
COLOR 10
PRINT TAB(31); "GAME WRIGHT, INC."
COLOR 12
PRINT TAB(33); "PLAINVIEW, TX."
PRINT : PRINT : PRINT
DIM A(12, 13), B$(36), A$(36)
M = INT(RND * 8) + 5
FOR L = 1 TO M
A(L, 1) = 34 * RND
A(L, 2) = 80 * RND
A(L, 3) = (15 * RND + 2) ^ 2
A(L, 4) = (15 * RND + 2) ^ 2
T = 3.14159 + RND
A(L, 5) = COS(T)
A(L, 6) = SIN(T)
A(L, 7) = A(L, 5) * A(L, 6)
A(L, 5) = A(L, 5) * A(L, 5)
A(L, 6) = A(L, 6) * A(L, 6)
A(L, 8) = A(L, 1) * A(L, 1) * A(L, 6)
A(L, 9) = A(L, 1) * A(L, 1) * A(L, 5)
A(L, 10) = A(L, 1) * A(L, 7)
A(L, 11) = -2 * A(L, 1) * A(L, 6)
A(L, 12) = -2 * A(L, 1) * A(L, 5)
A(L, 13) = A(L, 6) / A(L, 4) + A(L, 5) / A(L, 3)
NEXT L
REM *** TOP BORDER
B$ = "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
PRINT B$; B$
PRINT B$; B$
REM *** Y COORDINATES LOOP
FOR Y = 79.9 TO 0 STEP -1
A$ = "$$"
REM *** LOOP E CHECKS INTERSECT
FOR E = 1 TO M
Y1 = Y - A(E, 2)
Y2 = Y1 * Y1
Y3 = Y1 * A(E, 10)
Y4 = Y1 * A(E, 7)
B = (A(E, 12) + Y4) / A(E, 3) + (-Y4 + A(E, 11)) / A(E, 4)
C = (Y2 * A(E, 6) + A(E, 9) - Y3) / A(E, 3) + (Y2 * A(E, 5) + A(E, 8) + Y3) / A(E, 4) - 1
R = B * B - 4 + A(E, 13) * C
IF R < 0 THEN 690
R = SQR(R)
REM *** FIND WHERE THE LINE INTERSECTS THE ELLIPSE
R1 = INT(-(B + R) / 2 / A(E, 13) + 1)
IF R1 > 34 THEN 690
R2 = INT((R - B) / 2 / A(E, 13))
IF R2 < 1 THEN 690
IF R2 < 35 THEN 630
R2 = 34
630 IF R1 > 0 THEN 660
R1 = 1
REM *** FILL IN LINE WHERE IT CROSSES THE ELLIPSE
660 FOR J = R1 + 2 TO R2 + 2
A$ = LEFT$(A$, J - 1) + "$" + RIGHT$(A$, LEN(A$) - J)
NEXT J
690 NEXT E
REM *** PRINT LINE
LPRINT A$;
FOR K = 36 TO 1 STEP -1
PRINT MID$(A$, K, 1);
NEXT K
NEXT Y
REM *** PRINT BOTTOM BORDER
PRINT B$; B$
PRINT B$; B$
END

