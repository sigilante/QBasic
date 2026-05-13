'1.4376
5 SCREEN 12
10 INPUT A: B = A / 1.05: R = 1
20 X1 = 140: Y1 = 159
30 FOR T = 0 TO 3000 STEP .1
40 R = COS(T) 'R = R * .999
50 X = SIN(T / A) * 139 * R + 140
60 Y = COS(T / A) * 79 * R + 80'Y = COS(T / B) * 79 * R + 80
70 LINE (X1, Y1)-(X, Y), 11: X1 = X: Y1 = Y: NEXT


