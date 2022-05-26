/* WARNING if type checker is not performed, translation could contain errors ! */

#include "temperature.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void temperature__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void temperature__temperature_get_temperature(int32_t *new_temperature)
{
    (*new_temperature) = 1900;
}

