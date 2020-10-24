CLS: CLEAR
SCREEN 12

DIM SHARED masterscore

mainmenu
SUB mainmenu

    COLOR 10: LOCATE 1, 13: PRINT "Trivia: Select the game by entering the number (n)"

    min = 1
    max = 7

    FOR x = min TO max
        COLOR 15: LOCATE x + 3, 33: PRINT "game:"; x
    NEXT x

    INPUT "> ", game: CLS

    IF game = 1 THEN game1
    IF game = 2 THEN game2
    IF game = 3 THEN game3
    IF game = 4 THEN game4
    IF game = 5 THEN game5
    IF game = 6 THEN game6
    IF game = 7 THEN game7

END SUB

SUB game1
    SCREEN 12

    COLOR 12

    questions = 5

    LOCATE 2, 20: PRINT "welcome to engine cubic inches to litres trivia"
    LOCATE 4, 23: PRINT "there are"; questions; "questions in total"
    LOCATE 5, 18: PRINT "if score 0-2, go back to class, you're a car virgin."
    LOCATE 6, 18: PRINT "if score 2-4, you're learning, 5-5, you're a pro"

    COLOR 15: LOCATE 17, 28: PRINT "press any key to start": DO: LOOP UNTIL INKEY$ <> ""


    DO
        CLS

        COLOR 2
        PRINT "question 1:"

        PRINT "score"; score

        PRINT ""

        PRINT "How many Litres is 302 cubic inches"
        PRINT "1. 4.8L"
        PRINT "2. 5.7L"
        PRINT "3. 4.9L"
        PRINT "4. 5.0L"


        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 4 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong, the correct answer is 5.0L"
    END IF

    PRINT "Press any key to continue": DO: LOOP UNTIL INKEY$ <> ""



    DO
        CLS
        COLOR 3
        PRINT "Question 2:"


        PRINT "score"; score

        PRINT ""

        PRINT "How many Litres is 289 cubic inches"
        PRINT "1. 4.7L"
        PRINT "2. 4.8L"
        PRINT "3. 4.6L"
        PRINT "4. 5.0L"


        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 1 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong, the correct answer is 4.7L"
    END IF

    PRINT "Press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    DO
        CLS
        COLOR 4
        PRINT "Question 3:"
        PRINT "score"; score

        PRINT ""

        PRINT "How many Litres is 521 cubic inches"
        PRINT "1. 8.4L"
        PRINT "2. 7.5L"
        PRINT "3. 8.5L"
        PRINT "4. 7.4L"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 3 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong, the correct answer is 8.5L"
    END IF

    PRINT "Press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    DO
        CLS
        COLOR 5
        PRINT "Question 4:"
        PRINT "score"; score

        PRINT ""

        PRINT "How many Litres is 255 cubic inches"
        PRINT "1. 4.3L"
        PRINT "2. 4.2L"
        PRINT "3. 4.5L"
        PRINT "4. 3.9L"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 2 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong, the correct answer is 4.2L"
    END IF

    PRINT "Press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    DO
        CLS
        COLOR 6
        PRINT "Final Question:"
        PRINT "score"; score

        PRINT ""

        PRINT "How many Litres is 351 cubic inches"
        PRINT "1. 5.7L"
        PRINT "2. 5.8L"
        PRINT "3. 5.9L"
        PRINT "4. 5.0L"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 2 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong, the correct answer is 5.8L"
    END IF

    PRINT "Results loading"
    DO
        PRINT ".";
        _DELAY 0.5
        COLOR x
        x = x + 1
    LOOP UNTIL x = 10

    _KEYCLEAR: CLS

    grade = score / questions
    grade = grade * 100

    COLOR 4: LOCATE 4, 30: PRINT "score:"; score; "/"; questions; ""; grade; "%"
    COLOR 15

    IF score <= 2 THEN
        LOCATE 6, 24: PRINT "Now THAT - was atrocious"
        LOCATE 7, 22: PRINT "Lookup automobile in the dictionary or interweb"
    END IF

    IF score > 2 AND score <= 4 THEN
        LOCATE 8, 23: PRINT "Well you're no Henry Ford, but at least you passed"
    END IF

    IF score = 5 THEN
        LOCATE 9, 23: PRINT "Congrats, you know your shit!"
    END IF

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game1
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB

SUB game2 'SAM

    SCREEN 12
    1 'back to start if they want to play again
    score = 0

    LINE (95, 95)-(500, 400), 14, B 'Box of the questions

    LOCATE 10, 26: PRINT " WELCOME TO TRIVIA GAME!"

    DO
    LOOP UNTIL INKEY$ <> "" 'player need to press any key
    CLS

    LOCATE 2, 2: PRINT "SCORE: "; score 'score




    'QUESTION NUMBER ONE
    LOCATE 10, 26
    PRINT "NUMBER ONE!"

    LOCATE 11, 26

    PRINT "What is the 2nd planet ?" 'question for the player


    'answer choices
    LOCATE 13, 26
    PRINT "1. earth           2. mercury"

    LOCATE 14, 26
    PRINT "3. Venus           4. neptune"


    DO
        LOCATE 15, 26
        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0 'player can only put 4 to 1 number

    IF answer = 3 THEN 'correct answer
        LOCATE 17, 26: PRINT "correct!" 'if the answer is correct printing correct and located at 17,26
        score = score + 1 'score added 1 if the answer is correct
    ELSE
        PRINT "wrong!" 'if the answer is incorrect
    END IF

    LOCATE 18, 26:
    PRINT "press any key to continue" '
    DO: LOOP UNTIL INKEY$ <> ""
    CLS
    LOCATE 2, 2: PRINT "Score: "; score



    'QUESTION NUMBER TWO

    LOCATE 10, 26
    PRINT "NUMBER TWO"

    LOCATE 11, 26
    PRINT "What did moses made ?" 'question for the player


    'answer choices
    LOCATE 13, 26
    PRINT "1. airplane           2. car"

    LOCATE 14, 26
    PRINT "3. ark           4. none of the above"


    DO
        LOCATE 15, 26
        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0 'player can only put 4 to 1 number

    IF answer = 4 THEN 'correct answer
        LOCATE 17, 26: PRINT "correct!" 'if the answer is correct printing correct and located at 17,26
        score = score + 1 'score added 1 if the answer is correct
    ELSE
        PRINT "wrong!" 'if the answer is incorrectt
    END IF
    LOCATE 18, 26:
    PRINT "press any key to continue"
    DO: LOOP UNTIL INKEY$ <> ""

    CLS
    LOCATE 2, 2: PRINT "Score: "; score 'score track





    'QUESTION NUMBER THREE

    LOCATE 10, 26
    PRINT " NUMBER THREE"

    LOCATE 11, 26
    PRINT "It has wings but can't fly ?" 'question for the player


    'answer choices
    LOCATE 13, 26
    PRINT "1. duck           2. butterflies"

    LOCATE 14, 26
    PRINT "3. chicken           4. ostric"


    DO
        LOCATE 15, 26
        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0 'player can only put 4 to 1 number

    IF answer = 4 THEN 'correct answer
        LOCATE 17, 26: PRINT "correct!" 'if the answer is correct printing correct and located at 17,26
        score = score + 1 'score added 1 if the answer is correct
    ELSE
        PRINT "wrong!" 'if the answer is incorrect
    END IF

    LOCATE 18, 26:
    PRINT "press any key to continue"
    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    LOCATE 2, 2: PRINT "Score: "; score 'score track


    'QUESTION NUMBER FOUR

    LOCATE 10, 26
    PRINT " NUMBER FOUR"

    LOCATE 11, 26
    PRINT "What is the outdoor sports that does'nt need ball ?" 'question for the player
    'answer choices


    LOCATE 13, 26
    PRINT "1. basketball           2. diving "

    LOCATE 14, 26
    PRINT "3. tennis           4. soccer"


    DO
        LOCATE 15, 26
        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0 'player can only put 4 to 1 number

    IF answer = 2 THEN 'correct answer
        LOCATE 17, 26: PRINT "correct!" 'if the answer is correct printing correct and located at 17,26
        score = score + 1 'score added 1 if the answer is correct
    ELSE
        PRINT "wrong!" 'if the answer is incorrect
    END IF

    LOCATE 18, 26:
    PRINT "press any key to continue"
    DO: LOOP UNTIL INKEY$ <> ""
    CLS


    LOCATE 2, 2: PRINT "Score: "; score 'score track



    'QUESTION NUMBER FIVE

    LOCATE 10, 26
    PRINT " NUMBER FIVE"

    LOCATE 11, 26
    PRINT "What is the hottest planet ?" 'question for the player
    'answer choices
    LOCATE 13, 26


    PRINT "1. mars           2. mercury "

    LOCATE 14, 26
    PRINT "3. Venus           4. Earth"

    DO
        LOCATE 15, 26
        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0 'player can only put 4 to 1 number

    IF answer = 3 THEN 'correct answer
        LOCATE 17, 26: PRINT "correct!" 'if the answer is correct printing correct and located at 17,26
        score = score + 1 'score added 1 if the answer is correct
    ELSE
        PRINT "wrong!" 'if the answer is incorrect
    END IF

    CLS

    LOCATE 2, 26: PRINT " Your total score..."; score 'Final score
    LOCATE 6, 26: PRINT " Thanks for playing" ' if they enter 1 the game ends

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game2
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB

SUB game3 'jesse
    SCREEN 12: CLS

    'Score counter
    LOCATE 2, 4: PRINT "Score:", score

    'Question prompt
    LOCATE 10, 30: PRINT "what is 9+10?"

    'Answer list
    LOCATE 13, 35: PRINT "1. 21"
    LOCATE 14, 35: PRINT "2. 19"
    LOCATE 15, 35: PRINT "3. 18"
    LOCATE 16, 35: PRINT "4. 20"
    LOCATE 17, 35: PRINT "5. 70707"

    'Answer prompt
    LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer
    DO
        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 2 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF


    'Continue prompt
    PRINT "Press Any Key To Continue"

    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    'QUESTION #2
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 30: PRINT "what is the square root of pi"

        'Answer list
        LOCATE 13, 35: PRINT "1. 1.77245"
        LOCATE 14, 35: PRINT "2. 3.68745"
        LOCATE 15, 35: PRINT "3. 12.84196"
        LOCATE 16, 35: PRINT "4. 2.51861"
        LOCATE 17, 35: PRINT "5. 420"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 1 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF

    'Continue prompt
    PRINT "Press Any Key To Continue"

    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    'QUESTION #3
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 30: PRINT "what is the average temperature of the surface on venus?"

        'Answer list
        LOCATE 13, 35: PRINT "1. 57 F"
        LOCATE 14, 35: PRINT "2. -81 F"
        LOCATE 15, 35: PRINT "3. 5778 K"
        LOCATE 16, 35: PRINT "4. 698 K"
        LOCATE 17, 35: PRINT "5. 230 K"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 4 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF

    CLS

    'state final score
    LOCATE 2, 33: PRINT "FINAL SCORE"; score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 26: COLOR 15: INPUT "1: retry | 2: end | 3: main menu"; choice
    LOOP UNTIL choice = 1 OR 2 OR 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game3
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

    'QUESTION #4
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 30: PRINT "what is the average temperature of the surface of the sun?"

        'Answer list
        LOCATE 13, 35: PRINT "1. 77245 K"
        LOCATE 14, 35: PRINT "2. 8745 K"
        LOCATE 15, 35: PRINT "3. 420 K"
        LOCATE 16, 35: PRINT "4. 861 F"
        LOCATE 17, 35: PRINT "5. 5778 K"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 5 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF

    'Continue prompt
    PRINT "Press Any Key To Continue"

    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    'QUESTION #5
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 30: PRINT "Who said simplicity is the ultimate sophistication?"

        'Answer list
        LOCATE 13, 35: PRINT "1. Socrates"
        LOCATE 14, 35: PRINT "2. Leonardo Di Caprio"
        LOCATE 15, 35: PRINT "3. Leonardo Da Vinci"
        LOCATE 16, 35: PRINT "4. Lorenzo Valla"
        LOCATE 17, 35: PRINT "5. Nikola Tesla"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 3 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF

    'Continue prompt
    PRINT "Press Any Key To Continue"

    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    'QUESTION #6
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 25: PRINT "Who said just a little spoon of your precious love, satisy my soul?"

        'Answer list
        LOCATE 13, 35: PRINT "1. B.B King"
        LOCATE 14, 35: PRINT "2. Muddy Waters"
        LOCATE 15, 35: PRINT "3. Howlin' Wolf"
        LOCATE 16, 35: PRINT "4. Robert Johnson"
        LOCATE 17, 35: PRINT "5. Tay-K"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 3 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF

    'Continue prompt
    PRINT "Press Any Key To Continue"

    DO: LOOP UNTIL INKEY$ <> ""
    CLS

    'QUESTION #7
    DO

        'Score counter
        LOCATE 2, 4: PRINT "Score:", score

        'Question prompt
        LOCATE 10, 30: PRINT "Who said what is real will prosper?"

        'Answer list
        LOCATE 13, 35: PRINT "1. XXXTentacion"
        LOCATE 14, 35: PRINT "2. Ski Mask The Slump God"
        LOCATE 15, 35: PRINT "3. Kid Trunks"
        LOCATE 16, 35: PRINT "4. Craig Xen"
        LOCATE 17, 35: PRINT "5. Danny Towers"

        'Answer prompt
        LOCATE 19, 35: PRINT "Answer": LOCATE 19, 41: INPUT answer

        'Answer paramaters
        IF answer > 5 THEN CLS: IF answer < 0 THEN CLS
    LOOP UNTIL answer < 6 AND answer > 0

    'Incorrect/Correct statement
    IF answer = 1 THEN
        LOCATE 21, 35: PRINT "CORRECT": score = score + 1
    ELSE LOCATE 21, 35: PRINT "INCORRECT"
    END IF
    CLS

    'state final score
    LOCATE 2, 30: PRINT "FINAL SCORE", score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game3
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB

SUB game4
    SCREEN 12 'MAZAR
    10
    CLS

    score = 0

    'QUESTION NO 1

    LINE (20, 20)-(620, 460), 14, B

    LOCATE 10, 12: PRINT "WELCOME TO TRIVIA GAME ABOUT PAKISTAN"
    LOCATE 11, 12: INPUT "WHAT IS YOUR NAME?"; Name$
    LOCATE 12, 12: PRINT "HEY,"; Name$, "!"
    LOCATE 13, 12: PRINT "THERE WILL BE FIVE QUESTIONS IN THIS GAME REGARDING PAKISTAN"
    LOCATE 14, 12: PRINT "HAVE A GOOD LUCK,"; Name$
    LOCATE 15, 12: PRINT Name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        LINE (20, 20)-(620, 460), 14, B
        LOCATE 1, 1: PRINT "SCORE:"; score
        LOCATE 10, 12: PRINT "QUESTION ONE"
        LOCATE 11, 12: PRINT "WHAT IS NATIONAL LANGUAGE OF PAKISTAN?"
        LOCATE 12, 12: PRINT "1. HINDI        2. FARSI"
        LOCATE 13, 12: PRINT "3. URDU         4. ENGLISH"

        LOCATE 14, 12
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 12
    IF ANSWER = 3 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 12
    PRINT Name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""
    DO
        CLS

        'QUESTION NO 2

        LINE (20, 20)-(620, 460), 14, B
        LOCATE 1, 1: PRINT "SCORE:"; score
        LOCATE 10, 12: PRINT "QUESTION TWO"
        LOCATE 11, 12: PRINT "WHAT IS capital of pakistan"
        LOCATE 12, 12: PRINT "1. Karachi        2. Islamabad"
        LOCATE 13, 12: PRINT "3. Lohore        4.  Peshawer"

        LOCATE 14, 12
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 12
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 12
    PRINT Name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 3

        LINE (20, 20)-(620, 460), 14, B
        LOCATE 1, 1: PRINT "SCORE:"; score
        LOCATE 10, 12: PRINT "QUESTION THREE"
        LOCATE 11, 12: PRINT "WHAT IS NATIONAl SPORT OF PAKISTAN?"
        LOCATE 12, 12: PRINT "1. CRICKET        2. HOCKEY"
        LOCATE 13, 12: PRINT "3. BOXING         4. SOCCER"

        LOCATE 14, 12
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 12
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 12
    PRINT Name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 4

        LINE (20, 20)-(620, 460), 14, B
        LOCATE 1, 1: PRINT "SCORE:"; score
        LOCATE 10, 12: PRINT "QUESTION FOUR"
        LOCATE 11, 12: PRINT "WHAT IS NATIONAL ANIMAL OF PAKISTAN"
        LOCATE 12, 12: PRINT "1. COW      2. MARKHOR (Capra falconeri)"
        LOCATE 13, 12: PRINT "3. PEACOCK         4. LION"

        LOCATE 14, 12
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 12
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 12
    PRINT Name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 5

        LINE (20, 20)-(620, 460), 14, B
        LOCATE 1, 1: PRINT "SCORE:"; score
        LOCATE 10, 12: PRINT "QUESTION FIVE"
        LOCATE 11, 12: PRINT "WHAT IS MOST POPULATED CITY OF PAKISTAN?"
        LOCATE 12, 12: PRINT "1. ISLAMABAD        2. QUETTA"
        LOCATE 13, 12: PRINT "3. LOHORE         4. KARACHI"

        LOCATE 14, 12
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 12
    IF ANSWER = 4 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    CLS

    LINE (20, 20)-(620, 460), 14, B
    LOCATE 7, 33: PRINT "WELL DONE !"; Name$
    LOCATE 3, 29: PRINT "YOUR FINAL SCORE IS"; score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 5, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game4
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB
SUB game5 'OMID

    SCREEN 12
    10
    CLS

    score = 0

    LINE (100, 100)-(500, 400), 6, B

    LOCATE 10, 20
    PRINT "Welcome to trivia game about "
    LOCATE 11, 20
    INPUT "What is your name?"; name$
    LOCATE 12, 20
    PRINT "Hi,"; name$;
    LOCATE 13, 20
    PRINT "Hope you enjoy the game"
    LOCATE 14, 20
    PRINT " There will be five questions!"
    LOCATE 15, 20
    PRINT "press any key to continue"

    DO
    LOOP UNTIL INKEY$ <> "" 'player need to press any keys
    CLS

    LINE (100, 100)-(500, 400), 6, B
    LOCATE 9, 20
    PRINT "SCORE:"; score
    LOCATE 10, 20
    PRINT "QUESTION ONE"
    LOCATE 11, 20
    PRINT "what is the capital city of afghanistan"
    LOCATE 12, 20
    PRINT "1. mazari sharif  2. herat"
    LOCATE 13, 20
    PRINT "3. kabul      4. kandahar"
    DO
        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 3 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""
    DO
        CLS
        'QUESTION Number 2
        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION TWO"
        LOCATE 11, 20
        PRINT "what is natinal animal of afghanistan"
        LOCATE 12, 20
        PRINT "1. tiger        2. snow leopard"
        LOCATE 13, 20
        PRINT "3. goat       4.  lion"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 3

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION THREE"
        LOCATE 11, 20
        PRINT "what is the national bird of afghanistan"
        LOCATE 12, 20
        PRINT "1. owl        2. golden eagle"
        LOCATE 13, 20
        PRINT "3. perrot        4.  crow"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 4

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION FOUR"
        LOCATE 11, 20
        PRINT "what is the national dog of afghanistan"
        LOCATE 12, 20
        PRINT "1. german sheperd     2.afghan hound"
        LOCATE 13, 20
        PRINT "3. pitbull         4. bulldog"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 5

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION FIVE"
        LOCATE 11, 20
        PRINT "What is the national food of afghanistan"
        LOCATE 12, 20
        PRINT "1. mandi        2. biryani"
        LOCATE 13, 20
        PRINT "3. goal gapay         4. kabuli palaw"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0

    LOCATE 15, 20
    IF ANSWER = 4 THEN
        LOCATE 16, 20
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF
    CLS

    LOCATE 5, 33: PRINT "WELL DONE "; name$;
    LOCATE 2, 29: PRINT "YOUR FINAL SCORE IS"; score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game5
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB

SUB game6 'PARKER
    SCREEN 12


    ' intro screen


    COLOR 4

    PRINT "welcome to trivia about cats"

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    ' first question

    COLOR 3

    DO
        CLS
        PRINT "score"; score
        PRINT ""

        PRINT "1/12 How many lives does a cat have"
        PRINT "1. 5"
        PRINT "2. 42"
        PRINT "3. 904"
        PRINT "4. 9"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 4 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    ' second question

    COLOR 14

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "2/12 What is the french word for cat"
        PRINT "1. chat"
        PRINT "2. hon hon hon"
        PRINT "3. banana"
        PRINT "4. le pepe le peu"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 1 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 9

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "3/12 How many kittens can be born in a litter"
        PRINT "1. 5-16"
        PRINT "2. 4-12"
        PRINT "3. 9-11"
        PRINT "4. 7-9"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 2 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 10

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "4/12 Which is one of the rarest cats to get genetically"
        PRINT "1. Pure white"
        PRINT "2. Calico"
        PRINT "3. Pure black"
        PRINT "4. Tabby"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 1 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 13

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "5/12 What is the first year of a cats life equlivent to in human years? "
        PRINT "1. 4 years "
        PRINT "2. 20 years"
        PRINT "3. 15 years"
        PRINT "4. 35 years"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 3 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 5

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "6/12 What degrees can a cat turn their ears?"
        PRINT "1. 180 "
        PRINT "2. 90 "
        PRINT "3. 45"
        PRINT "4. 200"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 1 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF


    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 2

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "7/12 How many times stronger is a cats hearing than humans?"
        PRINT "1. 100 times"
        PRINT "2. 14 times"
        PRINT "3. 12 times"
        PRINT "4. 5 times"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 4 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 11

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "8/12 How many hours in a day does a cat typically sleep?"
        PRINT "1. 1-2 hours"
        PRINT "2. 14-20 hours"
        PRINT "3. 12-16 hours"
        PRINT "4. 13-23 hours"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 3 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 12

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "9/12 What flavor can cats not taste"
        PRINT "1. spicy"
        PRINT "2. sweet"
        PRINT "3. bitter"
        PRINT "4. sour"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 2 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 9

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "10/12 How many bones are in a cats sketical system?"
        PRINT "1. 206"
        PRINT "2. 230"
        PRINT "3. 420"
        PRINT "4. 304"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 2 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 2

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "11/12 What is the purpose of a cats whiskers?"
        PRINT "Fun fact cats whiskers can also be on the backs and front of their legs!"
        PRINT "1. help them to navigaite"
        PRINT "2. help them smell"
        PRINT "3. help them taste "
        PRINT "4. just for show"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 1 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF

    PRINT "press any key to continue": DO: LOOP UNTIL INKEY$ <> ""

    COLOR 10

    DO
        CLS

        PRINT "score"; score
        PRINT ""

        PRINT "12/12 Whats the earliest a can start to have kitten?"
        PRINT "1. 18 months"
        PRINT "2. 2 years"
        PRINT "3. 4 months"
        PRINT "4. 12 months"

        INPUT answer
    LOOP UNTIL answer < 5 AND answer > 0

    IF answer = 3 THEN

        score = score + 1
        PRINT "correct!"
    ELSE
        PRINT "wrong!"
    END IF
    CLS

    LOCATE 2, 33: PRINT "score"; score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choice
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game6
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB
SUB game7 'PAUL
    SCREEN 12
    10
    CLS

    score = 0

    LINE (100, 100)-(500, 400), 6, B

    LOCATE 10, 20
    PRINT "Welcome to trivia game about "
    LOCATE 11, 20
    INPUT "What is your name?"; name$
    LOCATE 12, 20
    PRINT "Hi,"; name$;
    LOCATE 13, 20
    PRINT "Hope you enjoy the game"
    LOCATE 14, 20
    PRINT " There will be five questions!"
    LOCATE 15, 20
    PRINT "press any key to continue"

    DO
    LOOP UNTIL INKEY$ <> "" 'player need to press any keys
    CLS

    LINE (100, 100)-(500, 400), 6, B
    LOCATE 9, 20
    PRINT "SCORE:"; score
    LOCATE 10, 20
    PRINT "QUESTION ONE"
    LOCATE 11, 20
    PRINT "How many capital cities of Canadaa?"
    LOCATE 12, 20
    PRINT "1. 12        2. 13"
    LOCATE 13, 20
    PRINT "3. 14         4. 10"
    DO
        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 3 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""
    DO
        CLS
        'QUESTION Number 2
        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION TWO"
        LOCATE 11, 20
        PRINT "who is the first man step in moon"
        LOCATE 12, 20
        PRINT "1. Kodu Sinichi        2. Neil Armstrong"
        LOCATE 13, 20
        PRINT "3. Samaya ka           4.  Louis Christ"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 3

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION THREE"
        LOCATE 11, 20
        PRINT "what animal run fastest in the world"
        LOCATE 12, 20
        PRINT "1. Rabbit        2. Cheetah"
        LOCATE 13, 20
        PRINT "3. Lion          4.  Squirrel"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 4

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION FOUR"
        LOCATE 11, 20
        PRINT "Which is the laziest animal in the world?"
        LOCATE 12, 20
        PRINT "1. COW           2.Sloth"
        LOCATE 13, 20
        PRINT "3. Snail         4. Frog"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 2 THEN
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    LOCATE 16, 20
    PRINT name$; " , PRESS ANY KEY TO CONTINUE"
    DO
    LOOP UNTIL INKEY$ <> ""

    DO
        CLS

        'QUESTION NO 5

        LINE (100, 100)-(500, 400), 6, B
        LOCATE 9, 20
        PRINT "SCORE:"; score
        LOCATE 10, 20
        PRINT "QUESTION FIVE"
        LOCATE 11, 20
        PRINT "Which animal can sleep for 3 years?"
        LOCATE 12, 20
        PRINT "1. Panda        2. Koala"
        LOCATE 13, 20
        PRINT "3. Bear         4. Snail"

        LOCATE 14, 20
        INPUT ANSWER
    LOOP UNTIL ANSWER < 5 AND ANSWER > 0 'player can only put 4 to 1 number

    LOCATE 15, 20
    IF ANSWER = 4 THEN
        LOCATE 16, 20
        PRINT "CORRECT ANSWER!"
        score = score + 1
    ELSE
        PRINT "WRONG ANSWER!"
    END IF

    CLS

    LOCATE 6, 33
    PRINT "WELL DONE "; name$;
    LOCATE 2, 28
    PRINT "YOUR FINAL SCORE IS"; score

    masterscore = masterscore + score 'submitting score

    DO 'user choice prompt
        LOCATE 1, 32: COLOR 12: PRINT "masterscore: "; masterscore
        LOCATE 4, 25: COLOR 15: INPUT "1: retry | 2: end | 3: main menu ", choic
    LOOP UNTIL choice > 0 AND choice <= 3

    IF choice = 1 THEN 'retry
        masterscore = masterscore - score 'unsubmitting score
        CLS: game7
    END IF

    IF choice = 2 THEN END 'end
    IF choice = 3 THEN CLS: mainmenu 'menu

END SUB
