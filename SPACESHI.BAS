50 REM***MARTIAN SPACESHIP
60 DIM A$
70 DIM NM$
80 DIM F$
COLOR 26
90 PRINT "REGISTER YOUR NAME"; : INPUT NM$
100 PRINT "GREETINGS,"; NM$; "."
120 PRINT "WELCOME TO MARTIAN COLONY ALPHA 9."
130 PRINT "THERE HAS BEEN AN ALIEN TAKEOVER"
140 PRINT "HERE. YOU MUST STOP THE ALIENS,"; NM$; "."
150 PRINT
160 PRINT "DO YOU WANT INSTRUCTIONS?(Y OR N)"; : INPUT F$
170 IF F$ = "Y" THEN GOSUB 360
180 PRINT "YOU MUST CHOOSE WHICH GENERAL YOU"
190 PRINT "WANT TO GO WITH. BUT BE CAREFUL."
200 PRINT "ONE OF THE GENERALS IS AN ALIEN IN"
210 PRINT "DISGUISE. DON'T CHOOSE HIM OR ELSE..."
220 PRINT
230 PRINT "DO YOU WANT GENERAL GER OR SHAA"; : INPUT A$
243 A = INT(RND(1) * 3)
245 B = INT(RND(2) * 2.9999)
240 IF A = B THEN 400 ELSE 250
250 PRINT "YOU CHOSE THE RIGHT ONE!"
260 PRINT
270 PRINT "YOU GO TO YOUR SPACESHIP, THE"
280 PRINT "U.S.S. RAMBLER. YOU TAKE OFF."
290 FOR T = 1 TO 50000: NEXT T
300 PRINT "YOU SEE ENEMY SHIPS ON THE RADAR."
310 PRINT "BEGIN FIRING."
320 PRINT "GOOD SHOOTING!"
330 FOR T = 1 TO 50000: NEXT T
340 PRINT "GREAT! THE ENEMY IS UNDER CONTROL!"
350 GOTO 450
360 PRINT "IN THIS GAME, YOU MUST DESTROY THE "
370 PRINT "ENEMY SHIPS. IT IS A GAME OF "
380 PRINT "CHANCE............................"
390 RETURN
400 PRINT "YOU WALK WITH GENERAL "; A$; " TO THE"
410 PRINT "SPACESHIP. SUDDENLY, HE WHIPS OUT A"
420 PRINT "GUN AND A GREEN LASER EXPLODES IN YOUR"
430 PRINT "FACE AS HE YELLS LOUDLY. THE END"
440 END
450 FOR T = 1 TO 50000: NEXT T
470 PRINT "                            I"
480 PRINT "                            I"
490 PRINT "                           I I"
500 PRINT "                          I   I"
510 PRINT "                         I     I"
520 PRINT "                         I-----I"
530 PRINT "     GO, ROCKET MAN!!!   I     I"
540 PRINT "                         I     I"
550 PRINT "                         I     I"
560 PRINT "                         I     I"
570 PRINT "                        /I     I\"
580 PRINT "                      /  I     I  \"
590 PRINT "                    /____I     I____\"
600 PRINT "                          \___/"
610 PRINT "                           | |"
620 PRINT "                           | |"
630 PRINT "                          /   \"
640 PRINT "                        /_______\"
PRINT "                         *******"
PRINT "                         * * * *"
PRINT "                         *  *  *"
PRINT "                          *   *"
END

