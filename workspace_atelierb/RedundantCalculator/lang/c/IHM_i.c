/* WARNING if type checker is not performed, translation could contain errors ! */

#include <stdio.h>
#include "IHM.h"

/* Clause SEES */
#include "CTX.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void IHM__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void IHM__print_on_state(CTX__ON_STATE state, int32_t cu)
{
  if (state == CTX__ON_IDLE)
    printf("ON state = CTX__ON_IDLE\tCU = %d\n", cu);
  else if (state == CTX__INITIALIZING)
    printf("ON state = CTX__INITIALIZING\tCU = %d\n", cu);
  else if (state == CTX__RUNNING)
    printf("ON state = CTX__RUNNING\tCU = %d\n", cu);
  else
    printf("Unkonwn on state\n");
}

void IHM__print_running_state(CTX__RUNNING_STATE state, int32_t cu)
{
  if (state == CTX__MASTER)
    printf("RUNNING state = CTX__MASTER\tCU = %d\n", cu);
  else if (state == CTX__SLAVE)
    printf("RUNNING state = CTX__SLAVE\tCU = %d\n", cu);
  else if (state == CTX__UNKNOWN)
    printf("RUNNING state = CTX__UNKNOWN\tCU = %d\n", cu);
  else
    printf("Unkonwn running state\n");
}

void IHM__print_main_state(CTX__MAIN_STATE state, int32_t cu)
{
  if (state == CTX__ERROR)
    printf("MAIN state = CTX__ERROR\tCU = %d\n", cu);
  else if (state == CTX__ON)
    printf("MAIN state = CTX__ON\tCU = %d\n", cu);
  else if (state == CTX__OFF)
    printf("MAIN state = CTX__OFF\tCU = %d\n", cu);
  else if (state == CTX__SHUTDOWN)
    printf("MAIN state = CTX__SHUTDOWN\tCU = %d\n", cu);
  else
    printf("Unkonwn running state\n");  
}

