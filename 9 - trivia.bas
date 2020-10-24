'create a trivia program that asks the user 5-10 questions
'the program should tell the user if they got the answers correct or not
'keep track of score and display the score at all times
'ask the user if they want to play again or quit
'user should not be able to break the program

1 CLS: CLEAR
SCREEN 12: COLOR 15
ON ERROR GOTO 1

DIM gameType$ 'game selection

gameType$(1) = "Game #1"

DIM question((gameType(1))) AS STRING 'Game #1 - 8 Questions

question(1) = "What is __"
question(2) = "What is __"
question(3) = "What is __"
question(4) = "What is __"
question(5) = "What is __"
question(6) = "What is __"
question(7) = "What is __"
question(8) = "What is __"

DIM answer((gameType(1))) 'Game #1 - 8 correct answers

answer(1) = 1: answer(5) = 1
answer(2) = 2: answer(6) = 2
answer(3) = 3: answer(7) = 3
answer(4) = 4: answer(8) = 4

DIM mChoice((gameType(1))) 'Game #1 - 32 multiple choice

mChoice$(1) = "a"
mChoice$(2) = "b"
mChoice$(3) = "c"
mChoice$(4) = "d"

min = 1: max = 8 '# of questions

LINE (100, 100)-(500, 400), 10, B

'game introduction
LOCATE 10, 20: PRINT "Welcome to trivia game about"; gameType$(1) 'SET GAME HERE
LOCATE 11, 20: INPUT "What is your name?"; name$
LOCATE 12, 20: PRINT "Hi,"; name$; "!"
LOCATE 13, 20: PRINT " There will be"; max; " questions. Good luck!"
LOCATE 14, 20: PRINT "press any key to continue"
DO: LOOP UNTIL INKEY$ <> ""

score = 0

FOR x = min TO max

    CLS: LINE (100, 100)-(500, 400), 10, B
    LOCATE 2, 2: PRINT "Score: "; score 'update score

    LOCATE 10, 20
    PRINT "Question"; x
    LOCATE 11, 20
    PRINT question(x); "?"
    LOCATE 13, 20
    PRINT "1."; mChoice(1); "2."; mChoice(2);
    LOCATE 14, 20
    PRINT "3."; mChoice(3); "4."; mChoice(4);
    DO
        LOCATE 15, 20
        INPUT answer(x)
    LOOP UNTIL answer(x) < 5 AND answer(x) > 0

    IF answer(x) = answer THEN
        LOCATE 17, 20: PRINT "correct!"
        score = score + 1
    ELSE
        LOCATE 17, 20: PRINT "wrong!"
    END IF

    LOCATE 18, 20:
    PRINT "press any key to continue"
    DO: LOOP UNTIL INKEY$ <> ""

NEXT x

CLS: PRINT "your final score is"; score: END
