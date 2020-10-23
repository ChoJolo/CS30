' generate x random numbers from 1-1000 wherein the user defines the amount of numbers generated (x)
' store them in an array
' find the average of all the numbers generated
' display the results
' you will need: for-next, dim, math, print, let
' Name: Anthony Edwards
' Date: 10/01/20

1 CLS: CLEAR
SCREEN 12: COLOR 15
DEFINT C 'count

'query user int value(1-1000)
DO: INPUT "how many numbers to generate? ", count

LOOP UNTIL count > 0: CLS 'check for valid user input

RANDOMIZE TIMER / 3

min = 1
max = 1000

DIM rng(count) 'random numbers

'generate random numbers
FOR generate = min TO max

    rng(count) = INT(RND * max)

    PRINT generate; ":"; rng(count) 'display generated num(s)

    avg = rng(count) + avg 'add up all num(s)

NEXT generate

avg = avg / count 'dividing to find average

PRINT 'display number average
COLOR 4: PRINT "Average: "; avg

PRINT 'query user intruction
COLOR 7: INPUT "Again: 1 | Exit: 2"; repeat

IF repeat = 1 THEN GOTO 1 ELSE END
