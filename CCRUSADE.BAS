SCREEN 12
DIM newattr AS LONG
PAINT (0, 0), 4
'
CIRCLE (100, 100), 100, 5, -.8, -5.5, 1.3
CIRCLE (100, 100), 75, 5, -.8, -5.5, 1.3
CIRCLE (100, 100), 73, 0, , , 1.3
PAINT (100, 100), 0
PAINT (100, 100), 4, 5
PAINT (55, 50), 13, 5
'
CIRCLE (200, 50), 50, 5, , , 1.3
CIRCLE (200, 50), 30, 5, , , 1.3
'
CIRCLE (300, 25), 50, 5, .8, 4.8, .5
CIRCLE (300, 25), 25, 5, .8, 5, .5
CIRCLE (300, 75), 25, 5, 3.2, 1.75, 1.1
CIRCLE (300, 75), 38, 5, 3.2, 1.75, 1.1
LINE (337, 8)-(317, 17), 5
LINE (277, 76)-(265, 76), 5
'

FOR newattr = 0 TO 63
PALETTE 4, newattr
NEXT newattr
'
PAINT (0, 0), 4, 5
A$ = INPUT$(1)
'RUN "C:\DOS\COSMOMAK.BAS"

