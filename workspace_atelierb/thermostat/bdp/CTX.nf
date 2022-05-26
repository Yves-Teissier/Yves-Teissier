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
  Set_Definition(Machine(CTX),STATE)==({IDLE_STATE,SETGAZ_STATE});
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
  List_Properties(Machine(CTX))==(NEXT: STATE <-> STATE & NEXT = {IDLE_STATE|->SETGAZ_STATE,SETGAZ_STATE|->IDLE_STATE,IDLE_STATE|->IDLE_STATE} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CTX)) == (S0,STATE,IDLE_STATE,SETGAZ_STATE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CTX)) == (Type(STATE) == Cst(SetOf(etype(STATE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CTX)) == (Type(IDLE_STATE) == Cst(etype(STATE,0,1));Type(SETGAZ_STATE) == Cst(etype(STATE,0,1));Type(S0) == Cst(etype(STATE,?,?)))
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
