/* hotel2
 * Author: yves
 * Creation date: 03/02/2022
 * Example array 2
 */
MACHINE
    hotel2

SETS
    ROOM; NAME; REPORT = {present, notpresent}
        
CONSTANTS
    empty, sze

PROPERTIES
    sze : NATURAL1 & card(ROOM) = sze & empty : NAME
    
VARIABLES
    guests
    
INVARIANT
    guests : ROOM --> NAME /* fonction totale. Toutes les chambres sont associé à un élément du codomaine */
    
INITIALISATION
    guests := ROOM * {empty} /* toutes les chambres sont vides. */
    
OPERATIONS
    guestcheckin(rr, nn) =
    PRE rr : ROOM & nn : NAME & nn /= empty
    THEN guests(rr) := empty /*  */
    END;
    
    guestchekout(rr) =
    PRE rr : ROOM
    THEN guests(rr) := empty
    END;
    
    nn <-- guestquery(rr) =
    PRE rr : ROOM
    THEN nn := guests(rr)
    END;
    
    rr <-- presentquery(nn) =
    PRE nn : NAME & nn /= empty /* nn est différent de empty */
    THEN IF nn : ran(guests) /* si nn fait parti du codomaine */
        THEN rr := present
        ELSE rr := notpresent
        END
    END;
    
    guestswap(rr,ss) = 
    PRE rr : ROOM & ss : ROOM
    THEN guests := guests <+ {rr |-> guests(ss), ss |-> guests(rr)} /* surcharge de la relation guests (ROOM --> NAME) avec les maplets { 1, 2 } */
    END
END
