SCREEN 12
RANDOMIZE TIMER
FOR STARS = 1 TO 50: PSET (639 * RND, 479 * RND), 15: PSET (639 * RND, 479 * RND), 7: NEXT STARS
LOCATE 10, 25: PRINT "Music handled by Neal Davis"
LOCATE 12, 25: PRINT "Starring:"
LOCATE 14, 26: PRINT "Neal Davis...................Chromex"
LOCATE 16, 26: PRINT "Mark Davis................Terminator"
LOCATE 18, 26: PRINT "Eric Davis.................Destructo"
LOCATE 20, 26: PRINT "Ryan Davis...................Blaster"
A$ = INPUT$(1)
CLS
LOCATE 14, 25: PRINT "ùPresented by ";
COLOR 13
PRINT "DavisBattleVisionù"
A$ = INPUT$(1)
FOR T = 1 TO 639 STEP 2
LINE (T, 0)-(T, 479), 0
NEXT T
FOR U = 479 TO 1 STEP -2
LINE (0, U)-(639, U), 0
NEXT U
A$ = INPUT$(1)
CLS

