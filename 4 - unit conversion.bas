'Name: "unit conv1ersion"
'User: Anthony Edwards
'Class: CS30
'Date: 9/16/20

'initialize vars

mi = 0.62

m = 0.30

kg = 0.45

ml = 236.58

'main calculation on loop
DO

    PRINT "> 1: km to mi | 2: ft to m | 3: lbs to kg | 4: cups to ml | 5: Exit"
    PRINT
    INPUT convert

    IF convert = 1 THEN

        CLS
        PRINT "enter a value in kilometers"
        INPUT km
        valueKm = km * mi
        CLS
        PRINT
        PRINT km; "km is equal to"; valueKm; "mi"
        PRINT

    END IF

    IF convert = 2 THEN

        CLS
        PRINT "enter a value in feet"
        INPUT ft
        valueFt = ft * m
        CLS
        PRINT
        PRINT ft; "ft is equal to"; valueFt; "m"
        PRINT

    END IF

    IF convert = 3 THEN

        CLS
        PRINT "enter a value in pounds"
        INPUT lbs
        valueLbs = lbs * kg
        CLS
        PRINT
        PRINT lbs; "lbs is equal to"; valueLbs; "kg"
        PRINT

    END IF

    IF convert = 4 THEN

        CLS
        PRINT "enter a value in cups"
        INPUT cup
        valueCup = cup * ml
        CLS
        PRINT
        PRINT cup; "cups is equal to"; valueCup; "mL"
        PRINT

    END IF

    'option to exit
    IF convert = 5 THEN
        END

    END IF

    'if incorrect user input
    IF convert > 5 THEN
        CLS
        PRINT "ERROR: ENTER A VALID NUMBER"

    END IF

    IF convert < 1 THEN
        CLS
        PRINT "ERROR: ENTER A VALID NUMBER"

    END IF

LOOP
