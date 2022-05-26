/* MultRussian
 * Author: yves
 * Creation date: 08/03/2022
 */

MACHINE
    MultRussian
OPERATIONS
    total <-- Mult ( aa , bb ) =
               PRE aa : NAT & bb : NAT & aa * bb : NAT
               THEN
                total := aa * bb
               END
END
