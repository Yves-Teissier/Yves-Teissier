/* List
 * Author: yves
 * Creation date: 12/02/2022
 * FIFO
 */
MACHINE           List ( ELEMENT ) /* recois l'ensemble ELEMENT */

ABSTRACT_VARIABLES list

INVARIANT         list : seq ( ELEMENT )

INITIALISATION    list := []

OPERATIONS

  add ( ee ) =
  PRE ee : ELEMENT
  THEN list := list <- ee /* ajouter l'élément ee à la fin de la suite */
  END ;

ee <-- take =
  PRE list /= []
  THEN list := tail ( list ) || ee := first ( list )
  END

END
