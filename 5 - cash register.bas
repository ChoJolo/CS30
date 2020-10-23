'Write a "cash register" program. Have the user input the price of a product, and the !quantity of
'that product. Display a running total at all times. When the user enters a price of zero, that will
'indicate that there are no more items. When all items are entered, display the sub-total,
'calculate and display a 5% tax, and then display the total. Have the
'user enter the amount of cash tendered, and display the amount of change to be returned. Then
'have the computer calculate the number of $10, $5, $1 bills and quarters,
'dimes, nickels, and pennies to be returned as change.

'Anthony Edwards
'Date 10/05/20

1 CLS: CLEAR
SCREEN 12

max = 999 'lots of room
y = 0 'counter
DIM price(1 TO max)

'query item price
FOR x = 1 TO max

    IF x = 24 THEN y = 1: CLS 'refresh screen

    y = y + 1 'item counter

    10 COLOR 15: LOCATE 3, 1: INPUT "price of product? $", price(x)
    COLOR 7: LOCATE 2, 70: PRINT "Done: 0"

    IF price(x) = 0 THEN EXIT FOR 'done
    IF price(x) < 0 THEN GOTO 10 'invalid input

    cart = cart + price(x) 'running total

    'printing cart
    COLOR 12: LOCATE 2, 33: PRINT "Cart $"; cart 'subtotal
    LOCATE 4 + y, 33: PRINT x; ": "; "$"; price(x) 'item # w/ prices

NEXT x: CLS

tmp$ = "$$#####.##" 'currency template
tax = cart * .05 '5% tax
tax = INT((100 * tax) + .5) / 100 'rounding formula
total = cart + tax 'add tax to total

DO: CLS 'Payment Selection Portal

    COLOR 12: LOCATE 2, 31: PRINT "Grand total: $"; USING tmp$; total 'grand total
    COLOR 15: LOCATE 3, 34: PRINT "Tax(5%) $"; USING tmp$; tax '% tax of total

    COLOR 15: LOCATE 5, 31: PRINT "Enter payment method"
    COLOR 7: LOCATE 6, 32: PRINT "(Cash: 1 | Card: 2)"
    COLOR 7: LOCATE 8, 39: INPUT ">", payment: CLS

LOOP UNTIL payment = 1 OR 2

DIM money(1 TO 2) '1: cash | 2: card

DO
    IF payment = 1 THEN '1: cash payment

        COLOR 12: LOCATE 2, 31: PRINT "Grand total: $"; total 'final total
        COLOR 15: LOCATE 3, 27: INPUT "Enter money received: $", money(1)

        IF money(1) = total THEN GOTO 30 'goto clear checkout

        'finding owed change
        IF money(1) > total THEN
            due = ABS(total - money(1)) '$ difference
            COLOR 15: LOCATE 4, 29: PRINT "Amount owed: $"; due
            GOTO 20
        END IF

        'weighing exchange value
        IF money(1) < total THEN 'insufficient bal
            CLS: COLOR 14: LOCATE 1, 12
            PRINT "Error. Insufficient balance. Combine with card payment?"
        END IF

    END IF

    IF payment = 2 THEN '2: card payment

        CLS 'includes option to combine payment methods
        money(2) = ABS(total - money(1)) '$ difference
        COLOR 12: LOCATE 2, 30: PRINT "Grand total: $"; total 'final total
        COLOR 14: LOCATE 3, 33: PRINT "Cash: $"; money(1)
        COLOR 15: LOCATE 4, 33: PRINT "Card: $"; money(2)
        LOCATE 5, 28: PRINT "(Entering card info...)": SLEEP 1 'visual feedback
        GOTO 30 'clear checkout

    END IF

LOOP

20: CLS

DIM cash(1 TO 8) 'bill/coin(s)
DIM tender(1 TO 9) AS INTEGER 'currency

tender(1) = 2000
tender(2) = 1000
tender(3) = 500
tender(4) = 100
tender(5) = 25
tender(6) = 10
tender(7) = 5
tender(8) = 1
tender(9) = 0

DIM owed(1 TO 9) 'for updating owed value
DIM marker AS INTEGER 'for whole values

marker = due * 100
owed(1) = marker 'starting owed value

COLOR 12: LOCATE 3, 33: PRINT "Owed: $"; marker / 100

FOR x = 1 TO 9 'calculating tender

    IF owed(x) = 0 THEN EXIT FOR 'exit for loop once done

    r = owed(x) MOD tender(x) 'find & store remainder
    owed(x) = owed(x) - r 'cleave remainder from value
    cash(x) = owed(x) \ tender(x) 'finding amount of tender owed ($)
    owed(x) = owed(x) - (tender(x) * cash(x)) + r 'swap owed value with remainder
    owed(x + 1) = owed(x) 'define owed value of next x

NEXT x

FOR x = 1 TO 8 'printing tender owed to customer

    COLOR 15: IF tender(x) >= 100 THEN LOCATE x + 4, 33:_
    PRINT "$"; tender(x) / 100; "'s"; ":"; cash(INT (x)) 'displaying bills
    COLOR 15: IF tender(x) < 100 THEN LOCATE x + 5, 33:_
    PRINT tender(x); "c"; ":"; cash(INT (x)) 'displaying coins

NEXT x

'clear checkout
30 IF money = total THEN:
COLOR 2: LOCATE 21, 29: PRINT "Payment Successful!":

'repeat prompt
COLOR 7: LOCATE 25, 26: _DELAY 0.5: PRINT "(press any key to repeat)"
SLEEP: DO: LOOP UNTIL INKEY$ = ""
_KEYCLEAR: GOTO 1
