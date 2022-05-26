/* Allocate
 * Author: yves
 * Creation date: 22/02/2022
 */
MACHINE           Allocate

ABSTRACT_VARIABLES allocated

INVARIANT         allocated <: 1 .. 100

INITIALISATION    allocated := {}

OPERATIONS

  choose ( nn ) =
  PRE nn : ( 1 .. 100 ) & nn /: allocated
  THEN allocated := allocated \/ { nn }
  END ;

aa <-- query ( nn ) =
  PRE nn : ( 1 .. 100 )
  THEN IF nn : allocated THEN aa := TRUE ELSE aa := FALSE END
  END ;

nn <-- allocate =
  PRE ( 1 .. 100 ) - allocated /= {}
  THEN
      ANY mm
      WHERE mm : ( 1 .. 100 ) - allocated
      THEN nn := mm || allocated := allocated \/ { mm } END
  END
END
