SCREEN 12
P = 6.28
S = 3
X1 = 128: Y1 = 1
FOR R = 69 TO 70
FOR T = 0 TO P + .01 STEP P / S
X2 = SIN(T) * R + 128: Y2 = COS(T) * -R + 71
LINE (X1, Y1)-(X2, Y2)
X1 = X2: Y1 = Y2
NEXT T, R
LOCATE 10, 5: PRINT "TRIANGLE-A three sided polygon         SQUARE-A rectangle with sides"
LOCATE 11, 5: PRINT "                                              of equal length."
'
S = 4
X1 = 428: Y1 = 1
FOR R = 69 TO 70
FOR T = 0 TO P + .01 STEP P / S
X2 = SIN(T) * R + 428: Y2 = COS(T) * -R + 71
LINE (398, 1)-(528, 131), 15, B
X1 = X2: Y1 = Y2
NEXT T, R
'
S = 5
X1 = 128: Y1 = 251
FOR R = 69 TO 70
FOR T = 0 TO P + .01 STEP P / S
X2 = SIN(T) * R + 128: Y2 = COS(T) * -R + 321
LINE (X1, Y1)-(X2, Y2)
X1 = X2: Y1 = Y2
NEXT T, R
LOCATE 25, 5: PRINT "PENTAGON-A five sided polygon"
'
S = 6
X1 = 128: Y1 = 1
FOR R = 69 TO 70
FOR T = 0 TO P + .01 STEP P / S
X2 = SIN(T) * R + 128: Y2 = COS(T) * -R + 71
LINE (X1, Y1)-(X2, Y2)
X1 = X2: Y1 = Y2
NEXT T, R
LOCATE 10, 5: PRINT "TRIANGLE-A three sided polygon"

A$ = INPUT$(1)

