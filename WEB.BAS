    SCREEN 1
    FOR i% = 1 TO 10 STEP 2
        WINDOW (-160 / i%, -100 / i%)-(160 / i%, 100 / i%)
        CIRCLE (10, -10), 10
        CIRCLE (-10, 10), 10
        CIRCLE (-10, -10), 10
        CIRCLE (10, 10), 10
    NEXT i%

