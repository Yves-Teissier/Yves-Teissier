/* digicode
 * Author: yves
 * Creation date: 24/05/2022
 */
MACHINE
    digicode

OPERATIONS
    response <-- digi_getResponse =
    BEGIN
        response :: NAT
    END

END
