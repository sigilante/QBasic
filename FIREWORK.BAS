SCREEN 12
DO
X = 639 * RND: Y = 479 * RND
A = X + 10: B = Y + 10
C = X + 10: D = Y - 10
E = X - 10: F = Y - 10
G = X - 10: H = Y + 10
I = X - 10: J = X + 10
K = Y + 10: L = Y - 10
COLR = RND * 15
LINE (X, Y)-(A, B), COLR
LINE (X, Y)-(C, D), COLR
LINE (X, Y)-(E, F), COLR
LINE (X, Y)-(G, H), COLR
LINE (X, Y)-(I, Y), COLR
LINE (X, Y)-(J, Y), COLR
LINE (X, Y)-(X, K), COLR
LINE (X, Y)-(X, L), COLR
FOR T = 1 TO 1000: NEXT T
CLS
LINE (X, Y)-(X + 20, Y), COLR
LINE (X, Y)-(X - 20, Y), COLR
LINE (X, Y)-(X, Y + 20), COLR
LINE (X, Y)-(X, Y - 20), COLR
LINE (X, Y)-(A, B), COLR
LINE (X, Y)-(C, D), COLR
LINE (X, Y)-(E, F), COLR
LINE (X, Y)-(G, H), COLR
FOR T = 1 TO 1000: NEXT T
CLS
LINE (X, Y)-(A, B), COLR
LINE (X, Y)-(C, D), COLR
LINE (X, Y)-(E, F), COLR
LINE (X, Y)-(G, H), COLR
LINE (X, Y)-(I, Y), COLR
LINE (X, Y)-(J, Y), COLR
LINE (X, Y)-(X, K), COLR
LINE (X, Y)-(X, L), COLR
FOR T = 1 TO 2000: NEXT T
CLS
LOOP UNTIL (INKEY$ <> "")

