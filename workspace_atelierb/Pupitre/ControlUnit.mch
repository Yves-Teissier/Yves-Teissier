/* ControlUnit
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    ControlUnit

SEES CTX

OPERATIONS
    new_state <-- pupitre_next(state) =
    PRE state: STATE THEN
        new_state :: NEXT[{state}]
    END
END
