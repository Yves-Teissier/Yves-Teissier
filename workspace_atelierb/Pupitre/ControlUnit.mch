/* ControlUnit
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    ControlUnit

SEES CTX
        
OPERATIONS

    new_state_pupitre <-- pupitre_next(state) =
    PRE state: STATE THEN
        new_state_pupitre :: NEXT[{state}]
    END;
    
    new_state_pv1 <-- panne_volontaire1_next(state) =
    PRE state : PANNE_VOLONTAIRE1 THEN
        new_state_pv1 :: PV1[{state}]
    END;
    
    new_state_pv2 <-- panne_volontaire2_next(state) =
    PRE state : PANNE_VOLONTAIRE2 THEN
        new_state_pv2 :: PV2[{state}]
    END;
    
    new_state_ext <-- ext_state_next(state) =
    PRE state : EXT_STATE THEN
        new_state_ext :: EXT_STATE
    END
END
