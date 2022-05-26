/* CTX
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    CTX
SETS
    STATE = { S_DEBUT , S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE , S_DIGICODE , S_ACCES_REFUSE , S_ACCESS_AUTORISE , S_PERTE_DE_TEMPS_1 , S_INCIDENT_NIVEAU_4 , S_RECHERCHE_INCIDENT_1 , S_INCIDENT_MAJEUR_1 , S_PROTOCOLE_ACCES_PROCEDURE_1 , S_MODE_AIDE_1 , S_ENIGME_CABLES_1 , S_INCIDENT_MAJEUR_RESOLU_1 , S_RECHERCHE_INCIDENT_2 , S_INCIDENT_MAJEUR_2 , S_PROTOCOLE_ACCES_PROCEDURE_2 , S_MODE_AIDE_2 , S_ENIGME_CABLES_2 , S_ENIGME_CABLES_2S2 , S_INCIDENT_MAJEUR_RESOLU_2 , S_RECHERCHE_INCIDENT_3 , S_INCIDENT_MAJEUR_3 , S_PROTOCOLE_ACCES_PROCEDURE_3 , S_MODE_AIDE_3 , S_ENIGME_ACTIVATION_BALANCE_3 , S_ENIGME_POST_ACTIVATION_BALANCE_3 , S_ENIGME_NIVEAU_DEAU , S_INCIDENT_RESOLU , S_GENERIC , S_BILAN_PARTIE } // Ensemble des états possibles.
ABSTRACT_CONSTANTS
    NEXT
CONCRETE_CONSTANTS
    S0
PROPERTIES
    NEXT : STATE <-> STATE & // Ensemble des relations de l'ensemble STATE dans l'ensemble STATE
    NEXT = { S_DEBUT                                |-> S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE , // NEXT est l'ensemble des couples x |-> y avec x,y élément de l'ensemble STATE
            S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE |-> S_DIGICODE ,
            S_DIGICODE                              |-> S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE ,
            S_DIGICODE                              |-> S_ACCES_REFUSE ,
            S_ACCES_REFUSE                          |-> S_DIGICODE ,
            S_DIGICODE                              |-> S_INCIDENT_NIVEAU_4 ,
            S_INCIDENT_NIVEAU_4                     |-> S_DIGICODE ,
            S_DIGICODE                              |-> S_PERTE_DE_TEMPS_1 ,
            S_PERTE_DE_TEMPS_1                      |-> S_INCIDENT_NIVEAU_4 ,
            S_DIGICODE                              |-> S_ACCESS_AUTORISE ,
            S_ACCESS_AUTORISE                       |-> S_RECHERCHE_INCIDENT_1 ,
            S_RECHERCHE_INCIDENT_1                  |-> S_INCIDENT_MAJEUR_1 ,
            S_INCIDENT_MAJEUR_1                     |-> S_PROTOCOLE_ACCES_PROCEDURE_1 ,
            S_PROTOCOLE_ACCES_PROCEDURE_1           |-> S_MODE_AIDE_1 ,
            S_MODE_AIDE_1                           |-> S_ENIGME_CABLES_1 ,
            S_ENIGME_CABLES_1                       |-> S_INCIDENT_MAJEUR_RESOLU_1 ,
            S_INCIDENT_MAJEUR_RESOLU_1              |-> S_RECHERCHE_INCIDENT_2 ,
            S_RECHERCHE_INCIDENT_2                  |-> S_INCIDENT_MAJEUR_2 ,
            S_INCIDENT_MAJEUR_2                     |-> S_PROTOCOLE_ACCES_PROCEDURE_2 ,
            S_PROTOCOLE_ACCES_PROCEDURE_2           |-> S_MODE_AIDE_2 ,
            S_MODE_AIDE_2                           |-> S_ENIGME_CABLES_2 ,
            S_ENIGME_CABLES_2                       |-> S_ENIGME_CABLES_2S2 ,
            S_ENIGME_CABLES_2S2                     |-> S_ENIGME_CABLES_2S2 ,
            S_ENIGME_CABLES_2S2                     |-> S_INCIDENT_MAJEUR_RESOLU_2 ,
            S_INCIDENT_MAJEUR_RESOLU_2              |-> S_RECHERCHE_INCIDENT_3 ,
            S_RECHERCHE_INCIDENT_3                  |-> S_INCIDENT_MAJEUR_3 ,
            S_INCIDENT_MAJEUR_3                     |-> S_PROTOCOLE_ACCES_PROCEDURE_3 ,
            S_PROTOCOLE_ACCES_PROCEDURE_3           |-> S_MODE_AIDE_3 ,
            S_MODE_AIDE_3                           |-> S_ENIGME_ACTIVATION_BALANCE_3 ,
            S_ENIGME_ACTIVATION_BALANCE_3           |-> S_ENIGME_POST_ACTIVATION_BALANCE_3 ,
            S_ENIGME_POST_ACTIVATION_BALANCE_3      |-> S_ENIGME_NIVEAU_DEAU ,
            S_ENIGME_NIVEAU_DEAU                    |-> S_INCIDENT_RESOLU ,
            S_INCIDENT_RESOLU                       |-> S_GENERIC ,
            S_GENERIC                               |-> S_BILAN_PARTIE ,
            S_BILAN_PARTIE                          |-> S_GENERIC ,
            S_GENERIC                               |-> S_DEBUT
    } &
    S0 : STATE
END
