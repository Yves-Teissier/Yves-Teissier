/* MultRussian
 * Author: yves
 * Creation date: 08/03/2022
 */

MACHINE
    MultRussian
OPERATIONS
    total <-- Mult ( aa , bb ) =
               PRE aa : NAT & bb : NAT & aa * bb : NAT /* aa*bb:NAT garanti contre l'overflow. aa*bb est toujours NATURAL */
               THEN
                total := aa * bb
               END
END
