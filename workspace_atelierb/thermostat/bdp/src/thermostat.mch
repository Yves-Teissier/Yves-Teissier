/* thermostat
 * Author: yves
 * Creation date: 21/11/2020
 */
MACHINE
    thermostat
SEES CTX

INCLUDES target , temperature , chaudiere , timer

//CONSTANTS 
//    gaz_duration, check_temperature_delay

//PROPERTIES
//    gaz_duration = 90 & check_temperature_delay = 350

ABSTRACT_VARIABLES
    target_val , temperature_val , gaz_duration , check_temperature_delay

INVARIANT
    target_val : NAT & temperature_val : NAT &
    gaz_duration : NAT & check_temperature_delay : NAT


INITIALISATION
    target_val :: NAT || temperature_val :: NAT ||
    gaz_duration :: NAT || check_temperature_delay :: NAT

OPERATIONS
    thermostat_set_context =
    BEGIN
        skip
    END ;

    new_state <-- thermostat_next ( state ) =
    PRE state : STATE THEN
        new_state :: NEXT [ { state } ] ||
        target_val :: NAT ||
        temperature_val :: NAT ||
        gaz_duration :: NAT ||
        check_temperature_delay :: NAT
    END
END
