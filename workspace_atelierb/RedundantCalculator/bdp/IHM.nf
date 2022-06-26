Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(IHM))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(IHM))==(Machine(IHM));
  Level(Machine(IHM))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(IHM)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(IHM))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(IHM))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(IHM))==(?);
  List_Includes(Machine(IHM))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(IHM))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(IHM))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(IHM))==(?);
  Context_List_Variables(Machine(IHM))==(?);
  Abstract_List_Variables(Machine(IHM))==(?);
  Local_List_Variables(Machine(IHM))==(?);
  List_Variables(Machine(IHM))==(?);
  External_List_Variables(Machine(IHM))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(IHM))==(?);
  Abstract_List_VisibleVariables(Machine(IHM))==(?);
  External_List_VisibleVariables(Machine(IHM))==(?);
  Expanded_List_VisibleVariables(Machine(IHM))==(?);
  List_VisibleVariables(Machine(IHM))==(?);
  Internal_List_VisibleVariables(Machine(IHM))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(IHM))==(btrue);
  Gluing_List_Invariant(Machine(IHM))==(btrue);
  Expanded_List_Invariant(Machine(IHM))==(btrue);
  Abstract_List_Invariant(Machine(IHM))==(btrue);
  Context_List_Invariant(Machine(IHM))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Machine(IHM))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(IHM))==(btrue);
  Abstract_List_Assertions(Machine(IHM))==(btrue);
  Context_List_Assertions(Machine(IHM))==(btrue);
  List_Assertions(Machine(IHM))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(IHM))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(IHM))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(IHM))==(skip);
  Context_List_Initialisation(Machine(IHM))==(skip);
  List_Initialisation(Machine(IHM))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(IHM))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(IHM),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(IHM))==(btrue);
  List_Constraints(Machine(IHM))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(IHM))==(print_on_state,print_running_state,print_main_state);
  List_Operations(Machine(IHM))==(print_on_state,print_running_state,print_main_state)
END
&
THEORY ListInputX IS
  List_Input(Machine(IHM),print_on_state)==(state,cu);
  List_Input(Machine(IHM),print_running_state)==(state,cu);
  List_Input(Machine(IHM),print_main_state)==(state,cu)
END
&
THEORY ListOutputX IS
  List_Output(Machine(IHM),print_on_state)==(?);
  List_Output(Machine(IHM),print_running_state)==(?);
  List_Output(Machine(IHM),print_main_state)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(IHM),print_on_state)==(print_on_state(state,cu));
  List_Header(Machine(IHM),print_running_state)==(print_running_state(state,cu));
  List_Header(Machine(IHM),print_main_state)==(print_main_state(state,cu))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(IHM),print_on_state)==(state: ON_STATE & cu: NAT);
  List_Precondition(Machine(IHM),print_running_state)==(state: RUNNING_STATE & cu: NAT);
  List_Precondition(Machine(IHM),print_main_state)==(state: MAIN_STATE & cu: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(IHM),print_main_state)==(state: MAIN_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Machine(IHM),print_running_state)==(state: RUNNING_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Machine(IHM),print_on_state)==(state: ON_STATE & cu: NAT | skip);
  List_Substitution(Machine(IHM),print_on_state)==(skip);
  List_Substitution(Machine(IHM),print_running_state)==(skip);
  List_Substitution(Machine(IHM),print_main_state)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(IHM))==(?);
  Inherited_List_Constants(Machine(IHM))==(?);
  List_Constants(Machine(IHM))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(IHM),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Machine(IHM))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Machine(IHM))==(?);
  Context_List_Sets(Machine(IHM))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Machine(IHM))==(?);
  Inherited_List_Enumerated(Machine(IHM))==(?);
  Inherited_List_Defered(Machine(IHM))==(?);
  Inherited_List_Sets(Machine(IHM))==(?);
  List_Enumerated(Machine(IHM))==(?);
  List_Defered(Machine(IHM))==(?);
  List_Sets(Machine(IHM))==(?);
  Set_Definition(Machine(IHM),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(IHM),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(IHM))==(?);
  Expanded_List_HiddenConstants(Machine(IHM))==(?);
  List_HiddenConstants(Machine(IHM))==(?);
  External_List_HiddenConstants(Machine(IHM))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(IHM))==(btrue);
  Context_List_Properties(Machine(IHM))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Machine(IHM))==(btrue);
  List_Properties(Machine(IHM))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(IHM),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(IHM))==(?);
  Seen_Context_List_Invariant(Machine(IHM))==(btrue);
  Seen_Context_List_Assertions(Machine(IHM))==(btrue);
  Seen_Context_List_Properties(Machine(IHM))==(btrue);
  Seen_List_Constraints(Machine(IHM))==(btrue);
  Seen_List_Operations(Machine(IHM),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(IHM),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(IHM),print_on_state)==(?);
  List_ANY_Var(Machine(IHM),print_running_state)==(?);
  List_ANY_Var(Machine(IHM),print_main_state)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(IHM)) == (? | ? | ? | ? | print_on_state,print_running_state,print_main_state | ? | seen(Machine(CTX)) | ? | IHM);
  List_Of_HiddenCst_Ids(Machine(IHM)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(IHM)) == (?);
  List_Of_VisibleVar_Ids(Machine(IHM)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(IHM)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(IHM)) == (Type(print_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(print_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(print_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(IHM)) == (Type(print_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(print_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(print_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?)))
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
