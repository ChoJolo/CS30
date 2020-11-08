' rock paper scissors
' Create a program that has you play rock paper scissors against a bot.
' ask the user for Rock, Paper, or Scissors
' compare that input against a random number between 1 and 3
' show results
' do best of 3
' ask to play again

SCREEN 12
CLEAR: CLS

FOR x = 1 TO 3

    'AI throw
    RANDOMIZE TIMER / 3
    rng = INT(RND * 2) + 1

    'player throw
    INPUT "1: rock | 2: paper | 3: scissors"; pChoice: CLS

    PRINT "You: "; pChoice
    PRINT "AI: "; rng

    IF pChoice = rng THEN PRINT "draw"
    IF pChoice > rng AND NOT 1 THEN PRINT "win"
    IF pChoice < rng AND NOT 3 THEN PRINT "lose"
    IF pChoice = 1 AND rng = 3 THEN PRINT "win"
    IF pChoice = 3 AND rng = 1 THEN PRINT "lose"

NEXT x
