DECLARE SUB LearnCodes ()
DECLARE SUB TypeCode ()
COLOR 24, 3: CLS
PRINT : PRINT
PRINT TAB(33); "CODEMASTER"
COLOR 11, 3
PRINT TAB(32); "GAME WRIGHT"
PRINT TAB(30); "PLAINVIEW, TEXAS"
PRINT : PRINT : PRINT : PRINT : PRINT
PRINT "PLEASE ENTER CALLSIGN(SPACEBAR = SPACE, ~ = THROUGH)"
PRINT TAB(10);
COLOR 4, 3
OPEN "C:\DOS\CODENAME.DAT" FOR OUTPUT AS #1
FOR NM = 1 TO 90
A$ = INPUT$(1)
IF A$ = "~" THEN GOTO 56
PRINT #1, A$;
PRINT "*";
NEXT
56 CLOSE
COLOR 11, 3: CLS
Menu:
PRINT "DO YOU WISH TO LEARN CODES(1) OR WRITE MESSAGE IN CODE(2) OR QUIT(3)"
A$ = INPUT$(1)
IF A$ <> "1" AND A$ <> "2" AND A$ <> "3" THEN
   PRINT "INVALID INPUT"
   GOTO Menu
ELSEIF A$ = "1" THEN
   LearnCodes
   GOTO Menu
ELSEIF A$ = "2" THEN
   TypeCode
   GOTO Menu
ELSEIF A$ = "3" THEN
   PRINT "GOOD BYE!"
   END
END IF

SUB LearnCodes
Menu2:
 COLOR 12, 1: CLS
 PRINT "DO WANT TO:"
 PRINT " 1) LEARN TELEPHONE CODE"
 PRINT " 2) LEARN BACKWARDS CODE"
 PRINT " 3) LEARN ROTATE CODE"
 PRINT " Q) QUIT TO MAIN MENU"
A$ = INPUT$(1)
IF A$ <> "1" AND A$ <> "2" AND A$ <> "3" AND A$ <> "Q" THEN
   PRINT "INVALID INPUT"
   GOTO Menu2
ELSEIF A$ = "1" THEN
   GOTO T
ELSEIF A$ = "2" THEN
   GOTO B
ELSEIF A$ = "3" THEN
   GOTO R
ELSEIF A$ = "Q" THEN GOTO EndIt
END IF
T:
 COLOR 15, 7: CLS
 PRINT "зддд©зддд©зддд©               KEY:"
 PRINT "Ё   ЁЁABCЁЁDEFЁ              зддд©"
 PRINT "Ё 1 ЁЁ 2 ЁЁ 3 Ё              ЁDEFЁ"
 PRINT "юдддыюдддыюддды              Ё 3 Ё"
 PRINT "зддд©зддд©зддд©              юддды"
 PRINT "ЁGHIЁЁJKLЁЁMNOЁ              D = 3 "
 PRINT "Ё 4 ЁЁ 5 ЁЁ 6 Ё              E = 3."
 PRINT "юдддыюдддыюддды              F = 3/"
 PRINT "зддд©зддд©зддд©        THE FIRST LETTER IS JUST THE NUMBER."
 PRINT "ЁPRSЁЁTUVЁЁWXYЁ       THE SECOND LETTER IS NUMBER PLUS A DOT."
 PRINT "Ё 7 ЁЁ 8 ЁЁ 9 Ё       THE THIRD LETTER IS NUMBER PLUS A SLASH."
 PRINT "юдддыюдддыюддды       ALSO: Q = 1 & Z = 0     "
 PRINT "зддд©зддд©зддд©       THEREFORE, 18.27.80 EQUALS 'QUARTZ'."
 PRINT "Ё   ЁЁ   ЁЁ   Ё"
 PRINT "Ё * ЁЁ 0 ЁЁ # Ё                GET IT?"
 PRINT "юдддыюдддыюддды"
A$ = INPUT$(1)
CLS
GOTO Menu2
B:
 COLOR 13, 5: CLS
 PRINT "BACKWARDS CODE IS EASY. ALL YOU DO IS TURN THE WORDS BACKWARDS, LIKE:"
 PRINT
 PRINT "                   ?HCTAC YALP OT TNAW UOY OD"
 PRINT "                            ╝ OR ╞"
 PRINT "                   DO YOU WANT TO PLAY CATCH?"
 PRINT "                            GOT IT?"
A$ = INPUT$(1)
GOTO Menu2:
R:
 COLOR 10, 4
 PRINT "TO USE ROTATE CODE, ROTATE THE ALPHABET ONE LETTER TO THE RIGHT."
 PRINT "IN THIS CODE, UFSSJGJD IS TERRIFIC!(Z = A IN CODED MESSAGES)"
 PRINT "DECODE 'IFMMP, FWFSZCPEZ!'"
 A$ = INPUT$(1)
GOTO Menu2:
EndIt:
END SUB

SUB TypeCode
PRINT "PRESS ENTER WHEN THROUGH."
INPUT "TYPE CODE HERE(DO NOT PRESS ENTER TO SCROLL TO NEXT LINE. USE SPACEBAR):"; Q$
LINE INPUT "DO YOU WISH TO PRINT?(MAKE SURE PRINTER IS ON AND READY!)"; C$
IF UCASE$(LEFT$(C$, 1)) = "Y" THEN LPRINT Q$
END SUB

