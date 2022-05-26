/* race
 * Author: yves
 * Creation date: 31/01/2022
 */
MACHINE
    race

SETS
    CAR

ABSTRACT_VARIABLES
    finish

INVARIANT
    finish : iseq ( CAR )

INITIALISATION
    finish := <>

OPERATIONS
    finished ( rr ) =
        PRE rr : CAR & rr /: ran ( finish )
        THEN finish := finish <- rr
        END ;

    rr <-- query ( pp ) =
    PRE pp : NAT1 & pp <= size ( finish )
    THEN rr := finish ( pp )
    END ;

    disquality ( pp ) =
    PRE pp : NAT1 & pp <= size ( finish )
    THEN finish := ( finish /|\ pp - 1 ) ^ ( finish \|/ pp )
    END ;

    ss <-- medals =
    PRE size ( finish ) <= 3
    THEN ss := finish /|\ 3
    END


END
