/* ControlUnit2
 * Author: yves
 * Creation date: 06/06/2022
 */
MACHINE
    ControlUnit2

SEES CTX

CONCRETE_CONSTANTS
    CU2_IS_FIRST_SLAVE // indique que l’ECU est configuré pour être dans l’état SLAVE s’il n’a pas atteint ni l’état SLAVE ni l’état MASTER depuis le premier démarrage.


PROPERTIES
    CU2_IS_FIRST_SLAVE : BOOL

OPERATIONS

    next_main_state <-- cu2_next_main_state ( state ) =
    PRE state : MAIN_STATE THEN
        next_main_state :: NEXT_MAIN_STATE [ { state } ]
    END ;
    next_on_state <-- cu2_next_on_state ( state ) =
    PRE state : ON_STATE THEN
        next_on_state :: NEXT_ON_STATE [ { state } ]
    END ;
    next_running_state <-- cu2_next_running_state ( state ) =
    PRE state : RUNNING_STATE THEN
        next_running_state :: NEXT_RUNNING_STATE [ { state } ]
    END

END
