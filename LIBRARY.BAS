DECLARE SUB Center (row%, text$)

DEFINT A-Z
SUB Center (row, text$)
'Center:
'  Centers text on given row
    LOCATE row, 41 - LEN(text$) / 2
    PRINT text$;

END SUB

SUB DrawScreen
'DrawScreen:
'  Draws playing field


    'initialize screen
    VIEW PRINT
    COLOR colorTable(1), colorTable(4)
    CLS

    'Print title & message
    Center 1, "Nibbles!"
    Center 11, "Initializing Playing Field..."
   
    'Initialize arena array
    FOR row = 1 TO 50
        FOR col = 1 TO 80
            arena(row, col).realRow = INT((row + 1) / 2)
            arena(row, col).sister = (row MOD 2) * 2 - 1
        NEXT col
    NEXT row

END SUB

