X = 75
Y = 75
PWRU = 1
SCREEN 12
L1R1:
CLS
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D450 R150 BR150 R150 U150 BU150 U150 L450"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause1
 END SELECT
IF (X > 375) AND (Y = 225) THEN GOTO L1R2
IF X = 225 AND Y > 375 THEN GOTO L1R4
IF (X > 375) THEN X = 375
IF (Y > 375) THEN Y = 375
IF (X < 75) THEN X = 75
IF (Y < 75) THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause1:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R2:
CLS
X = 75: Y = 225
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D150 BD150 D150 R450 U150 BU150 U150 L450"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause2
 END SELECT
IF X < 75 AND Y = 225 THEN GOTO L1R1
IF X > 375 AND Y = 225 THEN GOTO L1R3
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause2:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R3:
CLS
X = 75: Y = 225
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D150 BD150 D150 R150 BR150 R150 U450 L450"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause3
 END SELECT
IF X = 225 AND Y > 375 THEN GOTO L1R6
IF X < 75 AND Y = 225 THEN GOTO L1R2
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause3:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R4:
CLS
X = 225: Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D450 R150 BR150 R150 U150 BU150 U150 L150 BL150 L150"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause4
 END SELECT
IF Y < 75 AND X = 225 THEN X = 225: Y = 375: GOTO L1R1
IF X > 375 AND Y = 225 THEN X = 75: Y = 225: GOTO L1R5
IF X = 225 AND Y > 375 THEN X = 225: Y = 75: GOTO L1R9
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause4:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R5:
CLS
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D150 BD150 D150 R450 U450 L450"
DRAW "BM 0,0 C10 D150 BD150 D150 R300 U150 R150 D50 L150 D50 R150"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause5
 END SELECT
IF X < 75 AND Y = 225 THEN GOTO L1R1
IF X = 375 AND Y = 375 THEN GOTO L1R12
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause5:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R6:
CLS
X = 225: Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D450 R150 BR150 R150 U150 BU150 U150 L150 BL150 L150"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause6
 END SELECT
IF Y < 75 AND X = 225 THEN X = 225: Y = 375: GOTO L1R3
IF Y > 375 AND X = 225 THEN X = 225: Y = 75: GOTO L1R11
IF Y = 225 AND X > 375 THEN X = 75: Y = 225: GOTO L1R7
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause6:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R7:
CLS
X = 225: Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D150 BD150 D150 R450 U150 BU150 U150 L450"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause7
 END SELECT
IF X < 75 AND Y = 225 THEN GOTO L1R6
IF X > 375 AND Y = 225 THEN GOTO L1R8
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause7:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R8:
CLS
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D150 BD150 D150 R150 BR150 R150 U450 L450"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause8
 END SELECT
IF X < 75 AND Y = 225 THEN GOTO L1R7
IF Y > 375 AND X = 225 THEN GOTO L1R13
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause8:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 3) + 10
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R9:
CLS
X = 225: Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
DO
DRAW "BM 0,0 C10 D450 R450 U450 L150 BL150 L150"
A$ = INPUT$(1)
CIRCLE (X, Y), 74, 0
PAINT (X, Y), 0
CIRCLE (X - 20, Y - 20), 2, 0
PAINT (X - 20, Y - 20), 0
CIRCLE (X + 20, Y - 20), 2, 0
PAINT (X + 20, Y - 20), 0
CIRCLE (X - 20, Y - 30), 10, 0
CIRCLE (X + 20, Y - 10), 10, 0
CIRCLE (X, Y + 20), 50, 0, , , .3
PAINT (X, Y + 20), 0
SELECT CASE UCASE$(A$)
  CASE "D": X = X + 150
  CASE "A": X = X - 150
  CASE "W": Y = Y - 150
  CASE "S": Y = Y + 150
  CASE "P": GOSUB Pause9
 END SELECT
IF Y < 75 AND X = 225 THEN GOTO L1R7
IF X = 375 AND Y = 375 THEN PWRU = 2
IF X > 375 THEN X = 375
IF Y > 375 THEN Y = 375
IF X < 75 THEN X = 75
IF Y < 75 THEN Y = 75
CIRCLE (X, Y), 74, 12
PAINT (X, Y), 12
CIRCLE (X - 20, Y - 20), 20, 15
PAINT (X - 20, Y - 20), 15
CIRCLE (X + 20, Y - 20), 20, 15
PAINT (X + 20, Y - 20), 15
CIRCLE (X - 20, Y - 30), 10, 9
PAINT (X - 20, Y - 30), 9
CIRCLE (X + 20, Y - 10), 10, 4
PAINT (X + 20, Y - 10), 4
CIRCLE (X, Y + 20), 50, 15, , , .3
PAINT (X, Y + 20), 15
LOOP
Pause9:
CLS
R = 0
DO
R = R + 1
CIRCLE (639 * RND, 479 * RND), RND * 150, (RND * 4) + 11
IF R = 1500 THEN CLS : R = 0
LOOP UNTIL (INKEY$ <> "")
CLS
RETURN
L1R10:
L1R11:
L1R12:
L1R13:

