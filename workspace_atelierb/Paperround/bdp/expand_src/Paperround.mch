/* Paperround
 * Author: yves
 * Creation date: 29/01/2022
 */
MACHINE
    Paperround

ABSTRACT_VARIABLES
    papers , magazines

INVARIANT
    /*  */
    papers <: 1 .. 163 & magazines <: papers & card ( papers ) <= 60

INITIALISATION
    papers := {} || magazines := {}

OPERATIONS
    addpaper ( hh ) =
        PRE hh : 1 .. 163 & card ( papers ) < 60
        THEN papers := papers \/ { hh }
        END ;

    addmagazine ( hh ) =
        PRE hh : papers
        THEN magazines := magazines \/ { hh }
        END ;

    remove ( hh ) =
        PRE hh : 1 .. 163
        THEN magazines := magazines - { hh } || papers := papers - { hh } /* "||" = substitution simultannée */
        END
END
