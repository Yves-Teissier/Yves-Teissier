/* jukebox
 * Author: yves
 * Creation date: 06/02/2022
 */
MACHINE           jukebox

SETS              TRACK

CONCRETE_CONSTANTS limit

PROPERTIES        limit : NATURAL1

ABSTRACT_VARIABLES credit , playset

INVARIANT         credit : NATURAL & credit <= limit & playset <: TRACK /* playset est un sous-ensemble de TRACK */

INITIALISATION    credit := 0 || playset := {}

OPERATIONS

  pay ( cc ) =
  PRE cc : NATURAL1
 THEN
    credit := min ( { credit + cc , limit } ) /* ne peut pas dépasser limit */
  END ;

  /* selection aléatoire entre select titre de la liste et retirer un crédit et un titre gratuit
  CHOICE permet de faire une sélection aléatoire */
  select ( tt ) =
  PRE credit > 0 & tt : TRACK
  THEN
    CHOICE credit := credit - 1 || playset := playset \/ { tt }
    OR playset := playset \/ { tt }
    END
  END ;

 /* retourne un titre de la liste. Le choix du titre est fait par la machine. Donc non-déterministe (ANY) */
tt <-- play =
  PRE playset /= {}
  THEN
    ANY tr
    WHERE tr : playset
    THEN tt := tr || playset := playset - { tr }
    END
  END ;

/* si tous les prédicats sont vrais alors aléatoirement credit moins 1 ou titre enlevé au hazard */
  penalty =
  SELECT credit > 0  THEN credit := credit - 1 /* enlève un crédit arbitrairement. La substitution SELECT définit pour un programme différents comportements possibles
en fonction de la validité de prédicats. */
  WHEN playset /= {} THEN /* si predicat vrai alors ANY ...*/
     ANY pp
     WHERE pp : playset
     THEN playset := playset - { pp }
     END
  ELSE skip
  END

END
