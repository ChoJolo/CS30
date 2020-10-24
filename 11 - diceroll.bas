'Name: "tips"
'User: Anthony Edwards
'Class: CS30
'Date: 9/16/20
'Name: "diceroll"

COLOR 12
PRINT
PRINT " Roll? 1:Yes | 2:No"; ' prompt user

INPUT roll
DO
    COLOR 12
    'option 1: roll
    IF roll = 1 THEN
        CLS
        PRINT
        PRINT " The die has been cast!"
        PRINT
        PRINT " results:"
        PRINT
    END IF

    ' option 2: exit
    IF roll = 2 THEN
        END
    END IF

    'dice #1
    RANDOMIZE TIMER / 3
    LET d1 = INT(RND * 6) + 1
    COLOR 3
    PRINT " D1 ="; d1

    'dice #2
    RANDOMIZE TIMER / 2
    LET d2 = INT(RND * 6) + 1
    COLOR 3
    PRINT " D2 ="; d2


    PRINT
    COLOR 5
    LET sum = d1 + d2
    PRINT " Sum ="; sum

    'user choice to repeat
    PRINT
    COLOR 7
    PRINT " Roll again? 1:Yes | 2:No";
    INPUT repeat

    IF repeat = 1 THEN
        CLS
        LOCATE 1, 1
    END IF

    IF repeat = 2 THEN
        END
    END IF

LOOP
