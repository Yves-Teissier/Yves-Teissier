/* BooksV2_r_ProB
 * Author: yves
 * Creation date: 22/02/2022
 */
MACHINE
    BooksV2_r_ProB

EXTENDS BooksR

CONSTANTS 
    /* BOOK */
    DOM_QUIXOTE, ULYSSES, THE_ODISSEY, HAMLET, THE_DIVINE_COMEDY
    
PROPERTIES
    /* BOOK */
    DOM_QUIXOTE:BOOK & ULYSSES:BOOK & THE_ODISSEY:BOOK
        & HAMLET:BOOK & THE_DIVINE_COMEDY:BOOK 
        & BOOK = {DOM_QUIXOTE, ULYSSES, 
                    THE_ODISSEY, HAMLET, 
                    THE_DIVINE_COMEDY} 
        & card(BOOK) = 5
        
END
