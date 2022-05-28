/* com_debug
 * Author: yves
 * Creation date: 28/05/2022
 */
MACHINE
    com_debug

SEES
    CTX
    
OPERATIONS
    debug_print_state(state) =
    PRE state : STATE
    THEN
        skip
    END
END
