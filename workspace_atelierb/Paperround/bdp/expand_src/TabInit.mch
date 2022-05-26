/* TabInit
 * Author: yves
 * Creation date: 08/03/2022
 */
MACHINE
    TabInit

ABSTRACT_VARIABLES
    tab
INVARIANT
    tab : 0 .. 9 --> NAT
INITIALISATION
    tab := ( 0 .. 9 ) * { 0 }
OPERATIONS
    op =
    BEGIN
        tab :: 0 .. 9 --> NAT
    END
END
