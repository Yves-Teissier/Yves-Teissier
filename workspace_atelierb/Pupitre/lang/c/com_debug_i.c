/* WARNING if type checker is not performed, translation could contain errors ! */

#include <stdio.h>
#include "com_debug.h"

/* Clause SEES */
#include "CTX.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void com_debug__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void com_debug__debug_print_state(CTX__STATE state)
{
    if(state == CTX__S_DEBUT)
    {
      printf("S_DEBUT\n");
    }
    else if(state == CTX__S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE)
      {
	printf("S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE\n");
      }
    else if(state == CTX__S_DIGICODE)
      {
	printf("S_DIGICODE\n");
      }
    else if(state == CTX__S_ACCES_REFUSE)
      {
	printf("S_ACCES_REFUSE\n");
      }
    else if(state == CTX__S_ACCESS_AUTORISE)
      {
	printf("S_ACCESS_AUTORISE\n");
      }
    else if(state == CTX__S_PERTE_DE_TEMPS_1)
      {
	printf("S_PERTE_DE_TEMPS_1\n");
      }
    else if(state == CTX__S_INCIDENT_NIVEAU_4)
      {
	printf("S_INCIDENT_NIVEAU_4\n");
      }
    else if(state == CTX__S_RECHERCHE_INCIDENT_1)
      {
	printf("S_RECHERCHE_INCIDENT_1\n");
      }
    else if(state == CTX__S_INCIDENT_MAJEUR_1)
      {
	printf("S_INCIDENT_MAJEUR_1\n");
      }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_1)
      {
	printf("S_PROTOCOLE_ACCES_PROCEDURE_1\n");
      }
    else if(state == CTX__S_MODE_AIDE_1)
      {
	printf("S_MODE_AIDE_1\n");
      }
    else if(state == CTX__S_ENIGME_CABLES_1)
      {
	printf("S_ENIGME_CABLES_1\n");
      }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_1)
      {
	printf("S_INCIDENT_MAJEUR_RESOLU_1\n");
      }
    else if(state == CTX__S_RECHERCHE_INCIDENT_2)
      {
	printf("S_RECHERCHE_INCIDENT_2\n");
      }
    else if(state == CTX__S_INCIDENT_MAJEUR_2)
      {
	printf("S_INCIDENT_MAJEUR_2\n");
      }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_2)
      {
	printf("S_PROTOCOLE_ACCES_PROCEDURE_2\n");
      }
    else if(state == CTX__S_MODE_AIDE_2)
      {
	printf("S_MODE_AIDE_2\n");
      }
    else if(state == CTX__S_ENIGME_CABLES_2)
      {
	printf("S_ENIGME_CABLES_2\n");
      }
    else if(state == CTX__S_ENIGME_CABLES_2S2)
      {
	printf("S_ENIGME_CABLES_2S2\n");
      }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_2)
      {
	printf("S_INCIDENT_MAJEUR_RESOLU_2\n");
      }
    else if(state == CTX__S_RECHERCHE_INCIDENT_3)
      {
	printf("S_RECHERCHE_INCIDENT_3\n");
      }
    else if(state == CTX__S_INCIDENT_MAJEUR_3)
      {
	printf("S_INCIDENT_MAJEUR_3\n");
      }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_3)
      {
	printf("S_PROTOCOLE_ACCES_PROCEDURE_3\n");
      }
    else if(state == CTX__S_MODE_AIDE_3)
      {
	printf("S_MODE_AIDE_3\n");
      }
    else if(state == CTX__S_ENIGME_ACTIVATION_BALANCE_3)
      {
	printf("S_ENIGME_ACTIVATION_BALANCE_3\n");
      }
    else if(state == CTX__S_ENIGME_POST_ACTIVATION_BALANCE_3)
      {
	printf("S_ENIGME_POST_ACTIVATION_BALANCE_3\n");
      }
    else if(state == CTX__S_ENIGME_NIVEAU_DEAU)
      {
	printf("S_ENIGME_NIVEAU_DEAU\n");
      }
    else if(state == CTX__S_INCIDENT_RESOLU)
      {
	printf("S_INCIDENT_RESOLU\n");
      }
    else if(state == CTX__S_GENERIQUE)
      {
	printf("S_GENERIQUE\n");
      }
    else if(state == CTX__S_BILAN_PARTIE)
      {
	printf("S_BILAN_PARTIE\n");
      }
    else
      printf("ERROR Unkown state\n");
}

