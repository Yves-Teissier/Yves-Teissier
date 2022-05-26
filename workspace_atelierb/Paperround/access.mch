/* access
 * Author: yves
 * Creation date: 29/01/2022
 * activer ou déactiver des options
 */
MACHINE
    access

SETS
    PRINTER;
    OPTION;
    PERMISSION = {ok, no}
    
VARIABLES
    options
    
INVARIANT
    options : PRINTER <-> OPTION /* options est l'ensemble des relations entre PRINTER et OPTION */
    
INITIALISATION
    options := {}
    
OPERATIONS
    add(pp,oo) =
    PRE pp : PRINTER & oo : OPTION
    THEN options := options \/ {pp |-> oo} /* ajout du maplet (relation entre pp et oo) dans options */
    END;

    remove(pp,oo) =
    PRE pp : PRINTER & oo : OPTION
    THEN options := options - {pp |-> oo} /* supprimer le maplet (relation entre pp et oo) de options */
    END;

    ans <-- optionquery(pp, oo) =
    PRE pp : PRINTER & oo : OPTION
    THEN IF pp |-> oo : options  /* le mapet (relation entre pp et oo) appartient à l'ensemble options */
        THEN ans := ok
        ELSE ans := no
        END
    END 

END
