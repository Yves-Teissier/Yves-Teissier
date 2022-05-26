/* race
 * Author: yves
 * Creation date: 31/01/2022
 */
MACHINE
    race

SETS
    CAR
    
VARIABLES
    finish

INVARIANT
    finish : iseq(CAR) /* suite injective. pas de répétition */

INITIALISATION
    finish := <> /* suite vide */
    
OPERATIONS
    finished(rr) =
        PRE rr : CAR & rr /:ran(finish) /* rr n'appartient pas à la suite finish */
        THEN finish := finish <- rr /* rr est ajouté à la queue de la suite */
        END;
    
    rr <-- query(pp) =
    PRE pp : NAT1 & pp <= size(finish) 
    THEN rr := finish(pp) /* retourne le pp ieme élément de la suite */
    END;
    
    disquality(pp) =
    PRE pp : NAT1 & pp <= size(finish)
    THEN finish := (finish /|\ pp-1) ^ (finish \|/ pp) /* concaténation des pp-1 ieme premiers (restriction de la suite à la tete) et des desniers jusqu'à pp (restriction de la suite à la queue) */
    END;
    
    ss <-- medals =
    PRE size(finish) <= 3
    THEN ss := finish /|\ 3 /* restriction de la suite à la tete pour 3 éléments */
    END       


END
