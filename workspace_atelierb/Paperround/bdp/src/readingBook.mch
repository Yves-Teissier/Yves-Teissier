/* reading
 * Author: yves
 * Creation date: 30/01/2022
 */
MACHINE
    readingBook

SETS
    READER ; /* l'ensemble des lecteurs */
    BOOK ; /* l'ensemble des livres */
    COPY ; /* l'ensemble des copies */
    RESPONSE = { yes , no }

CONCRETE_CONSTANTS
    copyof /* fonction copie de ... */

PROPERTIES
    copyof : COPY -->> BOOK /* la fonction "copyof" est la surjection COPY vers BOOK. Tous les livres ont au moins une copie */

ABSTRACT_VARIABLES
    hasread , reading

INVARIANT
    hasread : READER <-> BOOK /* l'ensemble hasread appartient à l'ensemble des relations entre READER et BOOK */
    & reading : READER >+> COPY /* l'ensemble reading est une function infection partiel de READ vers COPY. Quel lecture lit quelle copie. Un lecture ne lit qu'un seul livre à la fois. Une copie ne peut etre lue que par une seul lecteur à la fois */
    & ( reading ; copyof ) /\ hasread = {} /* L'intersection entre l'ensemble des relations entre READ et COPY. Une lecteur ne peut pas lire un livre qu'il a déjà lu.  */


INITIALISATION
    hasread := {} || reading := {}

OPERATIONS
    start ( rr , cc ) =
    PRE rr : READER
        & cc : COPY
        & copyof ( cc ) /: hasread [ { rr } ] /* le livre correspondant à la copie cc (un élément car résultat de la fonction copyof) n'appartient pas à l'ensemble des copies que le lecteur rr a lu. [suite] {ensemble} */
        & rr /: dom ( reading ) /* Le futur lecture ne fait pas parti des lecteurs */
        & cc /: ran ( reading )
    THEN reading := reading \/ { rr |-> cc }
    END ;

    finished ( rr , cc ) =
    PRE rr : READER
        & cc : COPY
        & rr : dom ( reading ) /* rr est bien un lecteur en train de lire une copie */
        & cc = reading ( rr )
    THEN hasread := hasread \/ { rr |-> copyof ( cc ) } /* l'ensemble hasread obtient la paire rr et copyof(cc) cad le livre lu */
        || reading := { rr } <<| reading /* rr ne fait plus parti des lecteurs */
    END ;

    /* Verifie si une lecteur est en train de lire une livre */
    resp <-- precurrentquery ( rr ) =
    PRE rr : READER
    THEN
        IF rr : dom ( reading )
        THEN resp := yes
        ELSE resp := no
        END
    END ;

    /* Demande le livre qu'est en train de lire le lecteur */
    bb <-- currentquery ( rr ) =
    PRE rr : READER & rr : dom ( reading )
    THEN
        bb := copyof ( reading ( rr ) )
    END ;

    /* Verifie si le livre bb a été lu par le lecteur rr */
    resp <-- hasreadquery ( rr , bb ) =
    PRE rr : READER & bb : BOOK
    THEN
        IF bb : hasread [ { rr } ] /* le livre lu par rr est-il bien bb ? */
        THEN resp := yes
        ELSE resp := no
        END
    END
END
