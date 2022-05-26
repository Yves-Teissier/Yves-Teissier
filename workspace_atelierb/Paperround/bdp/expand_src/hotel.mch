/* hotel
 * Author: yves
 * Creation date: 03/02/2022
 * Utilisation des array 1
 */
MACHINE
    hotel

CONCRETE_CONSTANTS
    small , sze

SETS
    ROOM

PROPERTIES
    sze : NATURAL1 & card ( ROOM ) = sze & small <: ROOM /* l'ensemble small est inclu dans l'ensemble ROOM */

ABSTRACT_VARIABLES
    numbers /* nombre d'occupant dans une chambre */

INVARIANT
    numbers : ROOM --> 0 .. 6 & numbers [ small ] <: 0 .. 4 /* numbers est une fonction total de ROOM vers 0..6 (Toutes les chambres ont un nombre d'occupant allant de 0 à 6). 0..4 est inclue dans numbers[small] (image de small par numbers). Le nombre d'occupant autorisé dans une patite chambre va de 0 à 4 */

INITIALISATION
    numbers := ROOM * { 0 } /* l'ensemble ROOM ne contient que des éléments 0. Toutes les chambres sont vides */

OPERATIONS
   checkin ( rr , nn ) =
   PRE rr : ROOM & nn : 1 .. 6 & numbers ( rr ) = 0 & ( rr : small => nn <= 4 ) /* le nombre d'occupant de la chambre est 0. Si la chambre rr appartient à l'ensemble des petites chambre, alors (=>) nn doit etre intéfieur ou égale à 4 */
   THEN numbers ( rr ) := nn
   END ;

   checkout ( rr ) =
   PRE rr : ROOM
   THEN numbers ( rr ) := 0
   END ;

   nn <-- roomquery ( rr ) =
   PRE rr : ROOM
   THEN
       nn := numbers ( rr )
   END ;

   nn <-- vacancies = nn := card ( numbers |> { 0 } ) ; /* |> restriction sur le codomaine. L'emsemble des relations sont le codomaine est 0 */

   nn <-- totalguests = nn := SIGMA ( zz ) . ( zz : ROOM | numbers ( zz ) ) ; /* zz est une chambre. et la somme des nombres de zz */

   swap ( rr , ss ) =
   PRE rr : ROOM & ss : ROOM & ( ( rr : small ) <=> ( ss : small ) ) /* si rr est small et ss est small alors elles doivent avoir la meme taille. rr est small si est seulement si ss est small */
   THEN
       numbers := numbers <+ { rr |-> numbers ( ss ) , ss |-> numbers ( rr ) } /* <+ surcharge d'une relation. On mappe rr vers le nombre d'occupant de ss et mappe ss vers le nombre d'occupant de rr */
   END
END
