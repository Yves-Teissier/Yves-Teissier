Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(ControlUnit_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(ControlUnit_r))==(Machine(ControlUnit));
  Level(Refinement(ControlUnit_r))==(1);
  Upper_Level(Refinement(ControlUnit_r))==(Machine(ControlUnit))
END
&
THEORY LoadedStructureX IS
  Refinement(ControlUnit_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(ControlUnit_r))==(CTX)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(ControlUnit_r))==(?);
  List_Includes(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(ControlUnit_r))==(?);
  Context_List_Variables(Refinement(ControlUnit_r))==(?);
  Abstract_List_Variables(Refinement(ControlUnit_r))==(?);
  Local_List_Variables(Refinement(ControlUnit_r))==(?);
  List_Variables(Refinement(ControlUnit_r))==(?);
  External_List_Variables(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(ControlUnit_r))==(?);
  Abstract_List_VisibleVariables(Refinement(ControlUnit_r))==(?);
  External_List_VisibleVariables(Refinement(ControlUnit_r))==(?);
  Expanded_List_VisibleVariables(Refinement(ControlUnit_r))==(?);
  List_VisibleVariables(Refinement(ControlUnit_r))==(?);
  Internal_List_VisibleVariables(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(ControlUnit_r))==(btrue);
  Expanded_List_Invariant(Refinement(ControlUnit_r))==(btrue);
  Abstract_List_Invariant(Refinement(ControlUnit_r))==(btrue);
  Context_List_Invariant(Refinement(ControlUnit_r))==(btrue);
  List_Invariant(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(ControlUnit_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(ControlUnit_r))==(btrue);
  Abstract_List_Assertions(Refinement(ControlUnit_r))==(btrue);
  Context_List_Assertions(Refinement(ControlUnit_r))==(btrue);
  List_Assertions(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(ControlUnit_r))==(skip);
  Context_List_Initialisation(Refinement(ControlUnit_r))==(skip);
  List_Initialisation(Refinement(ControlUnit_r))==(skip)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(ControlUnit_r))==(pupitre_next);
  List_Operations(Refinement(ControlUnit_r))==(pupitre_next)
END
&
THEORY ListInputX IS
  List_Input(Refinement(ControlUnit_r),pupitre_next)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(ControlUnit_r),pupitre_next)==(new_state)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(ControlUnit_r),pupitre_next)==(new_state <-- pupitre_next(state))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(ControlUnit_r),pupitre_next)==(btrue);
  List_Precondition(Refinement(ControlUnit_r),pupitre_next)==(state: STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(ControlUnit_r),pupitre_next)==(state: STATE | state = S_DEBUT ==> new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE [] not(state = S_DEBUT) ==> skip);
  List_Substitution(Refinement(ControlUnit_r),pupitre_next)==(IF state = S_DEBUT THEN new_state:=S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(ControlUnit_r),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(ControlUnit_r))==(btrue);
  List_Context_Constraints(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(ControlUnit_r))==(?);
  Inherited_List_Constants(Refinement(ControlUnit_r))==(?);
  List_Constants(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(ControlUnit_r),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE});
  Context_List_Enumerated(Refinement(ControlUnit_r))==(STATE);
  Context_List_Defered(Refinement(ControlUnit_r))==(?);
  Context_List_Sets(Refinement(ControlUnit_r))==(STATE);
  List_Valuable_Sets(Refinement(ControlUnit_r))==(?);
  Inherited_List_Enumerated(Refinement(ControlUnit_r))==(?);
  Inherited_List_Defered(Refinement(ControlUnit_r))==(?);
  Inherited_List_Sets(Refinement(ControlUnit_r))==(?);
  List_Enumerated(Refinement(ControlUnit_r))==(?);
  List_Defered(Refinement(ControlUnit_r))==(?);
  List_Sets(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(ControlUnit_r))==(?);
  Expanded_List_HiddenConstants(Refinement(ControlUnit_r))==(?);
  List_HiddenConstants(Refinement(ControlUnit_r))==(?);
  External_List_HiddenConstants(Refinement(ControlUnit_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(ControlUnit_r))==(btrue);
  Context_List_Properties(Refinement(ControlUnit_r))==(NEXT: STATE <-> STATE & NEXT = {S_DEBUT|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE|->S_DIGICODE,S_DIGICODE|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE|->S_ACCES_REFUSE,S_ACCES_REFUSE|->S_DIGICODE,S_DIGICODE|->S_INCIDENT_NIVEAU_4,S_INCIDENT_NIVEAU_4|->S_DIGICODE,S_DIGICODE|->S_PERTE_DE_TEMPS_1,S_PERTE_DE_TEMPS_1|->S_INCIDENT_NIVEAU_4,S_DIGICODE|->S_ACCESS_AUTORISE,S_ACCESS_AUTORISE|->S_RECHERCHE_INCIDENT_1,S_RECHERCHE_INCIDENT_1|->S_INCIDENT_MAJEUR_1,S_INCIDENT_MAJEUR_1|->S_PROTOCOLE_ACCES_PROCEDURE_1,S_PROTOCOLE_ACCES_PROCEDURE_1|->S_MODE_AIDE_1,S_MODE_AIDE_1|->S_ENIGME_CABLES_1,S_ENIGME_CABLES_1|->S_INCIDENT_MAJEUR_RESOLU_1,S_INCIDENT_MAJEUR_RESOLU_1|->S_RECHERCHE_INCIDENT_2,S_RECHERCHE_INCIDENT_2|->S_INCIDENT_MAJEUR_2,S_INCIDENT_MAJEUR_2|->S_PROTOCOLE_ACCES_PROCEDURE_2,S_PROTOCOLE_ACCES_PROCEDURE_2|->S_MODE_AIDE_2,S_MODE_AIDE_2|->S_ENIGME_CABLES_2,S_ENIGME_CABLES_2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_INCIDENT_MAJEUR_RESOLU_2,S_INCIDENT_MAJEUR_RESOLU_2|->S_RECHERCHE_INCIDENT_3,S_RECHERCHE_INCIDENT_3|->S_INCIDENT_MAJEUR_3,S_INCIDENT_MAJEUR_3|->S_PROTOCOLE_ACCES_PROCEDURE_3,S_PROTOCOLE_ACCES_PROCEDURE_3|->S_MODE_AIDE_3,S_MODE_AIDE_3|->S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_ACTIVATION_BALANCE_3|->S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3|->S_ENIGME_NIVEAU_DEAU,S_ENIGME_NIVEAU_DEAU|->S_INCIDENT_RESOLU,S_INCIDENT_RESOLU|->S_GENERIC,S_GENERIC|->S_BILAN_PARTIE,S_BILAN_PARTIE|->S_GENERIC,S_GENERIC|->S_DEBUT} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Inherited_List_Properties(Refinement(ControlUnit_r))==(btrue);
  List_Properties(Refinement(ControlUnit_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(ControlUnit_r),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Refinement(ControlUnit_r))==(?);
  Seen_Context_List_Invariant(Refinement(ControlUnit_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(ControlUnit_r))==(btrue);
  Seen_Context_List_Properties(Refinement(ControlUnit_r))==(btrue);
  Seen_List_Constraints(Refinement(ControlUnit_r))==(btrue);
  Seen_List_Operations(Refinement(ControlUnit_r),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Refinement(ControlUnit_r),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(ControlUnit_r),pupitre_next)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(ControlUnit_r)) == (? | ? | ? | ? | pupitre_next | ? | seen(Machine(CTX)) | ? | ControlUnit_r);
  List_Of_HiddenCst_Ids(Refinement(ControlUnit_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(ControlUnit_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(ControlUnit_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(ControlUnit_r)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (S0,STATE,S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(ControlUnit_r)) == (Type(pupitre_next) == Cst(etype(STATE,?,?),etype(STATE,?,?)))
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
