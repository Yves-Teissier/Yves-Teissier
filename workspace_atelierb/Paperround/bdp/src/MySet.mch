/* MySet
 * Author: yves
 * Creation date: 22/02/2022
 */
MACHINE MySet
SEES MySet_ctx
ABSTRACT_VARIABLES ss
INVARIANT ss <: VALUE & card ( ss ) <= MM
INITIALISATION ss := {}
OPERATIONS
  Add ( xx ) =
    PRE xx : VALUE & xx /: ss & card ( ss ) < MM
    THEN ss := ss \/ { xx }
    END ;

  xx <-- Discard =
    PRE ss /= {}
    THEN
        ANY ee
        WHERE ee : ss
        THEN ss := ss - { ee } || xx := ee
        END
    END
END
