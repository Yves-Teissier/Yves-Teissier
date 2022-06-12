/* PowerSupplyCtrl
 * Author: yves
 * Creation date: 06/06/2022
 */
MACHINE
    PowerSupplyCtrl

OPERATIONS
    isPowered <-- is_powered =
    BEGIN
        isPowered :: BOOL
    END ;

    current_u <-- getU =
    BEGIN
        current_u :: NAT
    END
END
