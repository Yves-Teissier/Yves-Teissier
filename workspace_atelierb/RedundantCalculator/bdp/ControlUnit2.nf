Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ControlUnit2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ControlUnit2))==(Machine(ControlUnit2));
  Level(Machine(ControlUnit2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ControlUnit2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ControlUnit2))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ControlUnit2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ControlUnit2))==(?);
  List_Includes(Machine(ControlUnit2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ControlUnit2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ControlUnit2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ControlUnit2))==(?);
  Context_List_Variables(Machine(ControlUnit2))==(?);
  Abstract_List_Variables(Machine(ControlUnit2))==(?);
  Local_List_Variables(Machine(ControlUnit2))==(?);
  List_Variables(Machine(ControlUnit2))==(?);
  External_List_Variables(Machine(ControlUnit2))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ControlUnit2))==(?);
  Abstract_List_VisibleVariables(Machine(ControlUnit2))==(?);
  External_List_VisibleVariables(Machine(ControlUnit2))==(?);
  Expanded_List_VisibleVariables(Machine(ControlUnit2))==(?);
  List_VisibleVariables(Machine(ControlUnit2))==(?);
  Internal_List_VisibleVariables(Machine(ControlUnit2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ControlUnit2))==(btrue);
  Gluing_List_Invariant(Machine(ControlUnit2))==(btrue);
  Expanded_List_Invariant(Machine(ControlUnit2))==(btrue);
  Abstract_List_Invariant(Machine(ControlUnit2))==(btrue);
  Context_List_Invariant(Machine(ControlUnit2))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Machine(ControlUnit2))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ControlUnit2))==(btrue);
  Abstract_List_Assertions(Machine(ControlUnit2))==(btrue);
  Context_List_Assertions(Machine(ControlUnit2))==(btrue);
  List_Assertions(Machine(ControlUnit2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ControlUnit2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ControlUnit2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ControlUnit2))==(skip);
  Context_List_Initialisation(Machine(ControlUnit2))==(skip);
  List_Initialisation(Machine(ControlUnit2))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ControlUnit2))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ControlUnit2),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ControlUnit2))==(btrue);
  List_Constraints(Machine(ControlUnit2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ControlUnit2))==(cu2_next_main_state,cu2_next_on_state,cu2_next_running_state,cu2_run);
  List_Operations(Machine(ControlUnit2))==(cu2_next_main_state,cu2_next_on_state,cu2_next_running_state,cu2_run)
END
&
THEORY ListInputX IS
  List_Input(Machine(ControlUnit2),cu2_next_main_state)==(state);
  List_Input(Machine(ControlUnit2),cu2_next_on_state)==(state);
  List_Input(Machine(ControlUnit2),cu2_next_running_state)==(state);
  List_Input(Machine(ControlUnit2),cu2_run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ControlUnit2),cu2_next_main_state)==(next_main_state);
  List_Output(Machine(ControlUnit2),cu2_next_on_state)==(next_on_state);
  List_Output(Machine(ControlUnit2),cu2_next_running_state)==(next_running_state);
  List_Output(Machine(ControlUnit2),cu2_run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ControlUnit2),cu2_next_main_state)==(next_main_state <-- cu2_next_main_state(state));
  List_Header(Machine(ControlUnit2),cu2_next_on_state)==(next_on_state <-- cu2_next_on_state(state));
  List_Header(Machine(ControlUnit2),cu2_next_running_state)==(next_running_state <-- cu2_next_running_state(state));
  List_Header(Machine(ControlUnit2),cu2_run)==(cu2_run)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ControlUnit2),cu2_next_main_state)==(state: MAIN_STATE);
  List_Precondition(Machine(ControlUnit2),cu2_next_on_state)==(state: ON_STATE);
  List_Precondition(Machine(ControlUnit2),cu2_next_running_state)==(state: RUNNING_STATE);
  List_Precondition(Machine(ControlUnit2),cu2_run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ControlUnit2),cu2_run)==(btrue | skip);
  Expanded_List_Substitution(Machine(ControlUnit2),cu2_next_running_state)==(state: RUNNING_STATE | @(next_running_state$0).(next_running_state$0: NEXT_RUNNING_STATE[{state}] ==> next_running_state:=next_running_state$0));
  Expanded_List_Substitution(Machine(ControlUnit2),cu2_next_on_state)==(state: ON_STATE | @(next_on_state$0).(next_on_state$0: NEXT_ON_STATE[{state}] ==> next_on_state:=next_on_state$0));
  Expanded_List_Substitution(Machine(ControlUnit2),cu2_next_main_state)==(state: MAIN_STATE | @(next_main_state$0).(next_main_state$0: NEXT_MAIN_STATE[{state}] ==> next_main_state:=next_main_state$0));
  List_Substitution(Machine(ControlUnit2),cu2_next_main_state)==(next_main_state:: NEXT_MAIN_STATE[{state}]);
  List_Substitution(Machine(ControlUnit2),cu2_next_on_state)==(next_on_state:: NEXT_ON_STATE[{state}]);
  List_Substitution(Machine(ControlUnit2),cu2_next_running_state)==(next_running_state:: NEXT_RUNNING_STATE[{state}]);
  List_Substitution(Machine(ControlUnit2),cu2_run)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ControlUnit2))==(CU2_IS_FIRST_SLAVE);
  Inherited_List_Constants(Machine(ControlUnit2))==(?);
  List_Constants(Machine(ControlUnit2))==(CU2_IS_FIRST_SLAVE)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ControlUnit2),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Machine(ControlUnit2))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Machine(ControlUnit2))==(?);
  Context_List_Sets(Machine(ControlUnit2))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Machine(ControlUnit2))==(?);
  Inherited_List_Enumerated(Machine(ControlUnit2))==(?);
  Inherited_List_Defered(Machine(ControlUnit2))==(?);
  Inherited_List_Sets(Machine(ControlUnit2))==(?);
  List_Enumerated(Machine(ControlUnit2))==(?);
  List_Defered(Machine(ControlUnit2))==(?);
  List_Sets(Machine(ControlUnit2))==(?);
  Set_Definition(Machine(ControlUnit2),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(ControlUnit2),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ControlUnit2))==(?);
  Expanded_List_HiddenConstants(Machine(ControlUnit2))==(?);
  List_HiddenConstants(Machine(ControlUnit2))==(?);
  External_List_HiddenConstants(Machine(ControlUnit2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ControlUnit2))==(btrue);
  Context_List_Properties(Machine(ControlUnit2))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Machine(ControlUnit2))==(btrue);
  List_Properties(Machine(ControlUnit2))==(CU2_IS_FIRST_SLAVE: BOOL)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ControlUnit2),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(ControlUnit2))==(?);
  Seen_Context_List_Invariant(Machine(ControlUnit2))==(btrue);
  Seen_Context_List_Assertions(Machine(ControlUnit2))==(btrue);
  Seen_Context_List_Properties(Machine(ControlUnit2))==(btrue);
  Seen_List_Constraints(Machine(ControlUnit2))==(btrue);
  Seen_List_Operations(Machine(ControlUnit2),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(ControlUnit2),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ControlUnit2),cu2_next_main_state)==(?);
  List_ANY_Var(Machine(ControlUnit2),cu2_next_on_state)==(?);
  List_ANY_Var(Machine(ControlUnit2),cu2_next_running_state)==(?);
  List_ANY_Var(Machine(ControlUnit2),cu2_run)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ControlUnit2)) == (CU2_IS_FIRST_SLAVE | ? | ? | ? | cu2_next_main_state,cu2_next_on_state,cu2_next_running_state,cu2_run | ? | seen(Machine(CTX)) | ? | ControlUnit2);
  List_Of_HiddenCst_Ids(Machine(ControlUnit2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ControlUnit2)) == (CU2_IS_FIRST_SLAVE);
  List_Of_VisibleVar_Ids(Machine(ControlUnit2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ControlUnit2)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(ControlUnit2)) == (Type(CU2_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ControlUnit2)) == (Type(cu2_run) == Cst(No_type,No_type);Type(cu2_next_running_state) == Cst(etype(RUNNING_STATE,?,?),etype(RUNNING_STATE,?,?));Type(cu2_next_on_state) == Cst(etype(ON_STATE,?,?),etype(ON_STATE,?,?));Type(cu2_next_main_state) == Cst(etype(MAIN_STATE,?,?),etype(MAIN_STATE,?,?)));
  Observers(Machine(ControlUnit2)) == (Type(cu2_run) == Cst(No_type,No_type);Type(cu2_next_running_state) == Cst(etype(RUNNING_STATE,?,?),etype(RUNNING_STATE,?,?));Type(cu2_next_on_state) == Cst(etype(ON_STATE,?,?),etype(ON_STATE,?,?));Type(cu2_next_main_state) == Cst(etype(MAIN_STATE,?,?),etype(MAIN_STATE,?,?)))
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
