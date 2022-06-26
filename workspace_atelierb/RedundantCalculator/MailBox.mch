/* MailBox
 * Author: yves
 * Creation date: 06/06/2022
 */
MACHINE
    MailBox

SEES 
    CTX
    
   
OPERATIONS
    
    resp_cu_main_state <-- mb_get_cu_main_state(level, cu) =
    PRE level : NAT & cu : NAT THEN
        resp_cu_main_state :: MAIN_STATE
    END;
    
    resp_cu_on_state <-- mb_get_cu_on_state(level, cu) =
    PRE level : NAT & cu : NAT THEN
        resp_cu_on_state :: ON_STATE
    END;
    
    resp_cu_running_state <-- mb_get_cu_running_state(level, cu) =
    PRE level : NAT & cu : NAT THEN
        resp_cu_running_state :: RUNNING_STATE
    END;
   
    resp_current_u <-- mb_getCurrentU =
    BEGIN
        resp_current_u :: NAT
    END;
    
    resp_cu1_error <-- mb_getCU1Error =
    BEGIN
        resp_cu1_error :: BOOL
    END;
    
    resp_cu2_error <-- mb_getCU2Error =
    BEGIN
        resp_cu2_error :: BOOL
    END;
    
    mb_set_on_state(state, cu) =
    PRE state : ON_STATE & cu : NAT THEN
        skip
    END;
    
    mb_set_running_state(state, cu) =
    PRE state : RUNNING_STATE & cu : NAT THEN
        skip
    END;
    
    mb_set_main_state(state, cu) =
    PRE state : MAIN_STATE & cu : NAT THEN
        skip
    END
END
