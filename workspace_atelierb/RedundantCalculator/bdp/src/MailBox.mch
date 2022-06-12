/* MailBox
 * Author: yves
 * Creation date: 06/06/2022
 */
MACHINE
    MailBox

SEES
    CTX

OPERATIONS

    resp_cu1_main_state <-- mb_get_cu1_main_state =
    BEGIN
        resp_cu1_main_state :: MAIN_STATE
    END ;

    resp_cu2_main_state <-- mb_get_cu2_main_state =
    BEGIN
        resp_cu2_main_state :: MAIN_STATE
    END ;

    current_u <-- mb_getCurrentU =
    BEGIN
        current_u :: NAT
    END ;

    cu1_error <-- mb_getCU1Error =
    BEGIN
        cu1_error :: BOOL
    END ;

    cu2_error <-- mb_getCU2Error =
    BEGIN
        cu2_error :: BOOL
    END ;

    mb_set_on_state ( state , cu ) =
    PRE state : ON_STATE & cu : NAT THEN
        skip
    END ;

    mb_set_running_state ( state , cu ) =
    PRE state : RUNNING_STATE & cu : NAT THEN
        skip
    END ;

    mb_set_main_state ( state , cu ) =
    PRE state : MAIN_STATE & cu : NAT THEN
        skip
    END
END
