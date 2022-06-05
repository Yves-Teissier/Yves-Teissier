/* WARNING if type checker is not performed, translation could contain errors ! */

#include "ControlUnit.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "httpServer.h"
#include "digicode.h"
#include "com_debug.h"
#include "incidentLMng.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t ControlUnit__debutRequest;
static int32_t ControlUnit__digicode_response;
static int32_t ControlUnit__IncidentMng_response;
static int32_t ControlUnit__pv1_response;
static int32_t ControlUnit__pv2_response;
static int32_t ControlUnit__ext_response;
/* Clause INITIALISATION */
void ControlUnit__INITIALISATION(void)
{
    
    com_debug__INITIALISATION();
    digicode__INITIALISATION();
    httpServer__INITIALISATION();
    incidentLMng__INITIALISATION();
    ControlUnit__debutRequest = 0;
    ControlUnit__digicode_response = 0;
    ControlUnit__IncidentMng_response = 0;
    ControlUnit__pv1_response = 0;
    ControlUnit__pv2_response = 0;
    ControlUnit__ext_response = 0;
}

/* Clause OPERATIONS */

void ControlUnit__pupitre_next(CTX__STATE state, CTX__STATE *new_state)
{
    if(state == CTX__S_IDLE)
    {
        (*new_state) = CTX__S_DEBUT;
    }
    else if(state == CTX__S_DEBUT)
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
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_DIGICODE;
        }
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
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_RECHERCHE_INCIDENT_1;
        }
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 2)
        {
            (*new_state) = CTX__S_INCIDENT_MAJEUR_1;
        }
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_1;
        }
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_MODE_AIDE_1;
        }
    }
    else if(state == CTX__S_MODE_AIDE_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_CABLES_1;
        }
    }
    else if(state == CTX__S_ENIGME_CABLES_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_INCIDENT_MAJEUR_RESOLU_1;
        }
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_1)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_RECHERCHE_INCIDENT_2;
        }
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 2)
        {
            (*new_state) = CTX__S_INCIDENT_MAJEUR_2;
        }
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_2;
        }
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_MODE_AIDE_2;
        }
    }
    else if(state == CTX__S_MODE_AIDE_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_CABLES_2;
        }
    }
    else if(state == CTX__S_ENIGME_CABLES_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_CABLES_2S2;
        }
    }
    else if(state == CTX__S_ENIGME_CABLES_2S2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_INCIDENT_MAJEUR_RESOLU_2;
        }
        else if(ControlUnit__IncidentMng_response == 4)
        {
            (*new_state) = CTX__S_ENIGME_CABLES_2S2;
        }
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_RESOLU_2)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_RECHERCHE_INCIDENT_3;
        }
    }
    else if(state == CTX__S_RECHERCHE_INCIDENT_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 2)
        {
            (*new_state) = CTX__S_INCIDENT_MAJEUR_3;
        }
    }
    else if(state == CTX__S_INCIDENT_MAJEUR_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_PROTOCOLE_ACCES_PROCEDURE_3;
        }
    }
    else if(state == CTX__S_PROTOCOLE_ACCES_PROCEDURE_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_MODE_AIDE_3;
        }
    }
    else if(state == CTX__S_MODE_AIDE_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_ACTIVATION_BALANCE_3;
        }
    }
    else if(state == CTX__S_ENIGME_ACTIVATION_BALANCE_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_POST_ACTIVATION_BALANCE_3;
        }
    }
    else if(state == CTX__S_ENIGME_POST_ACTIVATION_BALANCE_3)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 3)
        {
            (*new_state) = CTX__S_ENIGME_NIVEAU_DEAU;
        }
    }
    else if(state == CTX__S_ENIGME_NIVEAU_DEAU)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 5)
        {
            (*new_state) = CTX__S_INCIDENT_RESOLU;
        }
    }
    else if(state == CTX__S_INCIDENT_RESOLU)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 1)
        {
            (*new_state) = CTX__S_GENERIQUE;
        }
    }
    else if(state == CTX__S_GENERIQUE)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 7)
        {
            (*new_state) = CTX__S_BILAN_PARTIE;
        }
        else if(ControlUnit__IncidentMng_response == 8)
        {
            (*new_state) = CTX__S_DEBUT;
        }
    }
    else if(state == CTX__S_BILAN_PARTIE)
    {
        incidentLMng__IncidentMng_GetResponse(&ControlUnit__IncidentMng_response);
        if(ControlUnit__IncidentMng_response == 6)
        {
            (*new_state) = CTX__S_GENERIQUE;
        }
    }
    if(((*new_state)) != (state))
    {
        com_debug__debug_print_state(*new_state);
    }
}

void ControlUnit__panne_volontaire1_next(CTX__PANNE_VOLONTAIRE1 state, CTX__PANNE_VOLONTAIRE1 *new_state)
{
    incidentLMng__panne_volontaire1_response(&ControlUnit__pv1_response);
    if(state == CTX__S_PV1_IDLE)
    {
        if(ControlUnit__pv1_response == 1)
        {
            (*new_state) = CTX__S_ALERT_INCENDIE;
        }
    }
    else if(state == CTX__S_ALERT_INCENDIE)
    {
        if(ControlUnit__pv1_response == 2)
        {
            (*new_state) = CTX__S_DOUCHE_ACTIVEE;
        }
    }
    else if(state == CTX__S_DOUCHE_ACTIVEE)
    {
        if(ControlUnit__pv1_response == 3)
        {
            (*new_state) = CTX__S_PV1_IDLE;
        }
    }
}

void ControlUnit__panne_volontaire2_next(CTX__PANNE_VOLONTAIRE2 state, CTX__PANNE_VOLONTAIRE2 *new_state)
{
    incidentLMng__panne_volontaire2_response(&ControlUnit__pv2_response);
    if(state == CTX__S_PV2_IDLE)
    {
        if(ControlUnit__pv2_response == 1)
        {
            (*new_state) = CTX__S_APPEL_ENTRANT;
        }
    }
    else if(state == CTX__S_APPEL_ENTRANT)
    {
        if(ControlUnit__pv2_response == 2)
        {
            (*new_state) = CTX__S_APPEL_CLOTURE;
        }
    }
    else if(state == CTX__S_APPEL_CLOTURE)
    {
        if(ControlUnit__pv2_response == 3)
        {
            (*new_state) = CTX__S_PV2_IDLE;
        }
    }
}

void ControlUnit__ext_state_next(CTX__EXT_STATE state, CTX__EXT_STATE *new_state)
{
    incidentLMng__ext_state_response(&ControlUnit__ext_response);
    if(ControlUnit__ext_response == 0)
    {
        (*new_state) = CTX__S_EXT_IDLE;
    }
    else if(ControlUnit__ext_response == 1)
    {
        (*new_state) = CTX__S_PERTE_DE_TEMPS;
    }
    else if(ControlUnit__ext_response == 2)
    {
        (*new_state) = CTX__S_GAME_OVER_ERREUR;
    }
    else if(ControlUnit__ext_response == 3)
    {
        (*new_state) = CTX__S_GAME_OVER_TEMPS;
    }
}

