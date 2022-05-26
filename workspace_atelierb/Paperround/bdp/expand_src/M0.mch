/* M0
 * Author: yves
 * Creation date: 13/03/2022
 */
MACHINE
    M0
ABSTRACT_VARIABLES
    xx
INVARIANT
    xx : 0 .. 3
INITIALISATION
    xx :: 0 .. 1
OPERATIONS
    op = xx := xx + 1
END
