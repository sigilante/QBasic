SCREEN 12
WIDTH 80, 60
COLR = 0
    FOR i% = 1 TO 30000
        COLR = COLR + 1
        IF COLR > 15 THEN COLR = 0
        COLOR COLR
        PRINT "COLOR #"; COLR; " ù"; CHR$(127),
         
        NEXT i%
   

