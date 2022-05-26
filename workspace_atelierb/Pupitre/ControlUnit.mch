/* ControlUnit
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    ControlUnit

SEES CTX

//INCLUDES target, temperature, chaudiere, timer

//VARIABLES
//    target_val, temperature_val, gaz_duration, check_temperature_delay
    
//INVARIANT
 //   target_val : NAT & temperature_val : NAT & 
  //  gaz_duration : NAT & check_temperature_delay : NAT

    
//INITIALISATION
//    target_val :: NAT || temperature_val :: NAT ||
 //   gaz_duration :: NAT || check_temperature_delay :: NAT
    
OPERATIONS
    //thermostat_set_context =
    //BEGIN
    //    skip
    //END;
    
    new_state <-- pupitre_next(state) =
    PRE state: STATE THEN
        new_state :: NEXT[{state}]
    END
END
