Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ControlUnit1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ControlUnit1))==(Machine(ControlUnit1));
  Level(Machine(ControlUnit1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ControlUnit1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ControlUnit1))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ControlUnit1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ControlUnit1))==(?);
  List_Includes(Machine(ControlUnit1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ControlUnit1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ControlUnit1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ControlUnit1))==(?);
  Context_List_Variables(Machine(ControlUnit1))==(?);
  Abstract_List_Variables(Machine(ControlUnit1))==(?);
  Local_List_Variables(Machine(ControlUnit1))==(?);
  List_Variables(Machine(ControlUnit1))==(?);
  External_List_Variables(Machine(ControlUnit1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ControlUnit1))==(?);
  Abstract_List_VisibleVariables(Machine(ControlUnit1))==(?);
  External_List_VisibleVariables(Machine(ControlUnit1))==(?);
  Expanded_List_VisibleVariables(Machine(ControlUnit1))==(?);
  List_VisibleVariables(Machine(ControlUnit1))==(?);
  Internal_List_VisibleVariables(Machine(ControlUnit1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ControlUnit1))==(btrue);
  Gluing_List_Invariant(Machine(ControlUnit1))==(btrue);
  Expanded_List_Invariant(Machine(ControlUnit1))==(btrue);
  Abstract_List_Invariant(Machine(ControlUnit1))==(btrue);
  Context_List_Invariant(Machine(ControlUnit1))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Machine(ControlUnit1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ControlUnit1))==(btrue);
  Abstract_List_Assertions(Machine(ControlUnit1))==(btrue);
  Context_List_Assertions(Machine(ControlUnit1))==(btrue);
  List_Assertions(Machine(ControlUnit1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ControlUnit1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ControlUnit1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ControlUnit1))==(skip);
  Context_List_Initialisation(Machine(ControlUnit1))==(skip);
  List_Initialisation(Machine(ControlUnit1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ControlUnit1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(ControlUnit1),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ControlUnit1))==(btrue);
  List_Constraints(Machine(ControlUnit1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ControlUnit1))==(cu1_next_main_state,cu1_next_on_state,cu1_next_running_state);
  List_Operations(Machine(ControlUnit1))==(cu1_next_main_state,cu1_next_on_state,cu1_next_running_state)
END
&
THEORY ListInputX IS
  List_Input(Machine(ControlUnit1),cu1_next_main_state)==(state);
  List_Input(Machine(ControlUnit1),cu1_next_on_state)==(state);
  List_Input(Machine(ControlUnit1),cu1_next_running_state)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ControlUnit1),cu1_next_main_state)==(next_main_state);
  List_Output(Machine(ControlUnit1),cu1_next_on_state)==(next_on_state);
  List_Output(Machine(ControlUnit1),cu1_next_running_state)==(next_running_state)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ControlUnit1),cu1_next_main_state)==(next_main_state <-- cu1_next_main_state(state));
  List_Header(Machine(ControlUnit1),cu1_next_on_state)==(next_on_state <-- cu1_next_on_state(state));
  List_Header(Machine(ControlUnit1),cu1_next_running_state)==(next_running_state <-- cu1_next_running_state(state))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ControlUnit1),cu1_next_main_state)==(state: MAIN_STATE);
  List_Precondition(Machine(ControlUnit1),cu1_next_on_state)==(state: ON_STATE);
  List_Precondition(Machine(ControlUnit1),cu1_next_running_state)==(state: RUNNING_STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ControlUnit1),cu1_next_running_state)==(state: RUNNING_STATE | @(next_running_state$0).(next_running_state$0: NEXT_RUNNING_STATE[{state}] ==> next_running_state:=next_running_state$0));
  Expanded_List_Substitution(Machine(ControlUnit1),cu1_next_on_state)==(state: ON_STATE | @(next_on_state$0).(next_on_state$0: NEXT_ON_STATE[{state}] ==> next_on_state:=next_on_state$0));
  Expanded_List_Substitution(Machine(ControlUnit1),cu1_next_main_state)==(state: MAIN_STATE | @(next_main_state$0).(next_main_state$0: NEXT_MAIN_STATE[{state}] ==> next_main_state:=next_main_state$0));
  List_Substitution(Machine(ControlUnit1),cu1_next_main_state)==(next_main_state:: NEXT_MAIN_STATE[{state}]);
  List_Substitution(Machine(ControlUnit1),cu1_next_on_state)==(next_on_state:: NEXT_ON_STATE[{state}]);
  List_Substitution(Machine(ControlUnit1),cu1_next_running_state)==(next_running_state:: NEXT_RUNNING_STATE[{state}])
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ControlUnit1))==(CU1_IS_FIRST_SLAVE);
  Inherited_List_Constants(Machine(ControlUnit1))==(?);
  List_Constants(Machine(ControlUnit1))==(CU1_IS_FIRST_SLAVE)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(ControlUnit1),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Machine(ControlUnit1))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Machine(ControlUnit1))==(?);
  Context_List_Sets(Machine(ControlUnit1))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Machine(ControlUnit1))==(?);
  Inherited_List_Enumerated(Machine(ControlUnit1))==(?);
  Inherited_List_Defered(Machine(ControlUnit1))==(?);
  Inherited_List_Sets(Machine(ControlUnit1))==(?);
  List_Enumerated(Machine(ControlUnit1))==(?);
  List_Defered(Machine(ControlUnit1))==(?);
  List_Sets(Machine(ControlUnit1))==(?);
  Set_Definition(Machine(ControlUnit1),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(ControlUnit1),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ControlUnit1))==(?);
  Expanded_List_HiddenConstants(Machine(ControlUnit1))==(?);
  List_HiddenConstants(Machine(ControlUnit1))==(?);
  External_List_HiddenConstants(Machine(ControlUnit1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ControlUnit1))==(btrue);
  Context_List_Properties(Machine(ControlUnit1))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Machine(ControlUnit1))==(btrue);
  List_Properties(Machine(ControlUnit1))==(CU1_IS_FIRST_SLAVE: BOOL)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(ControlUnit1),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(ControlUnit1))==(?);
  Seen_Context_List_Invariant(Machine(ControlUnit1))==(btrue);
  Seen_Context_List_Assertions(Machine(ControlUnit1))==(btrue);
  Seen_Context_List_Properties(Machine(ControlUnit1))==(btrue);
  Seen_List_Constraints(Machine(ControlUnit1))==(btrue);
  Seen_List_Operations(Machine(ControlUnit1),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(ControlUnit1),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ControlUnit1),cu1_next_main_state)==(?);
  List_ANY_Var(Machine(ControlUnit1),cu1_next_on_state)==(?);
  List_ANY_Var(Machine(ControlUnit1),cu1_next_running_state)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ControlUnit1)) == (CU1_IS_FIRST_SLAVE | ? | ? | ? | cu1_next_main_state,cu1_next_on_state,cu1_next_running_state | ? | seen(Machine(CTX)) | ? | ControlUnit1);
  List_Of_HiddenCst_Ids(Machine(ControlUnit1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ControlUnit1)) == (CU1_IS_FIRST_SLAVE);
  List_Of_VisibleVar_Ids(Machine(ControlUnit1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ControlUnit1)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(ControlUnit1)) == (Type(CU1_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ControlUnit1)) == (Type(cu1_next_running_state) == Cst(etype(RUNNING_STATE,?,?),etype(RUNNING_STATE,?,?));Type(cu1_next_on_state) == Cst(etype(ON_STATE,?,?),etype(ON_STATE,?,?));Type(cu1_next_main_state) == Cst(etype(MAIN_STATE,?,?),etype(MAIN_STATE,?,?)));
  Observers(Machine(ControlUnit1)) == (Type(cu1_next_running_state) == Cst(etype(RUNNING_STATE,?,?),etype(RUNNING_STATE,?,?));Type(cu1_next_on_state) == Cst(etype(ON_STATE,?,?),etype(ON_STATE,?,?));Type(cu1_next_main_state) == Cst(etype(MAIN_STATE,?,?),etype(MAIN_STATE,?,?)))
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
