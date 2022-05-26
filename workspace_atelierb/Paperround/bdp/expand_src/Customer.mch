/* Customer
 * Author: yves
 * Creation date: 02/03/2022
 */
MACHINE Customer

ABSTRACT_VARIABLES
    purchases ,
    limit ,
    price

SETS
    GOODS

INVARIANT
    purchases <: GOODS
    & limit : GOODS --> NAT1 /* fonction totale de GOODS dans NAT1. Chaque GOOD doit avoir une limite */
    & price : GOODS --> NAT1 /* fonction totale de GOOD dans NAT1. Chaque GOOD doit avoir un prix */

INITIALISATION
    purchases := {}
    || limit :: GOODS --> NAT1 /* limit devient élément de la fonction totale ... */
    || price :: GOODS --> NAT1 /* price devient élément de la fonction totale ... */

OPERATIONS

pp <-- buy ( gg ) =
  PRE gg : GOODS & price ( gg ) <= limit ( gg )
  THEN purchases := purchases \/ { gg } || pp := price ( gg )
  END ;

  setprice ( gg , pp ) =
  PRE gg : GOODS & pp : NAT1
  THEN price ( gg ) := pp
  END ;

pp <-- pricequery ( gg ) =
  PRE gg : GOODS THEN pp := price ( gg ) END

END
