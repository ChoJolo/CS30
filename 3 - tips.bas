'Name: "tips"
'User: Anthony Edwards
'Class: CS30
'Date: 9/16/20

'user input of price of service
DO

    CLS
    PRINT "Enter bill total before tax"
    INPUT bill
    IF bill < 0 THEN PRINT "ERROR PLEASE ENTER A VALID TOTAL"

LOOP UNTIL bill > 0

PST = bill * 0.06
GST = bill * 0.05
subtotal = bill + GST + PST

'display bill including tax
CLS
PRINT "Your bill after tax is $"; subtotal

PRINT

'ask user consent to tip
PRINT "Enter 1 to tip; Enter 2 to Exit"

'for user exit
INPUT tipChoice
IF tipChoice = 2 THEN
    END
END IF
CLS

'let user to decide the timing of the tip
IF tipChoice = 1 THEN
    PRINT "Enter 1 if tip after tax; 2 for tip before tax"
    INPUT tipTiming

    'option 1: after tax
    IF tipTiming = 1 THEN

        PRINT "How much percent(%) will you tip?"

        INPUT tip
        tip = tip / 100

        grandtotal = subtotal + (subtotal * tip)

        PRINT
        COLOR 3
        PRINT "you choose to tip: $"; subtotal * tip
        PRINT "your grandtotal is: $"; grandtotal
        END

        INPUT tipTiming
        'option 2: before tax
        IF tipTiming = 2 THEN

            PRINT "How much percent(%) will you tip?"

            INPUT tip
            tip = tip / 100

            grandtotal = subtotal + (bill * tip)
            'final display of cost
            PRINT
            COLOR 3
            PRINT "you choose to tip: $"; subtotal * tip
            PRINT "your grandtotal is: $"; grandtotal

        END IF
    END IF

    'if no other costs were incured
ELSE
    PRINT "your grandtotal is"; subtotal
    END

END IF
END
