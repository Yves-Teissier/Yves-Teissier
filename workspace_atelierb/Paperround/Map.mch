/* Map
 * Author: yves
 * Creation date: 12/02/2022
 */
MACHINE           Map(INDEX, ITEM) /* recois l'INDEX et l'ITEM à mapper */

VARIABLES         fun

INVARIANT         fun : INDEX +-> ITEM /* fonction partielle de INDEX dans ITEM. */

INITIALISATION    fun := {}

OPERATIONS

  insert(ss1, ss2) =
  PRE ss1 : INDEX & ss2 : ITEM
  THEN fun(ss1) := ss2
  END;

  remove(ss1) =
  PRE ss1 : INDEX
  THEN fun := {ss1} <<| fun /* <<| soustraction (ou anté-restriction) sur le domaine. On enlève ss1 du domaine. */
  END;

ss2 <-- query(ss1) =
  PRE ss1 : dom(fun)
  THEN ss2 := fun(ss1)
  END

END