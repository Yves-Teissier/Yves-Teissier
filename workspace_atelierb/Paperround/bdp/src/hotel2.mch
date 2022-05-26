/* hotel2
 * Author: yves
 * Creation date: 03/02/2022
 * ARRAY example 2
 */
MACHINE
    hotel2

SETS
    ROOM ; NAME ; REPORT = { present , notpresent }

CONCRETE_CONSTANTS
    empty , sze

PROPERTIES
    sze : NATURAL1 & card ( ROOM ) = sze & empty : NAME

ABSTRACT_VARIABLES
    guests

INVARIANT
    guests : ROOM --> NAME /* fonction totale */

INITIALISATION
    guests := ROOM * { empty }

OPERATIONS
    guestcheckin ( rr , nn ) =
    PRE rr : ROOM & nn : NAME & nn /= empty
    THEN guests ( rr ) := empty
    END ;

    guestchekout ( rr ) =
    PRE rr : ROOM
    THEN guests ( rr ) := empty
    END ;

    nn <-- guestquery ( rr ) =
    PRE rr : ROOM
    THEN nn := guests ( rr )
    END ;

    rr <-- presentquery ( nn ) =
    PRE nn : NAME & nn /= empty
    THEN IF nn : ran ( guests ) /* si nn fait parti du codomaine */
        THEN rr := present
        ELSE rr := notpresent
        END
    END ;

    guestswap ( rr , ss ) =
    PRE rr : ROOM & ss : ROOM
    THEN guests := guests <+ { rr |-> guests ( ss ) , ss |-> guests ( rr ) }
    END
END
