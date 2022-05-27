/* WARNING if type checker is not performed, translation could contain errors ! */

#include "ControlUnit.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "httpServer.h"
#include "digicode.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t ControlUnit__debutRequest;
static int32_t ControlUnit__digicode_response;
/* Clause INITIALISATION */
void ControlUnit__INITIALISATION(void)
{
    
    digicode__INITIALISATION();
    httpServer__INITIALISATION();
    ControlUnit__debutRequest = 0;
    ControlUnit__digicode_response = 0;
}

/* Clause OPERATIONS */

void ControlUnit__pupitre_next(CTX__STATE state, CTX__STATE *new_state)
{
    if(state == CTX__S_DEBUT)
    {
        httpServer__httpServer_get_debut_request(&ControlUnit__debutRequest);
        if(ControlUnit__debutRequest == 1)
        {
            (*new_state) = CTX__S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE;
            ControlUnit__debutRequest = 0;
        }
    }
    else if(state == CTX__S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE)
    {
        (*new_state) = CTX__S_DIGICODE;
    }
    else if(state == CTX__S_DIGICODE)
    {
        digicode__digi_getResponse(&ControlUnit__digicode_response);
        if(ControlUnit__digicode_response == 0)
        {
            (*new_state) = CTX__S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE;
        }
        else if(ControlUnit__digicode_response == 1)
        {
            (*new_state) = CTX__S_ACCES_REFUSE;
        }
        else if(ControlUnit__digicode_response == 2)
        {
            (*new_state) = CTX__S_INCIDENT_NIVEAU_4;
        }
        else if(ControlUnit__digicode_response == 3)
        {
            (*new_state) = CTX__S_PERTE_DE_TEMPS_1;
        }
        else if(ControlUnit__digicode_response == 4)
        {
            (*new_state) = CTX__S_ACCESS_AUTORISE;
        }
    }
    else if(state == CTX__S_ACCES_REFUSE)
    {
        (*new_state) = CTX__S_DIGICODE;
    }
    else if(state == CTX__S_INCIDENT_NIVEAU_4)
    {
        (*new_state) = CTX__S_DIGICODE;
    }
    else if(state == CTX__S_PERTE_DE_TEMPS_1)
    {
        (*new_state) = CTX__S_INCIDENT_NIVEAU_4;
    }
    else if(state == CTX__S_ACCESS_AUTORISE)
    {
        (*new_state) = CTX__S_RECHERCHE_INCIDENT_1;
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_1)
    {
        (*new_state) = CTX__S_INCIDENT_MAJEUR_1;
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_1)
    {
        (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_1;
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_1)
    {
        (*new_state) = CTX__S_MODE_AIDE_1;
    }
    else if(state == CTX__S_MODE_AIDE_1)
    {
        (*new_state) = CTX__S_ENIGME_CABLES_1;
    }
    else if(state == CTX__S_ENIGME_CABLES_1)
    {
        (*new_state) = CTX__S_INCIDENT_MAJEUR_RESOLU_1;
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_1)
    {
        (*new_state) = CTX__S_RECHERCHE_INCIDENT_2;
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_2)
    {
        (*new_state) = CTX__S_INCIDENT_MAJEUR_2;
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_2)
    {
        (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_2;
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_2)
    {
        (*new_state) = CTX__S_MODE_AIDE_2;
    }
    else if(state == CTX__S_MODE_AIDE_2)
    {
        (*new_state) = CTX__S_ENIGME_CABLES_2;
    }
    else if(state == CTX__S_ENIGME_CABLES_2)
    {
        (*new_state) = CTX__S_ENIGME_CABLES_2S2;
    }
    else if(state == CTX__S_ENIGME_CABLES_2S2)
    {
        (*new_state) = CTX__S_INCIDENT_MAJEUR_RESOLU_2;
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_2)
    {
        (*new_state) = CTX__S_RECHERCHE_INCIDENT_3;
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_3)
    {
        (*new_state) = CTX__S_INCIDENT_MAJEUR_3;
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_3)
    {
        (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_3;
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_3)
    {
        (*new_state) = CTX__S_MODE_AIDE_3;
    }
    else if(state == CTX__S_MODE_AIDE_3)
    {
        (*new_state) = CTX__S_ENIGME_ACTIVATION_BALANCE_3;
    }
    else if(state == CTX__S_ENIGME_ACTIVATION_BALANCE_3)
    {
        (*new_state) = CTX__S_ENIGME_POST_ACTIVATION_BALANCE_3;
    }
    else if(state == CTX__S_ENIGME_POST_ACTIVATION_BALANCE_3)
    {
        (*new_state) = CTX__S_ENIGME_NIVEAU_DEAU;
    }
    else if(state == CTX__S_ENIGME_NIVEAU_DEAU)
    {
        (*new_state) = CTX__S_INCIDENT_RESOLU;
    }
    else if(state == CTX__S_INCIDENT_RESOLU)
    {
        (*new_state) = CTX__S_GENERIQUE;
    }
    else if(state == CTX__S_GENERIQUE)
    {
        (*new_state) = CTX__S_BILAN_PARTIE;
    }
    else if(state == CTX__S_BILAN_PARTIE)
    {
        (*new_state) = CTX__S_DEBUT;
    }
}

