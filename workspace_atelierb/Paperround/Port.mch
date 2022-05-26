/* Port
 * Author: yves
 * Creation date: 12/02/2022
 */
MACHINE           Port

SETS              SHIP; QUAY

VARIABLES         waiting, docked

INVARIANT         waiting : iseq(SHIP) /* ensemble des suites injectives. Les éléments de la suite est injection partielle de NATURAL1 dans SHIP. suite non ordonnée d'entier naturels. */
                  & docked : QUAY >+> SHIP & ran(waiting) /\ ran(docked) = {} /* docker est un fonction injective partielle de QUAY dans SHIP. Un quai ne peut acqueillir qu'un seul bateau et un bateau ne peut aller que sur un seul quai. Tous les quais ne sont pas nécessairement utilisés. L'ensemble des bateau en attente intersection l'ensemble des bateaux à quai est l'ensemble vide. Un bateau ne peut pas etre en meme temps en attente et à quai */

INITIALISATION    waiting := <> || docked := {} /* <> pour les séquences. {} pour les ensembles */

OPERATIONS

  arrive(ss) =
  PRE ss : SHIP & ss /: ran(waiting) & ss /: ran(docked) /* le nouveau ship ss en fait pas parti des ship waiting et des ships docked */
  	& card(waiting) < MAXINT    
  THEN waiting := waiting <- ss /* on ajoute ss à la fin de la suite */
  END;

dock(qq) =
  PRE waiting /= <> & qq : QUAY & qq /: dom(docked) 
  THEN waiting := tail(waiting) || docked(qq) := first(waiting) /* la suite waiting devient la suite waiting privé de son premier élément (tail(S)). Le dock qq est associé au premier élément de la suite waiting */ 
  END;

qq <-- leave(ss) = /* libère le quai où se trouve le ship ss. retourne le quai libéré */
  PRE ss : SHIP & ss : ran(docked) /* le ship ss doit etre à quai */
  THEN docked := docked |>> {ss} || qq := docked~(ss) /* |>> est la soustraction sur le co-domaine. on enlève ss du co-domaine de docked (injection partielle). r~ relation inverse de docked pour ss est qq */
  END;

nn <-- numberwaiting =
  nn := size(waiting)

END
