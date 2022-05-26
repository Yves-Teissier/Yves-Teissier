Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CTX))==(Machine(CTX));
  Level(Machine(CTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CTX))==(?);
  List_Includes(Machine(CTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CTX))==(?);
  Context_List_Variables(Machine(CTX))==(?);
  Abstract_List_Variables(Machine(CTX))==(?);
  Local_List_Variables(Machine(CTX))==(?);
  List_Variables(Machine(CTX))==(?);
  External_List_Variables(Machine(CTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CTX))==(?);
  Abstract_List_VisibleVariables(Machine(CTX))==(?);
  External_List_VisibleVariables(Machine(CTX))==(?);
  Expanded_List_VisibleVariables(Machine(CTX))==(?);
  List_VisibleVariables(Machine(CTX))==(?);
  Internal_List_VisibleVariables(Machine(CTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CTX))==(btrue);
  Gluing_List_Invariant(Machine(CTX))==(btrue);
  Expanded_List_Invariant(Machine(CTX))==(btrue);
  Abstract_List_Invariant(Machine(CTX))==(btrue);
  Context_List_Invariant(Machine(CTX))==(btrue);
  List_Invariant(Machine(CTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CTX))==(btrue);
  Abstract_List_Assertions(Machine(CTX))==(btrue);
  Context_List_Assertions(Machine(CTX))==(btrue);
  List_Assertions(Machine(CTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CTX))==(skip);
  Context_List_Initialisation(Machine(CTX))==(skip);
  List_Initialisation(Machine(CTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CTX))==(btrue);
  List_Constraints(Machine(CTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CTX))==(?);
  List_Operations(Machine(CTX))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CTX))==(S0);
  Inherited_List_Constants(Machine(CTX))==(?);
  List_Constants(Machine(CTX))==(S0)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CTX),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE});
  Context_List_Enumerated(Machine(CTX))==(?);
  Context_List_Defered(Machine(CTX))==(?);
  Context_List_Sets(Machine(CTX))==(?);
  List_Valuable_Sets(Machine(CTX))==(?);
  Inherited_List_Enumerated(Machine(CTX))==(?);
  Inherited_List_Defered(Machine(CTX))==(?);
  Inherited_List_Sets(Machine(CTX))==(?);
  List_Enumerated(Machine(CTX))==(STATE);
  List_Defered(Machine(CTX))==(?);
  List_Sets(Machine(CTX))==(STATE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CTX))==(?);
  Expanded_List_HiddenConstants(Machine(CTX))==(?);
  List_HiddenConstants(Machine(CTX))==(NEXT);
  External_List_HiddenConstants(Machine(CTX))==(NEXT)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CTX))==(btrue);
  Context_List_Properties(Machine(CTX))==(btrue);
  Inherited_List_Properties(Machine(CTX))==(btrue);
  List_Properties(Machine(CTX))==(NEXT: STATE <-> STATE & NEXT = {S_DEBUT|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE|->S_DIGICODE,S_DIGICODE|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE|->S_ACCES_REFUSE,S_ACCES_REFUSE|->S_DIGICODE,S_DIGICODE|->S_INCIDENT_NIVEAU_4,S_INCIDENT_NIVEAU_4|->S_DIGICODE,S_DIGICODE|->S_PERTE_DE_TEMPS_1,S_PERTE_DE_TEMPS_1|->S_INCIDENT_NIVEAU_4,S_DIGICODE|->S_ACCESS_AUTORISE,S_ACCESS_AUTORISE|->S_RECHERCHE_INCIDENT_1,S_RECHERCHE_INCIDENT_1|->S_INCIDENT_MAJEUR_1,S_INCIDENT_MAJEUR_1|->S_PROTOCOLE_ACCES_PROCEDURE_1,S_PROTOCOLE_ACCES_PROCEDURE_1|->S_MODE_AIDE_1,S_MODE_AIDE_1|->S_ENIGME_CABLES_1,S_ENIGME_CABLES_1|->S_INCIDENT_MAJEUR_RESOLU_1,S_INCIDENT_MAJEUR_RESOLU_1|->S_RECHERCHE_INCIDENT_2,S_RECHERCHE_INCIDENT_2|->S_INCIDENT_MAJEUR_2,S_INCIDENT_MAJEUR_2|->S_PROTOCOLE_ACCES_PROCEDURE_2,S_PROTOCOLE_ACCES_PROCEDURE_2|->S_MODE_AIDE_2,S_MODE_AIDE_2|->S_ENIGME_CABLES_2,S_ENIGME_CABLES_2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_INCIDENT_MAJEUR_RESOLU_2,S_INCIDENT_MAJEUR_RESOLU_2|->S_RECHERCHE_INCIDENT_3,S_RECHERCHE_INCIDENT_3|->S_INCIDENT_MAJEUR_3,S_INCIDENT_MAJEUR_3|->S_PROTOCOLE_ACCES_PROCEDURE_3,S_PROTOCOLE_ACCES_PROCEDURE_3|->S_MODE_AIDE_3,S_MODE_AIDE_3|->S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_ACTIVATION_BALANCE_3|->S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3|->S_ENIGME_NIVEAU_DEAU,S_ENIGME_NIVEAU_DEAU|->S_INCIDENT_RESOLU,S_INCIDENT_RESOLU|->S_GENERIC,S_GENERIC|->S_BILAN_PARTIE,S_BILAN_PARTIE|->S_GENERIC,S_GENERIC|->S_DEBUT} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CTX)) == (S0,STATE,S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CTX)) == (Type(STATE) == Cst(SetOf(etype(STATE,0,29))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CTX)) == (Type(S_DEBUT) == Cst(etype(STATE,0,29));Type(S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE) == Cst(etype(STATE,0,29));Type(S_DIGICODE) == Cst(etype(STATE,0,29));Type(S_ACCES_REFUSE) == Cst(etype(STATE,0,29));Type(S_ACCESS_AUTORISE) == Cst(etype(STATE,0,29));Type(S_PERTE_DE_TEMPS_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_NIVEAU_4) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_1) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_1) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_1) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_1) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_2) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_2) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2S2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_2) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_3) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_3) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_3) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_POST_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_NIVEAU_DEAU) == Cst(etype(STATE,0,29));Type(S_INCIDENT_RESOLU) == Cst(etype(STATE,0,29));Type(S_GENERIC) == Cst(etype(STATE,0,29));Type(S_BILAN_PARTIE) == Cst(etype(STATE,0,29));Type(S0) == Cst(etype(STATE,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(CTX)) == (Type(NEXT) == HCst(SetOf(etype(STATE,?,?)*etype(STATE,?,?))))
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
