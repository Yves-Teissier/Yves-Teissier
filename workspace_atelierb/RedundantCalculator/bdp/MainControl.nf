Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MainControl))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MainControl))==(Machine(MainControl));
  Level(Machine(MainControl))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MainControl)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MainControl))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MainControl))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MainControl))==(?);
  List_Includes(Machine(MainControl))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MainControl))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MainControl))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MainControl))==(?);
  Context_List_Variables(Machine(MainControl))==(?);
  Abstract_List_Variables(Machine(MainControl))==(?);
  Local_List_Variables(Machine(MainControl))==(?);
  List_Variables(Machine(MainControl))==(?);
  External_List_Variables(Machine(MainControl))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MainControl))==(?);
  Abstract_List_VisibleVariables(Machine(MainControl))==(?);
  External_List_VisibleVariables(Machine(MainControl))==(?);
  Expanded_List_VisibleVariables(Machine(MainControl))==(?);
  List_VisibleVariables(Machine(MainControl))==(?);
  Internal_List_VisibleVariables(Machine(MainControl))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MainControl))==(btrue);
  Gluing_List_Invariant(Machine(MainControl))==(btrue);
  Expanded_List_Invariant(Machine(MainControl))==(btrue);
  Abstract_List_Invariant(Machine(MainControl))==(btrue);
  Context_List_Invariant(Machine(MainControl))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Machine(MainControl))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MainControl))==(btrue);
  Abstract_List_Assertions(Machine(MainControl))==(btrue);
  Context_List_Assertions(Machine(MainControl))==(btrue);
  List_Assertions(Machine(MainControl))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MainControl))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MainControl))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MainControl))==(skip);
  Context_List_Initialisation(Machine(MainControl))==(skip);
  List_Initialisation(Machine(MainControl))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MainControl))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(MainControl),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MainControl))==(btrue);
  List_Constraints(Machine(MainControl))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MainControl))==(cu2_run);
  List_Operations(Machine(MainControl))==(cu2_run)
END
&
THEORY ListInputX IS
  List_Input(Machine(MainControl),cu2_run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MainControl),cu2_run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MainControl),cu2_run)==(cu2_run)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MainControl),cu2_run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MainControl),cu2_run)==(btrue | skip);
  List_Substitution(Machine(MainControl),cu2_run)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MainControl))==(?);
  Inherited_List_Constants(Machine(MainControl))==(?);
  List_Constants(Machine(MainControl))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MainControl),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Machine(MainControl))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Machine(MainControl))==(?);
  Context_List_Sets(Machine(MainControl))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Machine(MainControl))==(?);
  Inherited_List_Enumerated(Machine(MainControl))==(?);
  Inherited_List_Defered(Machine(MainControl))==(?);
  Inherited_List_Sets(Machine(MainControl))==(?);
  List_Enumerated(Machine(MainControl))==(?);
  List_Defered(Machine(MainControl))==(?);
  List_Sets(Machine(MainControl))==(?);
  Set_Definition(Machine(MainControl),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(MainControl),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MainControl))==(?);
  Expanded_List_HiddenConstants(Machine(MainControl))==(?);
  List_HiddenConstants(Machine(MainControl))==(?);
  External_List_HiddenConstants(Machine(MainControl))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MainControl))==(btrue);
  Context_List_Properties(Machine(MainControl))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Machine(MainControl))==(btrue);
  List_Properties(Machine(MainControl))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(MainControl),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(MainControl))==(?);
  Seen_Context_List_Invariant(Machine(MainControl))==(btrue);
  Seen_Context_List_Assertions(Machine(MainControl))==(btrue);
  Seen_Context_List_Properties(Machine(MainControl))==(btrue);
  Seen_List_Constraints(Machine(MainControl))==(btrue);
  Seen_List_Operations(Machine(MainControl),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(MainControl),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MainControl),cu2_run)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MainControl)) == (? | ? | ? | ? | cu2_run | ? | seen(Machine(CTX)) | ? | MainControl);
  List_Of_HiddenCst_Ids(Machine(MainControl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MainControl)) == (?);
  List_Of_VisibleVar_Ids(Machine(MainControl)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MainControl)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MainControl)) == (Type(cu2_run) == Cst(No_type,No_type));
  Observers(Machine(MainControl)) == (Type(cu2_run) == Cst(No_type,No_type))
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
