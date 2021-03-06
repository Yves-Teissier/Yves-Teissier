/* CTX
 * Author: yves
 * Creation date: 06/06/2022
 */
MACHINE
    CTX

SETS
    RUNNING_STATE = { UNKNOWN, SLAVE, MASTER};
    MAIN_STATE = { ERROR, SHUTDOWN, OFF, ON };
    ON_STATE = { ON_IDLE, INITIALIZING, RUNNING }
    
   
ABSTRACT_CONSTANTS
    NEXT_RUNNING_STATE,
    NEXT_MAIN_STATE,
    NEXT_ON_STATE
    
CONCRETE_CONSTANTS
    U_MIN, 
    U_UNDER,
    U_OVER,
    U_HIGH,
    U_LOW
    
ABSTRACT_VARIABLES
    UNIT1_RS, UNIT2_RS,
    UNIT1_MS, UNIT2_MS,
    UNIT1_OS, UNIT2_OS
    
INVARIANT
    UNIT1_RS : RUNNING_STATE & UNIT2_RS : RUNNING_STATE & 
    UNIT1_MS : MAIN_STATE & UNIT2_MS : MAIN_STATE &
    UNIT1_OS : ON_STATE & UNIT2_OS : ON_STATE
    
PROPERTIES
    NEXT_RUNNING_STATE : RUNNING_STATE <-> RUNNING_STATE &
    NEXT_MAIN_STATE : MAIN_STATE <-> MAIN_STATE &
    NEXT_ON_STATE : ON_STATE <-> ON_STATE &
    NEXT_MAIN_STATE = {OFF      |-> ON,
                       SHUTDOWN |-> ON,
                       ON       |-> SHUTDOWN,
                       ERROR    |-> SHUTDOWN,
                       ON       |-> ERROR,
                       OFF      |-> OFF,
                       ON       |-> ON,
                       ERROR    |-> ERROR,
                       SHUTDOWN |-> SHUTDOWN
                    } &
    NEXT_ON_STATE = { INITIALIZING |-> RUNNING,
                      ON_IDLE      |-> INITIALIZING,
                      INITIALIZING |-> INITIALIZING,
                      ON_IDLE      |-> ON_IDLE,
                      RUNNING      |-> RUNNING
                    } &
    NEXT_RUNNING_STATE = { UNKNOWN |-> MASTER,
                           UNKNOWN |-> SLAVE,
                           SLAVE   |-> MASTER,
                           UNKNOWN |-> UNKNOWN,
                           MASTER  |-> MASTER,
                           SLAVE   |-> SLAVE} &
    U_MIN : NAT &
    U_UNDER : NAT &
    U_OVER : NAT &
    U_HIGH : NAT &
    U_LOW : NAT
    
INITIALISATION
    UNIT1_RS := UNKNOWN ||
    UNIT2_RS := UNKNOWN ||
    UNIT1_MS := OFF ||
    UNIT2_MS := OFF ||
    UNIT1_OS := ON_IDLE ||
    UNIT2_OS := ON_IDLE
END
