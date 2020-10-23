' ask user for their name, then their subject, and mark (in any subject)
' loop this 5 times and store the information in 1 VARIABLE! and 2 arrays.
' display the information back on the screen along with their overall average for those 5 classes
' Name: Anthony Edwards
' 9/30/20

1 CLS
CLEAR
SCREEN 12
DEFINT M 'mark

CONST count = 5 'repeat (x) times

DO

    'storing data in arrays (class & mark)
    DIM class$(count)
    DIM mark(count)

    PRINT

    'query name and requires 1 character to pass input
    DO: INPUT "What is your name? ", student$: LOOP UNTIL student$ <> "" AND student$ <> " "

    PRINT

    FOR x = 1 TO count 'query subject data
        10
        CLS
        LOCATE 10, 5: PRINT "Subject #"; x
        LOCATE 11, 5: INPUT "What is your class?"; class$(x)
        IF class$(x) = "" OR class$(x) = " " THEN GOTO 10 'check for valid input
        LOCATE 12, 5: INPUT "What is your mark? "; mark(x)
        IF mark(x) < 0 THEN GOTO 10
    NEXT x

    CLS
    PRINT "Name: "; student$ 'display student name
    COLOR 12
    PRINT

    FOR y = 1 TO count 'display subject data
        PRINT "Subject #"; y
        PRINT
        PRINT "Class: "; class$(y)
        PRINT "Mark: "; mark(y)
        PRINT
    NEXT y

    COLOR 4 'calculating mark average
    FOR x = 1 TO count
        gpa = mark(count) + gpa
    NEXT x

    gpa = gpa / count

    PRINT "Overall Average: "; gpa 'display mark average

LOOP UNTIL count

COLOR 7
PRINT 'query user intruction
INPUT "Again: 1 | Exit: 2"; repeat

IF repeat = 1 THEN GOTO 1
IF repeat = 2 THEN END
