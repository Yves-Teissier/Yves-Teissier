/* access
 * Author: yves
 * Creation date: 29/01/2022
 */
MACHINE
    access

SETS
    PRINTER ;
    OPTION ;
    PERMISSION = { ok , no }

ABSTRACT_VARIABLES
    options

INVARIANT
    options : PRINTER <-> OPTION

INITIALISATION
    options := {}

OPERATIONS
    add ( pp , oo ) =
    PRE pp : PRINTER & oo : OPTION
    THEN options := options \/ { pp |-> oo }
    END ;

    remove ( pp , oo ) =
    PRE pp : PRINTER & oo : OPTION
    THEN options := options - { pp |-> oo }
    END ;

    ans <-- optionquery ( pp , oo ) =
    PRE pp : PRINTER & oo : OPTION
    THEN IF pp |-> oo : options
        THEN ans := ok
        ELSE ans := no
        END
    END

END
