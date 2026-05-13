CLS
DIM number(15)
PRINT "Unsorted Numbers:"
FOR ctr = 1 TO 14
READ number(ctr)
PRINT number(ctr);
NEXT ctr

DATA 14, 23, 83, 24, 999, 46, 12, 48, 39, 67
DATA 66, 66, 2, 31

FOR ctr1 = 0 TO 14
 FOR ctr2 = ctr1 + 1 TO 14
  IF number(ctr1) > number(ctr2) THEN SWAP number(ctr1), number(ctr2)
 NEXT ctr2
NEXT ctr1

PRINT
LINE INPUT "PRESS ENTER TO SEE THE SORTED NUMBERS:"; ans$
FOR ctr = 0 TO 14
 PRINT number(ctr);
NEXT ctr

