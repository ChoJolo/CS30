RANDOMIZE TIMER / 3 'RNG
min = 1
max = 100
FOR flip = min TO max '1-100
    LET coin = (RND) 'generate value btwn 0-1
    IF coin > .5 THEN heads = heads + 1 ELSE tails = tails + 1
NEXT flip
PRINT " heads:"; heads; "|"; " tails:"; tails 'print results
