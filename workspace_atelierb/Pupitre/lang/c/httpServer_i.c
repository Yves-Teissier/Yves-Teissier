/* WARNING if type checker is not performed, translation could contain errors ! */

#include <stdio.h>

#include "httpServer.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void httpServer__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void httpServer__handleRequest(void)
{
    ;
}

void httpServer__httpServer_get_debut_request(int32_t *debutRequest)
{
  printf("Http debut resquest [0,1] ? = ");
  fflush( stdout );
  scanf("%d", debutRequest);
  //    (*debutRequest) = 0;
}

