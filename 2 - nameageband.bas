' ask user for their name, age, and favorite band
' loop this 10 times and store the information in 3 arrays.
' display the information back on the screen
' start with this:
'9/29/20
1 CLS
CLEAR
SCREEN 12
DEFINT A
LET num = 10


DO
    'storing arrays
    DIM name$(num)
    DIM age(num)
    DIM band$(num)


    FOR x = 1 TO num

        'query user data
        10 INPUT "What is your name "; name$(x)
        20 INPUT "What is your age "; age(x)
        IF age(x) <= 0 GOTO 20
        30 INPUT "What is your favorite band "; band$(x)

        CLS

    NEXT x


    FOR results = 1 TO num

        PRINT 'printing arrays
        40 PRINT "Name: "; name$(results)
        50 PRINT "Age: "; age(results)
        60 PRINT "Band: "; band$(results)

    NEXT results

LOOP UNTIL num

PRINT 'query user instruction
INPUT "Again: 1 | Exit: 2"; repeat

IF repeat = 1 THEN GOTO 1
IF repeat = 2 THEN END
