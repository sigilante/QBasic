DECLARE SUB PassWords ()
SCREEN 12: WIDTH 80, 60
RANDOMIZE TIMER
COLOR 10
PRINT "лллл    л   ллллл ллллл л     лллл"
PRINT "л   л  л л    л     л   л     л"
PRINT "лллл  ллллл   л     л   л     ллл"
PRINT "л   л л   л   л     л   л     л"
PRINT "лллл  л   л   л     л   ллллл ллллл"
PRINT ""
COLOR 2
PRINT "лллл  л   л лллл  л      ллл  лллл  лллл  лллл"
PRINT "л      л л  л   л л     л   л л   л л     л   л"
PRINT "ллл     л   лллл  л     л   л лллл  ллл   лллл"
PRINT "л      л л  л     л     л   л л  л  л     л  л"
PRINT "ллллл л   л л     ллллл  ллл  л   л ллллл л   л"
PRINT ""
'BATTLE EXPLORER IS MADE BY NEAL DAVIS, C.E.O. AND MAIN PROGRAMMER OF
'GAME WRIGHT. YOU ARE ONLY ALLOWED TO MAKE ONE COPY OF THIS GAME FOR
'BACKUP PURPOSES. THE GAME'S REQUIREMENTS ARE IN THE FILE:
'                     "C:\BATTLE\README.TXT"
'TO START, PRESS Shift + F5
'TO LEAVE, PRESS Alt, F, X
'THANK YOU FOR BUYING FROM GAME WRIGHT.
COLOR 4
PRINT
PRINT
PRINT
PRINT "    мллм"
PRINT "    пллп"
COLOR 10
PRINT "         мллмм                    ппплппп"
PRINT "         пллллллмм                ллллллл"
PRINT "            ппллллллмм         млллллллллллм"
PRINT "                ппллллллмм   млллллллллллллллм"
PRINT "                    пплллллллллллллллллллллллллм "
PRINT "                        ппплллллллллллллллллллллл   "
PRINT "                         мллллллллллллллллллллллл     "
PRINT "       мммммммммлллллллллллллллллллллллллллллллллл                   "
PRINT "ммммллллллллллллллллллллллллллллллллллллллллллллллл       "
COLOR 6
PRINT " м л л л л л л л л л л л л л л л л л л л л л л л л л м           "
PRINT "  плллллллллллллллллллллллллллллллллллллллллллллллллп "
PRINT "ппплллллллллллллллллллллллллллллллллллллллллллллллллппп   "
PRINT " мпл л л л л л л л л л л л л л л л л л л л л л л л лпм  "
PRINT
COLOR 11
PRINT
PRINT "PRESS SPACE BAR FOR PASSWORDS OR ANY OTHER KEY TO START NEW GAME"
A$ = INPUT$(1)
IF A$ = " " THEN PassWords

SUB DrawScreenA1

END SUB

SUB PassWords
FOR T = 1 TO 639 STEP 2
LINE (T, 0)-(T, 479), 0
NEXT T
FOR U = 479 TO 1 STEP -2
LINE (0, U)-(639, U), 0
LOCATE 10, 10: COLOR RND * 15
NEXT U
PRINT "PLEASE ENTER PASSWORD"
END SUB

