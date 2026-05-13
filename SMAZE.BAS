SCREEN 7
PAINT (0, 0), 2
LINE (0, 0)-(319, 199), 15, B
LINE (1, 1)-(318, 198), 15, B
LINE (2, 2)-(317, 197), 15, B
LINE (3, 3)-(316, 196), 15, B
LINE (4, 4)-(315, 195), 15, B
LINE (5, 5)-(314, 194), 25, B
LINE (6, 6)-(313, 193), 15, B
LINE (7, 7)-(312, 192), 15, B
LINE (8, 8)-(311, 191), 15, B
LINE (9, 9)-(310, 190), 15, B
LINE (10, 10)-(309, 189), 15, B
LINE (11, 11)-(308, 188), 25, B
FOR DOT = 1 TO 4000
PSET ((300 * RND) + 10, (180 * RND) + 10), 15
NEXT DOT
X = 55
Y = 65
DX = 10
DY = 10
DO
IF POINT(X + 21, Y) = 15 OR POINT(X - 21, Y) = 15 THEN DX = -DX
IF POINT(X, Y + 21) = 15 OR POINT(X, Y - 21) = 15 THEN DY = -DY
CIRCLE (X, Y), 2, 7
PAINT (X, Y), 8, 7
FOR T = 1 TO 200: NEXT T
PAINT (X, Y), 2, 15
X = X + DX
Y = Y + DY
LOOP UNTIL (INKEY$ <> "")

