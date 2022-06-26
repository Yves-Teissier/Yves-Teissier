#include <stdio.h>
#include "Main.h"

int main(void)
{

  Main__INITIALISATION();

  while (1) {
	  Main__run();

	  sleep(1);

  }
  

  return 0;
}
