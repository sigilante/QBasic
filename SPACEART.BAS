SCREEN 12
INPUT A
B = A / 1.05
R = 1
X1 = 140
Y1 = 159
FOR T = 0 TO 3000 STEP .1
R = R * .999
X = SIN(T / A) * 139 * R + 140
Y = COS(T / B) * 79 * R + 80
LINE (X1, Y1)-(X, Y), 11
X1 = X: Y1 = Y
NEXT


