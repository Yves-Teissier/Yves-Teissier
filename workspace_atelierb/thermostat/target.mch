/* target
 * Author: yves
 * Creation date: 21/11/2020
 */
MACHINE
    target

  
OPERATIONS
    ret_target <-- target_get_target =
    BEGIN
        ret_target :: NAT
    END
END