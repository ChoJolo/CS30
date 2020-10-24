'conditional challenge
'check to see if user input is even or odd
'x/2 returns even after MOD ?

SCREEN 12
DEFINT A-Z

PRINT "Enter a number to check if it is EVEN or ODD";
INPUT num

num = num MOD 2

IF num = 0 THEN PRINT "The number you entered is EVEN" ELSE PRINT "The number you entered is ODD"

END
