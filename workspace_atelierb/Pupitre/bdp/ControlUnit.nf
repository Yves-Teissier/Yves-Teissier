Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ControlUnit))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ControlUnit))==(Machine(ControlUnit));
  Level(Machine(ControlUnit))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ControlUnit)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ControlUnit))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ControlUnit))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ControlUnit))==(?);
  List_Includes(Machine(ControlUnit))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ControlUnit))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ControlUnit))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ControlUnit))==(?);
  Context_List_Variables(Machine(ControlUnit))==(?);
  Abstract_List_Variables(Machine(ControlUnit))==(?);
  Local_List_Variables(Machine(ControlUnit))==(?);
  List_Variables(Machine(ControlUnit))==(?);
  External_List_Variables(Machine(ControlUnit))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ControlUnit))==(?);
  Abstract_List_VisibleVariables(Machine(ControlUnit))==(?);
  External_List_VisibleVariables(Machine(ControlUnit))==(?);
  Expanded_List_VisibleVariables(Machine(ControlUnit))==(?);
  List_VisibleVariables(Machine(ControlUnit))==(?);
  Internal_List_VisibleVariables(Machine(ControlUnit))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ControlUnit))==(btrue);
  Gluing_List_Invariant(Machine(ControlUnit))==(btrue);
  Expanded_List_Invariant(Machine(ControlUnit))==(btrue);
  Abstract_List_Invariant(Machine(ControlUnit))==(btrue);
  Context_List_Invariant(Machine(ControlUnit))==(btrue);
  List_Invariant(Machine(ControlUnit))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ControlUnit))==(btrue);
  Abstract_List_Assertions(Machine(ControlUnit))==(btrue);
  Context_List_Assertions(Machine(ControlUnit))==(btrue);
  List_Assertions(Machine(ControlUnit))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ControlUnit))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ControlUnit))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ControlUnit))==(skip);
  Context_List_Initialisation(Machine(ControlUnit))==(skip);
  List_Initialisation(Machine(ControlUnit))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ControlUnit))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ControlUnit),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ControlUnit))==(btrue);
  List_Constraints(Machine(ControlUnit))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ControlUnit))==(pupitre_next);
  List_Operations(Machine(ControlUnit))==(pupitre_next)
END
&
THEORY ListInputX IS
  List_Input(Machine(ControlUnit),pupitre_next)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ControlUnit),pupitre_next)==(new_state)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ControlUnit),pupitre_next)==(new_state <-- pupitre_next(state))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ControlUnit),pupitre_next)==(state: STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ControlUnit),pupitre_next)==(state: STATE | @(new_state$0).(new_state$0: NEXT[{state}] ==> new_state:=new_state$0));
  List_Substitution(Machine(ControlUnit),pupitre_next)==(new_state:: NEXT[{state}])
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ControlUnit))==(?);
  Inherited_List_Constants(Machine(ControlUnit))==(?);
  List_Constants(Machine(ControlUnit))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ControlUnit),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE});
  Context_List_Enumerated(Machine(ControlUnit))==(STATE);
  Context_List_Defered(Machine(ControlUnit))==(?);
  Context_List_Sets(Machine(ControlUnit))==(STATE);
  List_Valuable_Sets(Machine(ControlUnit))==(?);
  Inherited_List_Enumerated(Machine(ControlUnit))==(?);
  Inherited_List_Defered(Machine(ControlUnit))==(?);
  Inherited_List_Sets(Machine(ControlUnit))==(?);
  List_Enumerated(Machine(ControlUnit))==(?);
  List_Defered(Machine(ControlUnit))==(?);
  List_Sets(Machine(ControlUnit))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ControlUnit))==(?);
  Expanded_List_HiddenConstants(Machine(ControlUnit))==(?);
  List_HiddenConstants(Machine(ControlUnit))==(?);
  External_List_HiddenConstants(Machine(ControlUnit))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ControlUnit))==(btrue);
  Context_List_Properties(Machine(ControlUnit))==(NEXT: STATE <-> STATE & NEXT = {S_DEBUT|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE|->S_DIGICODE,S_DIGICODE|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE|->S_ACCES_REFUSE,S_ACCES_REFUSE|->S_DIGICODE,S_DIGICODE|->S_INCIDENT_NIVEAU_4,S_INCIDENT_NIVEAU_4|->S_DIGICODE,S_DIGICODE|->S_PERTE_DE_TEMPS_1,S_PERTE_DE_TEMPS_1|->S_INCIDENT_NIVEAU_4,S_DIGICODE|->S_ACCESS_AUTORISE,S_ACCESS_AUTORISE|->S_RECHERCHE_INCIDENT_1,S_RECHERCHE_INCIDENT_1|->S_INCIDENT_MAJEUR_1,S_INCIDENT_MAJEUR_1|->S_PROTOCOLE_ACCES_PROCEDURE_1,S_PROTOCOLE_ACCES_PROCEDURE_1|->S_MODE_AIDE_1,S_MODE_AIDE_1|->S_ENIGME_CABLES_1,S_ENIGME_CABLES_1|->S_INCIDENT_MAJEUR_RESOLU_1,S_INCIDENT_MAJEUR_RESOLU_1|->S_RECHERCHE_INCIDENT_2,S_RECHERCHE_INCIDENT_2|->S_INCIDENT_MAJEUR_2,S_INCIDENT_MAJEUR_2|->S_PROTOCOLE_ACCES_PROCEDURE_2,S_PROTOCOLE_ACCES_PROCEDURE_2|->S_MODE_AIDE_2,S_MODE_AIDE_2|->S_ENIGME_CABLES_2,S_ENIGME_CABLES_2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_INCIDENT_MAJEUR_RESOLU_2,S_INCIDENT_MAJEUR_RESOLU_2|->S_RECHERCHE_INCIDENT_3,S_RECHERCHE_INCIDENT_3|->S_INCIDENT_MAJEUR_3,S_INCIDENT_MAJEUR_3|->S_PROTOCOLE_ACCES_PROCEDURE_3,S_PROTOCOLE_ACCES_PROCEDURE_3|->S_MODE_AIDE_3,S_MODE_AIDE_3|->S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_ACTIVATION_BALANCE_3|->S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3|->S_ENIGME_NIVEAU_DEAU,S_ENIGME_NIVEAU_DEAU|->S_INCIDENT_RESOLU,S_INCIDENT_RESOLU|->S_GENERIC,S_GENERIC|->S_BILAN_PARTIE,S_BILAN_PARTIE|->S_GENERIC,S_GENERIC|->S_DEBUT} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Inherited_List_Properties(Machine(ControlUnit))==(btrue);
  List_Properties(Machine(ControlUnit))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ControlUnit),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(ControlUnit))==(?);
  Seen_Context_List_Invariant(Machine(ControlUnit))==(btrue);
  Seen_Context_List_Assertions(Machine(ControlUnit))==(btrue);
  Seen_Context_List_Properties(Machine(ControlUnit))==(btrue);
  Seen_List_Constraints(Machine(ControlUnit))==(btrue);
  Seen_List_Operations(Machine(ControlUnit),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(ControlUnit),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ControlUnit),pupitre_next)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ControlUnit)) == (? | ? | ? | ? | pupitre_next | ? | seen(Machine(CTX)) | ? | ControlUnit);
  List_Of_HiddenCst_Ids(Machine(ControlUnit)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ControlUnit)) == (?);
  List_Of_VisibleVar_Ids(Machine(ControlUnit)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ControlUnit)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (S0,STATE,S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ControlUnit)) == (Type(pupitre_next) == Cst(etype(STATE,?,?),etype(STATE,?,?)));
  Observers(Machine(ControlUnit)) == (Type(pupitre_next) == Cst(etype(STATE,?,?),etype(STATE,?,?)))
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
)
