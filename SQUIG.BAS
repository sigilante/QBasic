SCREEN 12
TIMER ON
STart:
LET da = .06
LET ct = 1
nocol = 15
RANDOMIZE TIMER
LINEA = INT(RND * 640)
LINEB = INT(RND * 480)
LINEC = INT(RND * 640)
LINED = INT(RND * 480)


LINE (LINEA, LINEB)-(LINEC, LINED)
GOTO continue


continue:
MENU$ = INKEY$
IF MENU$ = "c" THEN CLS
IF MENU$ = CHR$(27) THEN SYSTEM
'IF MENU$ = CHR$(0) + "H" THEN ad = ad * 10
'IF MENU$ = CHR$(0) + "P" AND ad > 1 THEN ad = ad / 10
'IF MENU$ = "=" THEN da = da + ad
'IF MENU$ = "-" AND da >= ad THEN LET da = da - ad
'LOCATE 1, 1: PRINT ad
'LOCATE 1, 5: PRINT da
count = count + 1
IF count >= ct THEN count = 0
IF count = 0 THEN COl = INT(RND * nocol) + 1
 olinea22 = olinea21
 olineb22 = olineb21
 olinea21 = olinea20
 olineb21 = olineb20
 olinea20 = olinea19
 olineb20 = olineb19
 olinea19 = olinea18
 olineb19 = olineb18
 olinea18 = olinea17
 olineb18 = olineb17
 olinea17 = olinea16
 olineb17 = olineb16
 olinea16 = olinea15
 olineb16 = olineb15
 olinea15 = olinea14
 olineb15 = olineb14
 olinea14 = olinea13
 olineb14 = olineb13
 olinea13 = olinea12
 olineb13 = olineb12

 olinea12 = olinea11
 olineb12 = olineb11
 olinea11 = olinea10
 olineb11 = olineb10
 olinea10 = olinea9
 olineb10 = olineb9
 olinea9 = olinea8
 olineb9 = olineb8
 olinea8 = olinea7
 olineb8 = olineb7
 olinea7 = olinea6
 olineb7 = olineb6
 olinea6 = olinea5
 olineb6 = olineb5
 olinea5 = olinea4
 olineb5 = olineb4
 olinea4 = olinea3
 olineb4 = olineb3
 olinea3 = olinea2
 olineb3 = olineb2
 olinea2 = olinea
 olineb2 = olineb
 olinea = LINEA
 olineb = LINEB
 LINEA = LINEC
 LINEB = LINED
rt:
RANDOMIZE TIMER
LINEC = INT(RND * 640)
LINED = INT(RND * 480)
IF ABS(LINED - LINEB) > 225 THEN GOTO rt
IF ABS(LINEA - LINEC) > 225 THEN GOTO rt
IF ABS(LINED - LINEB) < 25 THEN GOTO rt
IF ABS(LINEA - LINEC) < 25 THEN GOTO rt


COLOR 0: LINE (olinea22, olineb22)-(olinea21, olineb21)
COLOR COl
LINE (LINEA, LINEB)-(LINEC, LINED)
 t = TIMER
DO
'MENU$ = INKEY$
'IF MENU$ = CHR$(0) + "H" THEN ad = ad * 10
'IF MENU$ = CHR$(0) + "P" AND ad > 1 THEN ad = ad / 10
'IF MENU$ = "=" THEN da = da + ad
'IF MENU$ = "-" AND da >= ad THEN LET da = da - ad

 t2 = TIMER
IF t2 - t >= da THEN EXIT DO
LOOP
GOTO continue

