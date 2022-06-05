#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include "CTX.h"
#include "Root_pupitre.h"

int main(void )
{

  CTX__STATE state = CTX__S0;
  CTX__STATE new_state;
  
  CTX__INITIALISATION();

  Root_pupitre__INITIALISATION();

  
  while(1) {
    Root_pupitre__run();
    
    sleep(0.1);
  }
  
  exit(0);
}
