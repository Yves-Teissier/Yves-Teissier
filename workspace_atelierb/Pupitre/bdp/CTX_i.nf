Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(CTX_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(CTX_i))==(Machine(CTX));
  Level(Implementation(CTX_i))==(1);
  Upper_Level(Implementation(CTX_i))==(Machine(CTX))
END
&
THEORY LoadedStructureX IS
  Implementation(CTX_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(CTX_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(CTX_i))==(?);
  Inherited_List_Includes(Implementation(CTX_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(CTX_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(CTX_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(CTX_i))==(?);
  Context_List_Variables(Implementation(CTX_i))==(?);
  Abstract_List_Variables(Implementation(CTX_i))==(?);
  Local_List_Variables(Implementation(CTX_i))==(?);
  List_Variables(Implementation(CTX_i))==(?);
  External_List_Variables(Implementation(CTX_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(CTX_i))==(?);
  Abstract_List_VisibleVariables(Implementation(CTX_i))==(?);
  External_List_VisibleVariables(Implementation(CTX_i))==(?);
  Expanded_List_VisibleVariables(Implementation(CTX_i))==(?);
  List_VisibleVariables(Implementation(CTX_i))==(?);
  Internal_List_VisibleVariables(Implementation(CTX_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(CTX_i))==(btrue);
  Expanded_List_Invariant(Implementation(CTX_i))==(btrue);
  Abstract_List_Invariant(Implementation(CTX_i))==(btrue);
  Context_List_Invariant(Implementation(CTX_i))==(btrue);
  List_Invariant(Implementation(CTX_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(CTX_i))==(btrue);
  Abstract_List_Assertions(Implementation(CTX_i))==(btrue);
  Context_List_Assertions(Implementation(CTX_i))==(btrue);
  List_Assertions(Implementation(CTX_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(CTX_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(CTX_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(CTX_i))==(skip);
  Context_List_Initialisation(Implementation(CTX_i))==(skip);
  List_Initialisation(Implementation(CTX_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(CTX_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(CTX_i))==(btrue);
  List_Context_Constraints(Implementation(CTX_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(CTX_i))==(?);
  List_Operations(Implementation(CTX_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(CTX_i))==(S0);
  Inherited_List_Constants(Implementation(CTX_i))==(S0);
  List_Constants(Implementation(CTX_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(CTX_i),STATE)==({S_DEBUT,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE,S_ACCES_REFUSE,S_ACCESS_AUTORISE,S_PERTE_DE_TEMPS_1,S_INCIDENT_NIVEAU_4,S_RECHERCHE_INCIDENT_1,S_INCIDENT_MAJEUR_1,S_PROTOCOLE_ACCES_PROCEDURE_1,S_MODE_AIDE_1,S_ENIGME_CABLES_1,S_INCIDENT_MAJEUR_RESOLU_1,S_RECHERCHE_INCIDENT_2,S_INCIDENT_MAJEUR_2,S_PROTOCOLE_ACCES_PROCEDURE_2,S_MODE_AIDE_2,S_ENIGME_CABLES_2,S_ENIGME_CABLES_2S2,S_INCIDENT_MAJEUR_RESOLU_2,S_RECHERCHE_INCIDENT_3,S_INCIDENT_MAJEUR_3,S_PROTOCOLE_ACCES_PROCEDURE_3,S_MODE_AIDE_3,S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_NIVEAU_DEAU,S_INCIDENT_RESOLU,S_GENERIC,S_BILAN_PARTIE});
  Context_List_Enumerated(Implementation(CTX_i))==(?);
  Context_List_Defered(Implementation(CTX_i))==(?);
  Context_List_Sets(Implementation(CTX_i))==(?);
  List_Own_Enumerated(Implementation(CTX_i))==(STATE);
  List_Valuable_Sets(Implementation(CTX_i))==(?);
  Inherited_List_Enumerated(Implementation(CTX_i))==(STATE);
  Inherited_List_Defered(Implementation(CTX_i))==(?);
  Inherited_List_Sets(Implementation(CTX_i))==(STATE);
  List_Enumerated(Implementation(CTX_i))==(?);
  List_Defered(Implementation(CTX_i))==(?);
  List_Sets(Implementation(CTX_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(CTX_i))==(NEXT);
  Expanded_List_HiddenConstants(Implementation(CTX_i))==(?);
  List_HiddenConstants(Implementation(CTX_i))==(?);
  External_List_HiddenConstants(Implementation(CTX_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(CTX_i))==(NEXT: STATE <-> STATE & NEXT = {S_DEBUT|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE|->S_DIGICODE,S_DIGICODE|->S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE,S_DIGICODE|->S_ACCES_REFUSE,S_ACCES_REFUSE|->S_DIGICODE,S_DIGICODE|->S_INCIDENT_NIVEAU_4,S_INCIDENT_NIVEAU_4|->S_DIGICODE,S_DIGICODE|->S_PERTE_DE_TEMPS_1,S_PERTE_DE_TEMPS_1|->S_INCIDENT_NIVEAU_4,S_DIGICODE|->S_ACCESS_AUTORISE,S_ACCESS_AUTORISE|->S_RECHERCHE_INCIDENT_1,S_RECHERCHE_INCIDENT_1|->S_INCIDENT_MAJEUR_1,S_INCIDENT_MAJEUR_1|->S_PROTOCOLE_ACCES_PROCEDURE_1,S_PROTOCOLE_ACCES_PROCEDURE_1|->S_MODE_AIDE_1,S_MODE_AIDE_1|->S_ENIGME_CABLES_1,S_ENIGME_CABLES_1|->S_INCIDENT_MAJEUR_RESOLU_1,S_INCIDENT_MAJEUR_RESOLU_1|->S_RECHERCHE_INCIDENT_2,S_RECHERCHE_INCIDENT_2|->S_INCIDENT_MAJEUR_2,S_INCIDENT_MAJEUR_2|->S_PROTOCOLE_ACCES_PROCEDURE_2,S_PROTOCOLE_ACCES_PROCEDURE_2|->S_MODE_AIDE_2,S_MODE_AIDE_2|->S_ENIGME_CABLES_2,S_ENIGME_CABLES_2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_ENIGME_CABLES_2S2,S_ENIGME_CABLES_2S2|->S_INCIDENT_MAJEUR_RESOLU_2,S_INCIDENT_MAJEUR_RESOLU_2|->S_RECHERCHE_INCIDENT_3,S_RECHERCHE_INCIDENT_3|->S_INCIDENT_MAJEUR_3,S_INCIDENT_MAJEUR_3|->S_PROTOCOLE_ACCES_PROCEDURE_3,S_PROTOCOLE_ACCES_PROCEDURE_3|->S_MODE_AIDE_3,S_MODE_AIDE_3|->S_ENIGME_ACTIVATION_BALANCE_3,S_ENIGME_ACTIVATION_BALANCE_3|->S_ENIGME_POST_ACTIVATION_BALANCE_3,S_ENIGME_POST_ACTIVATION_BALANCE_3|->S_ENIGME_NIVEAU_DEAU,S_ENIGME_NIVEAU_DEAU|->S_INCIDENT_RESOLU,S_INCIDENT_RESOLU|->S_GENERIC,S_GENERIC|->S_BILAN_PARTIE,S_BILAN_PARTIE|->S_GENERIC,S_GENERIC|->S_DEBUT} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Context_List_Properties(Implementation(CTX_i))==(btrue);
  Inherited_List_Properties(Implementation(CTX_i))==(btrue);
  List_Properties(Implementation(CTX_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(CTX_i))==(btrue);
  Values_Subs(Implementation(CTX_i))==(S0: S_DEBUT);
  List_Values(Implementation(CTX_i))==(S0 = S_DEBUT)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(CTX_i))==(Type(S_DEBUT) == Cst(etype(STATE,0,29));Type(S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE) == Cst(etype(STATE,0,29));Type(S_DIGICODE) == Cst(etype(STATE,0,29));Type(S_ACCES_REFUSE) == Cst(etype(STATE,0,29));Type(S_ACCESS_AUTORISE) == Cst(etype(STATE,0,29));Type(S_PERTE_DE_TEMPS_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_NIVEAU_4) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_1) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_1) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_1) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_1) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_2) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_2) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2S2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_2) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_3) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_3) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_3) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_POST_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_NIVEAU_DEAU) == Cst(etype(STATE,0,29));Type(S_INCIDENT_RESOLU) == Cst(etype(STATE,0,29));Type(S_GENERIC) == Cst(etype(STATE,0,29));Type(S_BILAN_PARTIE) == Cst(etype(STATE,0,29));Type(S0) == Cst(etype(STATE,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(CTX_i)) == (? | ? | ? | ? | ? | ? | ? | ? | CTX_i);
  List_Of_HiddenCst_Ids(Implementation(CTX_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(CTX_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(CTX_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(CTX_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(CTX_i)) == (Type(STATE) == Cst(SetOf(etype(STATE,0,29))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(CTX_i)) == (Type(S0) == Cst(etype(STATE,?,?));Type(S_BILAN_PARTIE) == Cst(etype(STATE,0,29));Type(S_GENERIC) == Cst(etype(STATE,0,29));Type(S_INCIDENT_RESOLU) == Cst(etype(STATE,0,29));Type(S_ENIGME_NIVEAU_DEAU) == Cst(etype(STATE,0,29));Type(S_ENIGME_POST_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_ENIGME_ACTIVATION_BALANCE_3) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_3) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_3) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_3) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_3) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2S2) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_2) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_2) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_2) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_2) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_RESOLU_1) == Cst(etype(STATE,0,29));Type(S_ENIGME_CABLES_1) == Cst(etype(STATE,0,29));Type(S_MODE_AIDE_1) == Cst(etype(STATE,0,29));Type(S_PROTOCOLE_ACCES_PROCEDURE_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_MAJEUR_1) == Cst(etype(STATE,0,29));Type(S_RECHERCHE_INCIDENT_1) == Cst(etype(STATE,0,29));Type(S_INCIDENT_NIVEAU_4) == Cst(etype(STATE,0,29));Type(S_PERTE_DE_TEMPS_1) == Cst(etype(STATE,0,29));Type(S_ACCESS_AUTORISE) == Cst(etype(STATE,0,29));Type(S_ACCES_REFUSE) == Cst(etype(STATE,0,29));Type(S_DIGICODE) == Cst(etype(STATE,0,29));Type(S_ACCES_RESTREINT_AU_PERSONNES_AUTORISE) == Cst(etype(STATE,0,29));Type(S_DEBUT) == Cst(etype(STATE,0,29)))
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
  List_Local_Operations(Implementation(CTX_i))==(?)
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
  TypingPredicate(Implementation(CTX_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
