1 CLS: COLOR 14

INPUT "Enter any positive integer to count RNG reoccurrence of numbers 0-9"; digits 'user input

IF digits < 0 THEN GOTO 1 'invalid input

PRINT

LET min = 1
LET max = 10

'randomizer
FOR counter = min TO digits

    RANDOMIZE TIMER / 3
    value = INT(RND * max)

    'counter of random digits
    IF value = 0 THEN zero = zero + 1
    IF value = 1 THEN one = one + 1
    IF value = 2 THEN two = two + 1
    IF value = 3 THEN three = three + 1
    IF value = 4 THEN four = four + 1
    IF value = 5 THEN five = five + 1
    IF value = 6 THEN six = six + 1
    IF value = 7 THEN seven = seven + 1
    IF value = 8 THEN eight = eight + 1
    IF value = 9 THEN nine = nine + 1

NEXT counter

COLOR 12

'printing results of counter to user
PRINT "Number of zeros generated: "; zero
PRINT "Number of ones generated: "; one
PRINT "Number of twos generated: "; two
PRINT "Number of threes generated: "; three
PRINT "Number of fours generated: "; four
PRINT "Number of fives generated: "; five
PRINT "Number of sixs generated: "; six
PRINT "Number of sevens generated: "; seven
PRINT "Number of eights generated: "; eight
PRINT "Number of nines generated: "; nine
