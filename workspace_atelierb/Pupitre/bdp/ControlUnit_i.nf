Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(ControlUnit_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(ControlUnit_i))==(Machine(ControlUnit));
  Level(Implementation(ControlUnit_i))==(1);
  Upper_Level(Implementation(ControlUnit_i))==(Machine(ControlUnit))
END
&
THEORY LoadedStructureX IS
  Implementation(ControlUnit_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(ControlUnit_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(ControlUnit_i))==(httpServer,digicode);
  Inherited_List_Includes(Implementation(ControlUnit_i))==(digicode,httpServer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(ControlUnit_i))==(?);
  Context_List_Variables(Implementation(ControlUnit_i))==(?);
  Abstract_List_Variables(Implementation(ControlUnit_i))==(?);
  Local_List_Variables(Implementation(ControlUnit_i))==(?);
  List_Variables(Implementation(ControlUnit_i))==(?);
  External_List_Variables(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(ControlUnit_i))==(?);
  Abstract_List_VisibleVariables(Implementation(ControlUnit_i))==(?);
  External_List_VisibleVariables(Implementation(ControlUnit_i))==(?);
  Expanded_List_VisibleVariables(Implementation(ControlUnit_i))==(?);
  List_VisibleVariables(Implementation(ControlUnit_i))==(digicode_response,debutRequest);
  Internal_List_VisibleVariables(Implementation(ControlUnit_i))==(digicode_response,debutRequest)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(ControlUnit_i))==(btrue);
  Abstract_List_Invariant(Implementation(ControlUnit_i))==(btrue);
  Expanded_List_Invariant(Implementation(ControlUnit_i))==(btrue);
  Context_List_Invariant(Implementation(ControlUnit_i))==(btrue);
  List_Invariant(Implementation(ControlUnit_i))==(debutRequest: NAT & digicode_response: NAT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(ControlUnit_i))==(btrue);
  Expanded_List_Assertions(Implementation(ControlUnit_i))==(btrue);
  Context_List_Assertions(Implementation(ControlUnit_i))==(btrue);
  List_Assertions(Implementation(ControlUnit_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(ControlUnit_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(ControlUnit_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(ControlUnit_i))==((0: INT | debutRequest:=0);(0: INT | digicode_response:=0));
  Context_List_Initialisation(Implementation(ControlUnit_i))==(skip);
  List_Initialisation(Implementation(ControlUnit_i))==(debutRequest:=0;digicode_response:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(ControlUnit_i),Machine(httpServer))==(?);
  List_Instanciated_Parameters(Implementation(ControlUnit_i),Machine(digicode))==(?);
  List_Instanciated_Parameters(Implementation(ControlUnit_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(ControlUnit_i),Machine(digicode))==(btrue);
  List_Constraints(Implementation(ControlUnit_i))==(btrue);
  List_Context_Constraints(Implementation(ControlUnit_i))==(btrue);
  List_Constraints(Implementation(ControlUnit_i),Machine(httpServer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(ControlUnit_i))==(pupitre_next);
  List_Operations(Implementation(ControlUnit_i))==(pupitre_next)
END
&
THEORY ListInputX IS
  List_Input(Implementation(ControlUnit_i),pupitre_next)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(ControlUnit_i),pupitre_next)==(new_state)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(ControlUnit_i),pupitre_next)==(new_state <-- pupitre_next(state))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(ControlUnit_i),pupitre_next)==(btrue);
  List_Precondition(Implementation(ControlUnit_i),pupitre_next)==(state: STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(ControlUnit_i),pupitre_next)==(state: STATE | state = S_DEBUT ==> ((btrue | @(debutRequest$0).(debutRequest$0: NAT ==> debutRequest:=debutRequest$0));(debutRequest = 1 ==> (new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE;(0: INT | debutRequest:=0)) [] not(debutRequest = 1) ==> skip)) [] not(state = S_DEBUT) ==> skip;(state = S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE ==> new_state:=S_DIGICODE [] not(state = S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE) ==> skip);(state = S_DIGICODE ==> ((btrue | @(response$0).(response$0: NAT ==> digicode_response:=response$0));(digicode_response = 0 ==> new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE [] not(digicode_response = 0) ==> skip);(digicode_response = 1 ==> new_state:=S_ACCES_REFUSE [] not(digicode_response = 1) ==> skip);(digicode_response = 2 ==> new_state:=S_INCIDENT_NIVEAU_4 [] not(digicode_response = 2) ==> skip);(digicode_response = 3 ==> new_state:=S_PERTE_DE_TEMPS_1 [] not(digicode_response = 3) ==> skip);(digicode_response = 4 ==> new_state:=S_ACCESS_AUTORISE [] not(digicode_response = 4) ==> skip)) [] not(state = S_DIGICODE) ==> skip);(state = S_ACCES_REFUSE ==> new_state:=S_DIGICODE [] not(state = S_ACCES_REFUSE) ==> skip);(state = S_INCIDENT_NIVEAU_4 ==> new_state:=S_DIGICODE [] not(state = S_INCIDENT_NIVEAU_4) ==> skip);(state = S_PERTE_DE_TEMPS_1 ==> new_state:=S_INCIDENT_NIVEAU_4 [] not(state = S_PERTE_DE_TEMPS_1) ==> skip));
  List_Substitution(Implementation(ControlUnit_i),pupitre_next)==(IF state = S_DEBUT THEN debutRequest <-- httpServer_get_debut_request;IF debutRequest = 1 THEN new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE;debutRequest:=0 END END;IF state = S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE THEN new_state:=S_DIGICODE END;IF state = S_DIGICODE THEN digicode_response <-- digi_getResponse;IF digicode_response = 0 THEN new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE END;IF digicode_response = 1 THEN new_state:=S_ACCES_REFUSE END;IF digicode_response = 2 THEN new_state:=S_INCIDENT_NIVEAU_4 END;IF digicode_response = 3 THEN new_state:=S_PERTE_DE_TEMPS_1 END;IF digicode_response = 4 THEN new_state:=S_ACCESS_AUTORISE END END;IF state = S_ACCES_REFUSE THEN new_state:=S_DIGICODE END;IF state = S_INCIDENT_NIVEAU_4 THEN new_state:=S_DIGICODE END;IF state = S_PERTE_DE_TEMPS_1 THEN new_state:=S_INCIDENT_NIVEAU_4 END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(ControlUnit_i))==(?);
  Inherited_List_Constants(Implementation(ControlUnit_i))==(?);
  List_Constants(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(ControlUnit_i),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE});
  Context_List_Enumerated(Implementation(ControlUnit_i))==(STATE);
  Context_List_Defered(Implementation(ControlUnit_i))==(?);
  Context_List_Sets(Implementation(ControlUnit_i))==(STATE);
  List_Own_Enumerated(Implementation(ControlUnit_i))==(?);
  List_Valuable_Sets(Implementation(ControlUnit_i))==(?);
  Inherited_List_Enumerated(Implementation(ControlUnit_i))==(?);
  Inherited_List_Defered(Implementation(ControlUnit_i))==(?);
  Inherited_List_Sets(Implementation(ControlUnit_i))==(?);
  List_Enumerated(Implementation(ControlUnit_i))==(?);
  List_Defered(Implementation(ControlUnit_i))==(?);
  List_Sets(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(ControlUnit_i))==(?);
  Expanded_List_HiddenConstants(Implementation(ControlUnit_i))==(?);
  List_HiddenConstants(Implementation(ControlUnit_i))==(?);
  External_List_HiddenConstants(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(ControlUnit_i))==(btrue);
  Context_List_Properties(Implementation(ControlUnit_i))==(NEXT: STATE <-> STATE & NEXT = {S_DEBUT|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE|->S_DIGICODE,S_DIGICODE|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE|->S_ACCES_REFUSE,S_ACCES_REFUSE|->S_DIGICODE,S_DIGICODE|->S_INCIDENT_NIVEAU_4,S_INCIDENT_NIVEAU_4|->S_DIGICODE,S_DIGICODE|->S_PERTE_DE_TEMPS_1,S_PERTE_DE_TEMPS_1|->S_INCIDENT_NIVEAU_4,S_DIGICODE|->S_ACCESS_AUTORISE,S_ACCESS_AUTORISE|->S_RECHERCHE_INCIDENT_1,S_RECHERCHE_INCIDENT_1|->S_INCIDENT_MAJEUR_1,S_INCIDENT_MAJEUR_1|->S_PROTOCOLE_ACCES_PROCEDURE_1,S_PROTOCOLE_ACCES_PROCEDURE_1|->S_MODE_AIDE_1,S_MODE_AIDE_1|->S_ENIGME_CABLES_1,S_ENIGME_CABLES_1|->S_INCIDENT_MAJEUR_RESOLU_1,S_INCIDENT_MAJEUR_RESOLU_1|->S_RECHERCHE_INCIDENT_2,S_RECHERCHE_INCIDENT_2|->S_INCIDENT_MAJEUR_2,S_INCIDENT_MAJEUR_2|->S_PROTOCOLE_ACCES_PROCEDURE_2,S_PROTOCOLE_ACCES_PROCEDURE_2|->S_MODE_AIDE_2,S_MODE_AIDE_2|->S_ENIGME_CABLES_2,S_ENIGME_CABLES_2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_INCIDENT_MAJEUR_RESOLU_2,S_INCIDENT_MAJEUR_RESOLU_2|->S_RECHERCHE_INCIDENT_3,S_RECHERCHE_INCIDENT_3|->S_INCIDENT_MAJEUR_3,S_INCIDENT_MAJEUR_3|->S_PROTOCOLE_ACCES_PROCEDURE_3,S_PROTOCOLE_ACCES_PROCEDURE_3|->S_MODE_AIDE_3,S_MODE_AIDE_3|->S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_ACTIVATION_BALANCE_3|->S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3|->S_ENIGME_NIVEAU_DEAU,S_ENIGME_NIVEAU_DEAU|->S_INCIDENT_RESOLU,S_INCIDENT_RESOLU|->S_GENERIC,S_GENERIC|->S_BILAN_PARTIE,S_BILAN_PARTIE|->S_GENERIC,S_GENERIC|->S_DEBUT} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Inherited_List_Properties(Implementation(ControlUnit_i))==(btrue);
  List_Properties(Implementation(ControlUnit_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(ControlUnit_i))==(aa: aa);
  List_Values(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(ControlUnit_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(ControlUnit_i))==(?);
  Seen_Context_List_Invariant(Implementation(ControlUnit_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(ControlUnit_i))==(btrue);
  Seen_Context_List_Properties(Implementation(ControlUnit_i))==(btrue);
  Seen_List_Constraints(Implementation(ControlUnit_i))==(btrue);
  Seen_List_Operations(Implementation(ControlUnit_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(ControlUnit_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(ControlUnit_i),Machine(digicode))==(digi_getResponse);
  List_Included_Operations(Implementation(ControlUnit_i),Machine(httpServer))==(handleRequest,httpServer_get_debut_request)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(ControlUnit_i))==(Type(debutRequest) == Mvv(btype(INTEGER,?,?));Type(digicode_response) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(ControlUnit_i))==(Type(pupitre_next) == Cst(etype(STATE,?,?),etype(STATE,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(ControlUnit_i),Machine(CTX))==(S0);
  List_Constants_Env(Implementation(ControlUnit_i),Machine(CTX))==(Type(S_DEBUT) == Cst(etype(STATE,0,29));Type(S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE) == Cst(etype(STATE,0,29));Type(S_DIGICODE) == Cst(etype(STATE,0,29));Type(S_ACCES_REFUSE) == Cst(etype(STATE,0,29));Type(S_ACCESS_AUTORISE) == Cst(etype(STATE,0,29));Type(S_PERTE_DE_TEMPS_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_NIVEAU_4) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_1) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_1) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_1) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_1) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_2) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_2) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2S2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_2) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_3) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_3) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_3) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_POST_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_NIVEAU_DEAU) == Cst(etype(STATE,0,29));Type(S_INCIDENT_RESOLU) == Cst(etype(STATE,0,29));Type(S_GENERIC) == Cst(etype(STATE,0,29));Type(S_BILAN_PARTIE) == Cst(etype(STATE,0,29));Type(S0) == Cst(etype(STATE,?,?)));
  Enumerate_Definition(Implementation(ControlUnit_i),Machine(CTX),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(ControlUnit_i)) == (? | ? | ? | ? | pupitre_next | ? | seen(Machine(CTX)),imported(Machine(httpServer)),imported(Machine(digicode)) | ? | ControlUnit_i);
  List_Of_HiddenCst_Ids(Implementation(ControlUnit_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(ControlUnit_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(ControlUnit_i)) == (digicode_response,debutRequest | ?);
  List_Of_Ids_SeenBNU(Implementation(ControlUnit_i)) == (?: ?);
  List_Of_Ids(Machine(digicode)) == (? | ? | ? | ? | digi_getResponse | ? | ? | ? | digicode);
  List_Of_HiddenCst_Ids(Machine(digicode)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(digicode)) == (?);
  List_Of_VisibleVar_Ids(Machine(digicode)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(digicode)) == (?: ?);
  List_Of_Ids(Machine(httpServer)) == (? | ? | ? | ? | handleRequest,httpServer_get_debut_request | ? | ? | ? | httpServer);
  List_Of_HiddenCst_Ids(Machine(httpServer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(httpServer)) == (?);
  List_Of_VisibleVar_Ids(Machine(httpServer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(httpServer)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (S0,STATE,S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(ControlUnit_i)) == (Type(digicode_response) == Mvv(btype(INTEGER,?,?));Type(debutRequest) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(ControlUnit_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(ControlUnit_i))==(debutRequest: INTEGER & digicode_response: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(ControlUnit_i),Machine(httpServer))==(?);
  ImportedVisVariablesList(Implementation(ControlUnit_i),Machine(httpServer))==(?);
  ImportedVariablesList(Implementation(ControlUnit_i),Machine(digicode))==(?);
  ImportedVisVariablesList(Implementation(ControlUnit_i),Machine(digicode))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
