/* IHM
 * Author: yves
 * Creation date: 26/06/2022
 */
MACHINE
    IHM

SEES
    CTX

OPERATIONS
    print_on_state ( state , cu ) =
    PRE state : ON_STATE & cu : NAT THEN
        skip
    END ;

    print_running_state ( state , cu ) =
    PRE state : RUNNING_STATE & cu : NAT THEN
        skip
    END ;

    print_main_state ( state , cu ) =
    PRE state : MAIN_STATE & cu : NAT THEN
        skip
    END
END
