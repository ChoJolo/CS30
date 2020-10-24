'Counter but better
'Date: 9/28/20
1 CLS
SCREEN 12
COLOR 14
DEFINT A-Z
INPUT "Enter amount of (+) integers to count RNG reoccurrence of numbers 0-9"; digits 'user input

IF digits < 0 THEN GOTO 1 'invalid input

PRINT


LET min = 0 '1
LET max = 9 '2
LET rng = 10 '3

DIM value(min TO max) '1,2

'randomizer RNG
FOR counter = 1 TO digits

    RANDOMIZE TIMER / 3
    num = (RND * rng) '3

    FOR x = min TO max '1,2

        IF num = x THEN value(x) = value(x) + 1

    NEXT x

NEXT counter

COLOR 12

'printing results of counter to user
FOR results = min TO max '1,2

    PRINT "Number of"; results; "'s counted: "; value(results)

NEXT results

PRINT

'query user intruction
INPUT "Again: 1 | Exit: 2"; repeat

IF repeat = 1 THEN GOTO 1
IF repeat = 2 THEN END
