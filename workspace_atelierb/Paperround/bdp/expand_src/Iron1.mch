/* Iron1
 * Author: yves
 * Creation date: 12/02/2022
 * Example de LIFO. 
 */
MACHINE
    Iron1

CONCRETE_CONSTANTS
    limit

PROPERTIES
    limit : NAT1

SETS
    ITEM

ABSTRACT_VARIABLES
    pile

INVARIANT
    pile : seq ( ITEM ) & size ( pile ) <= limit /* pile est une séquence d'élément appartenant à l'ensemble ITEM */

INITIALISATION
    pile := []

OPERATIONS
  put ( ii ) =
  PRE ii : ITEM & size ( pile ) < limit
  THEN pile := pile <- ii /* insertion en fin de suite */
  END ;

ii <-- take =
  PRE pile /= []
  THEN pile := front ( pile ) || ii := last ( pile ) /* on garde la début de la séquence (tete). on récupère la dernier élément de la séquence. */
  END ;

bb <-- query ( ii ) =
  PRE ii : ITEM
  THEN bb := bool ( ii : ran ( pile ) ) /* bb est un boolean. Vrai si ii appartient à la séquence. */
  END

END
