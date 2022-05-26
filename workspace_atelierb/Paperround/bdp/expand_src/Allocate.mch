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
 /* Choisi de façon aléatoire un élément de 1..100 pour l'ajouter dans l'ensemble "allocated" */
nn <-- allocate =
  PRE ( 1 .. 100 ) - allocated /= {} /* vérifie que allocated contient au moins un élément */
  THEN
      ANY mm
      WHERE mm : ( 1 .. 100 ) - allocated /* prend une élément de l'ensemble 0..100 moins l'ensemble des éléments déjà alloués */
      THEN nn := mm || allocated := allocated \/ { mm } END /* retourne cet élément mm (voir ligne au dessus). Ajouter cet élément mm à l'ensemble des éléments alloués */
  END
END
