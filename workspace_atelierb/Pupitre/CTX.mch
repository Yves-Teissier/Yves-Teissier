/* CTX
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    CTX
SETS
    STATE = {S_IDLE, S_DEBUT, S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE, S_DIGICODE, S_ACCES_REFUSE, S_ACCESS_AUTORISE, S_PERTE_DE_TEMPS_1, S_INCIDENT_NIVEAU_4, S_RECHERCHE_INCIDENT_1, S_INCIDENT_MAJEUR_1,       S_PROTOCOLE_ACCES_PROCEDURE_1, S_MODE_AIDE_1, S_ENIGME_CABLES_1, S_INCIDENT_MAJEUR_RESOLU_1, S_RECHERCHE_INCIDENT_2, S_INCIDENT_MAJEUR_2, S_PROTOCOLE_ACCES_PROCEDURE_2, S_MODE_AIDE_2, S_ENIGME_CABLES_2, S_ENIGME_CABLES_2S2, S_INCIDENT_MAJEUR_RESOLU_2, S_RECHERCHE_INCIDENT_3, S_INCIDENT_MAJEUR_3, S_PROTOCOLE_ACCES_PROCEDURE_3, S_MODE_AIDE_3, S_ENIGME_ACTIVATION_BALANCE_3, S_ENIGME_POST_ACTIVATION_BALANCE_3, S_ENIGME_NIVEAU_DEAU, S_INCIDENT_RESOLU, S_GENERIQUE, S_BILAN_PARTIE}; // Ensemble des états possibles.
    PANNE_VOLONTAIRE2 = { S_PV2_IDLE, S_APPEL_ENTRANT, S_APPEL_CLOTURE };
    PANNE_VOLONTAIRE1 = { S_PV1_IDLE, S_ALERT_INCENDIE, S_DOUCHE_ACTIVEE };
    EXT_STATE  = { S_EXT_IDLE, S_PERTE_DE_TEMPS, S_GAME_OVER_TEMPS, S_GAME_OVER_ERREUR }
    
ABSTRACT_CONSTANTS
    NEXT, PV1, PV2
CONCRETE_CONSTANTS
    S0
PROPERTIES
    NEXT : STATE <-> STATE & // Ensemble des relations de l'ensemble STATE dans l'ensemble STATE
    PV1 : PANNE_VOLONTAIRE1 <-> PANNE_VOLONTAIRE1 &
    PV2 : PANNE_VOLONTAIRE2 <-> PANNE_VOLONTAIRE2 &
    NEXT = {S_IDLE                                  |-> S_DEBUT,
            S_DEBUT                                 |-> S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE, // NEXT est l'ensemble des couples x |-> y avec x,y élément de l'ensemble STATE
            S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE |-> S_DIGICODE,
            S_DIGICODE                              |-> S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,
            S_DIGICODE                              |-> S_ACCES_REFUSE,
            S_ACCES_REFUSE                          |-> S_DIGICODE,
            S_DIGICODE                              |-> S_INCIDENT_NIVEAU_4,
            S_INCIDENT_NIVEAU_4                     |-> S_DIGICODE,
            S_DIGICODE                              |-> S_PERTE_DE_TEMPS_1,
            S_PERTE_DE_TEMPS_1                      |-> S_INCIDENT_NIVEAU_4,
            S_DIGICODE                              |-> S_ACCESS_AUTORISE,
            S_ACCESS_AUTORISE                       |-> S_RECHERCHE_INCIDENT_1,
            S_RECHERCHE_INCIDENT_1                  |-> S_INCIDENT_MAJEUR_1,
            S_INCIDENT_MAJEUR_1                     |-> S_PROTOCOLE_ACCES_PROCEDURE_1,
            S_PROTOCOLE_ACCES_PROCEDURE_1           |-> S_MODE_AIDE_1,
            S_MODE_AIDE_1                           |-> S_ENIGME_CABLES_1,
            S_ENIGME_CABLES_1                       |-> S_INCIDENT_MAJEUR_RESOLU_1,
            S_INCIDENT_MAJEUR_RESOLU_1              |-> S_RECHERCHE_INCIDENT_2,
            S_RECHERCHE_INCIDENT_2                  |-> S_INCIDENT_MAJEUR_2,
            S_INCIDENT_MAJEUR_2                     |-> S_PROTOCOLE_ACCES_PROCEDURE_2,
            S_PROTOCOLE_ACCES_PROCEDURE_2           |-> S_MODE_AIDE_2,
            S_MODE_AIDE_2                           |-> S_ENIGME_CABLES_2,
            S_ENIGME_CABLES_2                       |-> S_ENIGME_CABLES_2S2,
            S_ENIGME_CABLES_2S2                     |-> S_ENIGME_CABLES_2S2,
            S_ENIGME_CABLES_2S2                     |-> S_INCIDENT_MAJEUR_RESOLU_2,
            S_INCIDENT_MAJEUR_RESOLU_2              |-> S_RECHERCHE_INCIDENT_3,
            S_RECHERCHE_INCIDENT_3                  |-> S_INCIDENT_MAJEUR_3,
            S_INCIDENT_MAJEUR_3                     |-> S_PROTOCOLE_ACCES_PROCEDURE_3,
            S_PROTOCOLE_ACCES_PROCEDURE_3           |-> S_MODE_AIDE_3,
            S_MODE_AIDE_3                           |-> S_ENIGME_ACTIVATION_BALANCE_3,
            S_ENIGME_ACTIVATION_BALANCE_3           |-> S_ENIGME_POST_ACTIVATION_BALANCE_3,
            S_ENIGME_POST_ACTIVATION_BALANCE_3      |-> S_ENIGME_NIVEAU_DEAU,
            S_ENIGME_NIVEAU_DEAU                    |-> S_INCIDENT_RESOLU,
            S_INCIDENT_RESOLU                       |-> S_GENERIQUE,
            S_GENERIQUE                             |-> S_BILAN_PARTIE,
            S_BILAN_PARTIE                          |-> S_GENERIQUE,
            S_GENERIQUE                             |-> S_DEBUT,
            // State to state tuples
            S_IDLE                                  |-> S_IDLE, 
            S_DEBUT                                 |-> S_DEBUT,
            S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE |-> S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,
            S_DIGICODE                              |-> S_DIGICODE, 
            S_ACCES_REFUSE                          |-> S_ACCES_REFUSE,
            S_ACCESS_AUTORISE                       |-> S_ACCESS_AUTORISE,
            S_PERTE_DE_TEMPS_1                      |-> S_PERTE_DE_TEMPS_1,
            S_INCIDENT_NIVEAU_4                     |-> S_INCIDENT_NIVEAU_4,
            S_RECHERCHE_INCIDENT_1                  |-> S_RECHERCHE_INCIDENT_1,
            S_INCIDENT_MAJEUR_1                     |-> S_INCIDENT_MAJEUR_1,
            S_PROTOCOLE_ACCES_PROCEDURE_1           |-> S_PROTOCOLE_ACCES_PROCEDURE_1,
            S_MODE_AIDE_1                           |-> S_MODE_AIDE_1, 
            S_ENIGME_CABLES_1                       |-> S_ENIGME_CABLES_1, 
            S_INCIDENT_MAJEUR_RESOLU_1              |-> S_INCIDENT_MAJEUR_RESOLU_1, 
            S_RECHERCHE_INCIDENT_2                  |-> S_RECHERCHE_INCIDENT_2, 
            S_INCIDENT_MAJEUR_2                     |-> S_INCIDENT_MAJEUR_2, 
            S_PROTOCOLE_ACCES_PROCEDURE_2           |-> S_PROTOCOLE_ACCES_PROCEDURE_2,
            S_MODE_AIDE_2                           |-> S_MODE_AIDE_2,
            S_ENIGME_CABLES_2                       |-> S_ENIGME_CABLES_2,
            S_ENIGME_CABLES_2S2                     |-> S_ENIGME_CABLES_2S2,
            S_INCIDENT_MAJEUR_RESOLU_2              |-> S_INCIDENT_MAJEUR_RESOLU_2,
            S_RECHERCHE_INCIDENT_3                  |-> S_RECHERCHE_INCIDENT_3, 
            S_INCIDENT_MAJEUR_3                     |-> S_INCIDENT_MAJEUR_3,
            S_PROTOCOLE_ACCES_PROCEDURE_3           |-> S_PROTOCOLE_ACCES_PROCEDURE_3, 
            S_MODE_AIDE_3                           |-> S_MODE_AIDE_3,
            S_ENIGME_ACTIVATION_BALANCE_3           |-> S_ENIGME_ACTIVATION_BALANCE_3, 
            S_ENIGME_POST_ACTIVATION_BALANCE_3      |-> S_ENIGME_POST_ACTIVATION_BALANCE_3, 
            S_ENIGME_NIVEAU_DEAU                    |-> S_ENIGME_NIVEAU_DEAU,
            S_INCIDENT_RESOLU                       |-> S_INCIDENT_RESOLU,
            S_GENERIQUE                             |-> S_GENERIQUE,
            S_BILAN_PARTIE                          |-> S_BILAN_PARTIE
    } &
    PV1 = { S_PV1_IDLE                               |-> S_ALERT_INCENDIE,
            S_ALERT_INCENDIE                         |-> S_DOUCHE_ACTIVEE,
            S_DOUCHE_ACTIVEE                         |-> S_PV1_IDLE,
            S_PV1_IDLE                               |-> S_PV1_IDLE,
            S_ALERT_INCENDIE                         |-> S_ALERT_INCENDIE,
            S_DOUCHE_ACTIVEE                         |-> S_DOUCHE_ACTIVEE
      } &
    PV2 = {   S_PV2_IDLE                             |-> S_APPEL_ENTRANT,
              S_APPEL_ENTRANT                        |-> S_APPEL_CLOTURE,
              S_APPEL_CLOTURE                        |-> S_PV2_IDLE,
              S_PV2_IDLE                             |-> S_PV2_IDLE,
              S_APPEL_ENTRANT                        |-> S_APPEL_ENTRANT,
              S_APPEL_CLOTURE                        |-> S_APPEL_CLOTURE
          } &
    S0: STATE
END
