/* Iron2
 * Author: yves
 * Creation date: 12/02/2022
 */
MACHINE
    Iron2

CONCRETE_CONSTANTS
    limit

PROPERTIES
    limit : NAT1

SETS
    ITEM

ABSTRACT_VARIABLES
    pile

INVARIANT
    pile : seq ( ITEM ) & size ( pile ) <= limit

INITIALISATION
    pile := []

OPERATIONS
  put ( ii ) =
  PRE ii : ITEM & size ( pile ) < limit
  THEN pile := pile <- ii
  END ;

ii <-- take =
  PRE pile /= []
  THEN pile := front ( pile ) || ii := last ( pile )
  END ;

bb <-- query ( ii ) =
  PRE ii : ITEM
  THEN bb := bool ( ii : ran ( pile ) )
  END

END
