/* WARNING if type checker is not performed, translation could contain errors ! */

#include <stdio.h>
#include "digicode.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void digicode__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void digicode__digi_getResponse(int32_t *response)
{
  printf("0 = pb_annuler\n");
  printf("1 = pb_saisirCode\n");
  printf("2 = erreurCodeApresDernierEssai\n");
  printf("3 = erreurCodeDernierEssai\n");
  printf("4 = codeBon\n");
  printf("Saisie code [0,1,2,3,4] ? = ");
  fflush( stdout );
  scanf("%d", response);
  
  //    (*response) = 0;
}

