/* timer
 * Author: yves
 * Creation date: 21/11/2020
 */
MACHINE
    timer

VARIABLES
    delay
    
INVARIANT
    delay : NAT
    
INITIALISATION
    delay :: NAT
    
OPERATIONS
    timer_wait(aDelay) =
    PRE aDelay : NAT THEN
        skip
    END
END