DECLARE SUB L1R6 ()
DECLARE SUB PassWords ()
REM***MAZELAND II: RETURN OF MAZE
RANDOMIZE TIMER
SCREEN 12: WIDTH 80, 60
COLOR 1
LOCATE 5, 2: PRINT " €‹ ‹€ ‹ﬂﬂﬂ‹ €ﬂﬂﬂ€ €ﬂﬂ€  €     ‹ﬂﬂﬂ‹ €‹  € €ﬂﬂﬂ‹       ﬂ€ﬂ€ﬂ"
COLOR 9
LOCATE 6, 2: PRINT " € ﬂ € €ﬂﬂﬂ€  ‹€ﬂ  €ﬂ    €     €ﬂﬂﬂ€ € ﬂ‹€ €   €        € €  ﬂ   "
COLOR 3
LOCATE 7, 2: PRINT " €   € €   € €‹‹‹€ €‹‹‹€ €‹‹‹€ €   € €   € €‹‹‹ﬂ       ‹€‹€‹ ﬂ"
COLOR 11
LOCATE 9, 2: PRINT " €ﬂﬂﬂ‹ €ﬂﬂ€  €ﬂ€ﬂ€ €   € €ﬂﬂﬂ‹ €‹  €       ‹ﬂﬂﬂ‹ €ﬂﬂﬂ€"
COLOR 15
LOCATE 10, 2: PRINT " €ﬂ€ﬂ  €ﬂ      €   €   € €ﬂ€ﬂ  € ﬂ‹€       €   € €ﬂ"
COLOR 11
LOCATE 11, 2: PRINT " €  ﬂ‹ €‹‹‹€   €   ﬂ‹‹‹ﬂ €  ﬂ‹ €   €       ﬂ‹‹‹ﬂ €"
COLOR 3
LOCATE 13, 2: PRINT "             €‹ ‹€ ‹ﬂﬂﬂ‹ €ﬂﬂﬂ€ €ﬂﬂ€ "
COLOR 9
LOCATE 14, 2: PRINT "             € ﬂ € €ﬂﬂﬂ€  ‹€ﬂ  €ﬂ  "
COLOR 1
LOCATE 15, 2: PRINT "             €   € €   € €‹‹‹€ €‹‹‹€"
COLOR 8
LOCATE 16, 2: PRINT STRING$(76, 196)
LOCATE 22, 1
PRINT "              ⁄ø ⁄ø ⁄ø                          ⁄ø ⁄ø ⁄ø"
PRINT "              ≥¿ƒŸ¿ƒŸ≥                          ≥¿ƒŸ¿ƒŸ≥"
PRINT "              \      /                          \      /"
PRINT "               ≥    ≥                            ≥    ≥"
PRINT "               ≥    ≥                            ≥    ≥"
PRINT "              ⁄Ÿ    ¿ø ⁄ø  ⁄ø  ⁄ø  ⁄ø  ⁄ø  ⁄ø ⁄ø⁄Ÿ    ¿ø"
PRINT "              ≥      ¿ƒŸ¿ƒƒŸ¿ƒƒŸ¿ƒƒŸ¿ƒƒŸ¿ƒƒŸ¿ƒŸ¿Ÿ      ≥"
PRINT "              ≥                                        ≥"
PRINT "              ≥                                        ≥"
PRINT "              ≥                                        ≥"
PRINT "              ≥                                        ≥"
PRINT "              ≥                                        ≥"
COLOR 14
LOCATE 25, 19
PRINT "€"
LOCATE 25, 53
PRINT "€"
COLOR 6
LOCATE 30, 29
PRINT "  €ﬂ€ﬂ€ﬂ€ﬂ€"
LOCATE 31, 29
PRINT "  € € € € €"
LOCATE 32, 29
PRINT "  € € € € €"
LOCATE 33, 29
PRINT "  € € € € €"
COLOR 11
LOCATE 36, 25
PRINT "PRESS P FOR PASSWORDS"
LOCATE 38, 25
PRINT "PRESS ANY OTHER KEY TO"
LOCATE 40, 25
PRINT "   START NEW GAME"
A$ = INPUT$(1)
IF A$ = "P" THEN PassWords ELSE RUN "A:\L1R1.BAS"

SUB PassWords
CLS
FOR C = 0 TO 639
LINE (C, 0)-(C, 479), RND * 15, B, &H436F
NEXT C
COLOR RND * 15: LOCATE 10, 20: PRINT " PLEASE ENTER PASSWORD: "
A$ = INPUT$(7)
IF A$ = "WOW-EEU" THEN RUN "A:\L2R1.BAS"
IF A$ = "RIM-EDG" THEN RUN "A:\L3R1.BAS"
IF A$ = "OWQ-SOS" THEN RUN "A:\L4R1.BAS"
IF A$ = "SEC-RET" THEN RUN "A:\L5R1.BAS"
IF A$ = "PIT-FAL" THEN RUN "A:\L6R1.BAS"

END SUB

