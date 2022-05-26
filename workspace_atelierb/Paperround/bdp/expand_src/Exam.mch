/* Exam
 * Author: yves
 * Creation date: 12/02/2022
 */
MACHINE           Exam

SETS              CANDIDATE

ABSTRACT_VARIABLES marks

INVARIANT         marks : CANDIDATE +-> 0 .. 100 /* Fonction partiel de CANDIDATE dans 0..100. Une fonction partielle est un relation qui ne contient pas deux couples distincts ayant le meme premier élement. Une seule note est associé à un candidat. */

INITIALISATION    marks := {} /* aucune note effectuée */

OPERATIONS

  enter ( cc , nn ) =
  PRE cc : CANDIDATE & cc /: dom ( marks ) & nn : 0 .. 100 /* le candidat cc ne fait pas parti du domaine de la fonction marks c-a-d le candidat n'a pas encore de note. La note nn est entre 0 et 100 */
  THEN marks ( cc ) := nn /* créé une relation entre le candidat cc et la note nn */
  END ;

aa <-- average =
  PRE marks /= {}
  THEN aa := ( SIGMA zz . ( zz : dom ( marks ) | marks ( zz ) ) ) / card ( dom ( marks ) ) /* fonction SIGMA (somme) de zz avec zz appartient au domaine marks, des éléments du co-domaine associé à zz. Le tout divisé par la nombre d'élément du domaine de marks */
  END ;

nn <-- number =
  nn := card ( dom ( marks ) )

END
