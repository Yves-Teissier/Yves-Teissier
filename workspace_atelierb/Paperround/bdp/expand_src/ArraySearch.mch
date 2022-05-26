/* ArraySearch
 * Author: yves
 * Creation date: 12/03/2022
 */
MACHINE
    ArraySearch
CONCRETE_CONSTANTS
    MAX
PROPERTIES
    MAX : NAT
ABSTRACT_VARIABLES
    aa
INVARIANT
    aa : 0 .. MAX --> NAT
INITIALISATION
    aa := % ii . ( ii : 0 .. MAX | ii )
OPERATIONS
    ee <-- get ( xx ) =
        PRE xx : 0 .. MAX
        THEN ee := aa ( xx )
        END ;

    add ( ii , xx ) =
        PRE ii : 0 .. MAX & xx : NAT
        THEN aa ( ii ) := xx
        END ;

    bb <-- contains ( xx ) =
        PRE xx : NAT
        THEN bb := bool ( xx : ran ( aa ) )
        END
END
