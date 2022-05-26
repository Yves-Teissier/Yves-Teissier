/* BooksV1
 * Author: yves
 * Creation date: 22/02/2022
 */
MACHINE           BooksV1

SETS              BOOK

VARIABLES         read

INVARIANT         read <: BOOK

INITIALISATION    read := {}

OPERATIONS

bb <-- newbook =
  PRE read /= BOOK
  THEN ANY tt 
       WHERE tt : BOOK - read 
       THEN bb := tt || read := read \/ {tt}
       END
  END

END
