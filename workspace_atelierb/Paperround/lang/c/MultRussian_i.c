/* WARNING if type checker is not performed, translation could contain errors ! */

#include "MultRussian.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void MultRussian__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void MultRussian__Mult(int32_t aa, int32_t bb, int32_t *total)
{
    int32_t xx;
    int32_t yy;
    
    xx = aa;
    yy = bb;
    (*total) = 0;
    while((xx) != (0))
    {
        {
            int32_t rest;
            
            rest = xx % 2;
            if((rest == 1))
            {
                (*total) = (*total)+yy;
            }
        }
        xx = xx / 2;
        yy = yy * 2;
    }
}

