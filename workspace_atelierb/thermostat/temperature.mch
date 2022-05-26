/* temperature
 * Author: yves
 * Creation date: 21/11/2020
 */
MACHINE
    temperature

OPERATIONS
    new_temperature <-- temperature_get_temperature =
    BEGIN
        new_temperature :: NAT
    END

END