Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MailBox))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MailBox))==(Machine(MailBox));
  Level(Machine(MailBox))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MailBox)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MailBox))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MailBox))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MailBox))==(?);
  List_Includes(Machine(MailBox))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MailBox))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MailBox))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MailBox))==(?);
  Context_List_Variables(Machine(MailBox))==(?);
  Abstract_List_Variables(Machine(MailBox))==(?);
  Local_List_Variables(Machine(MailBox))==(?);
  List_Variables(Machine(MailBox))==(?);
  External_List_Variables(Machine(MailBox))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MailBox))==(?);
  Abstract_List_VisibleVariables(Machine(MailBox))==(?);
  External_List_VisibleVariables(Machine(MailBox))==(?);
  Expanded_List_VisibleVariables(Machine(MailBox))==(?);
  List_VisibleVariables(Machine(MailBox))==(?);
  Internal_List_VisibleVariables(Machine(MailBox))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MailBox))==(btrue);
  Gluing_List_Invariant(Machine(MailBox))==(btrue);
  Expanded_List_Invariant(Machine(MailBox))==(btrue);
  Abstract_List_Invariant(Machine(MailBox))==(btrue);
  Context_List_Invariant(Machine(MailBox))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Machine(MailBox))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MailBox))==(btrue);
  Abstract_List_Assertions(Machine(MailBox))==(btrue);
  Context_List_Assertions(Machine(MailBox))==(btrue);
  List_Assertions(Machine(MailBox))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MailBox))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MailBox))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MailBox))==(skip);
  Context_List_Initialisation(Machine(MailBox))==(skip);
  List_Initialisation(Machine(MailBox))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MailBox))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(MailBox),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MailBox))==(btrue);
  List_Constraints(Machine(MailBox))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MailBox))==(mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state);
  List_Operations(Machine(MailBox))==(mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state)
END
&
THEORY ListInputX IS
  List_Input(Machine(MailBox),mb_get_cu1_main_state)==(?);
  List_Input(Machine(MailBox),mb_get_cu2_main_state)==(?);
  List_Input(Machine(MailBox),mb_getCurrentU)==(?);
  List_Input(Machine(MailBox),mb_getCU1Error)==(?);
  List_Input(Machine(MailBox),mb_getCU2Error)==(?);
  List_Input(Machine(MailBox),mb_set_on_state)==(state,cu);
  List_Input(Machine(MailBox),mb_set_running_state)==(state,cu);
  List_Input(Machine(MailBox),mb_set_main_state)==(state,cu)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MailBox),mb_get_cu1_main_state)==(resp_cu1_main_state);
  List_Output(Machine(MailBox),mb_get_cu2_main_state)==(resp_cu2_main_state);
  List_Output(Machine(MailBox),mb_getCurrentU)==(current_u);
  List_Output(Machine(MailBox),mb_getCU1Error)==(cu1_error);
  List_Output(Machine(MailBox),mb_getCU2Error)==(cu2_error);
  List_Output(Machine(MailBox),mb_set_on_state)==(?);
  List_Output(Machine(MailBox),mb_set_running_state)==(?);
  List_Output(Machine(MailBox),mb_set_main_state)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MailBox),mb_get_cu1_main_state)==(resp_cu1_main_state <-- mb_get_cu1_main_state);
  List_Header(Machine(MailBox),mb_get_cu2_main_state)==(resp_cu2_main_state <-- mb_get_cu2_main_state);
  List_Header(Machine(MailBox),mb_getCurrentU)==(current_u <-- mb_getCurrentU);
  List_Header(Machine(MailBox),mb_getCU1Error)==(cu1_error <-- mb_getCU1Error);
  List_Header(Machine(MailBox),mb_getCU2Error)==(cu2_error <-- mb_getCU2Error);
  List_Header(Machine(MailBox),mb_set_on_state)==(mb_set_on_state(state,cu));
  List_Header(Machine(MailBox),mb_set_running_state)==(mb_set_running_state(state,cu));
  List_Header(Machine(MailBox),mb_set_main_state)==(mb_set_main_state(state,cu))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MailBox),mb_get_cu1_main_state)==(btrue);
  List_Precondition(Machine(MailBox),mb_get_cu2_main_state)==(btrue);
  List_Precondition(Machine(MailBox),mb_getCurrentU)==(btrue);
  List_Precondition(Machine(MailBox),mb_getCU1Error)==(btrue);
  List_Precondition(Machine(MailBox),mb_getCU2Error)==(btrue);
  List_Precondition(Machine(MailBox),mb_set_on_state)==(state: ON_STATE & cu: NAT);
  List_Precondition(Machine(MailBox),mb_set_running_state)==(state: RUNNING_STATE & cu: NAT);
  List_Precondition(Machine(MailBox),mb_set_main_state)==(state: MAIN_STATE & cu: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MailBox),mb_set_main_state)==(state: MAIN_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Machine(MailBox),mb_set_running_state)==(state: RUNNING_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Machine(MailBox),mb_set_on_state)==(state: ON_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Machine(MailBox),mb_getCU2Error)==(btrue | @(cu2_error$0).(cu2_error$0: BOOL ==> cu2_error:=cu2_error$0));
  Expanded_List_Substitution(Machine(MailBox),mb_getCU1Error)==(btrue | @(cu1_error$0).(cu1_error$0: BOOL ==> cu1_error:=cu1_error$0));
  Expanded_List_Substitution(Machine(MailBox),mb_getCurrentU)==(btrue | @(current_u$0).(current_u$0: NAT ==> current_u:=current_u$0));
  Expanded_List_Substitution(Machine(MailBox),mb_get_cu2_main_state)==(btrue | @(resp_cu2_main_state$0).(resp_cu2_main_state$0: MAIN_STATE ==> resp_cu2_main_state:=resp_cu2_main_state$0));
  Expanded_List_Substitution(Machine(MailBox),mb_get_cu1_main_state)==(btrue | @(resp_cu1_main_state$0).(resp_cu1_main_state$0: MAIN_STATE ==> resp_cu1_main_state:=resp_cu1_main_state$0));
  List_Substitution(Machine(MailBox),mb_get_cu1_main_state)==(resp_cu1_main_state:: MAIN_STATE);
  List_Substitution(Machine(MailBox),mb_get_cu2_main_state)==(resp_cu2_main_state:: MAIN_STATE);
  List_Substitution(Machine(MailBox),mb_getCurrentU)==(current_u:: NAT);
  List_Substitution(Machine(MailBox),mb_getCU1Error)==(cu1_error:: BOOL);
  List_Substitution(Machine(MailBox),mb_getCU2Error)==(cu2_error:: BOOL);
  List_Substitution(Machine(MailBox),mb_set_on_state)==(skip);
  List_Substitution(Machine(MailBox),mb_set_running_state)==(skip);
  List_Substitution(Machine(MailBox),mb_set_main_state)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MailBox))==(?);
  Inherited_List_Constants(Machine(MailBox))==(?);
  List_Constants(Machine(MailBox))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MailBox),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Machine(MailBox))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Machine(MailBox))==(?);
  Context_List_Sets(Machine(MailBox))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Machine(MailBox))==(?);
  Inherited_List_Enumerated(Machine(MailBox))==(?);
  Inherited_List_Defered(Machine(MailBox))==(?);
  Inherited_List_Sets(Machine(MailBox))==(?);
  List_Enumerated(Machine(MailBox))==(?);
  List_Defered(Machine(MailBox))==(?);
  List_Sets(Machine(MailBox))==(?);
  Set_Definition(Machine(MailBox),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(MailBox),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MailBox))==(?);
  Expanded_List_HiddenConstants(Machine(MailBox))==(?);
  List_HiddenConstants(Machine(MailBox))==(?);
  External_List_HiddenConstants(Machine(MailBox))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MailBox))==(btrue);
  Context_List_Properties(Machine(MailBox))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Machine(MailBox))==(btrue);
  List_Properties(Machine(MailBox))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(MailBox),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(MailBox))==(?);
  Seen_Context_List_Invariant(Machine(MailBox))==(btrue);
  Seen_Context_List_Assertions(Machine(MailBox))==(btrue);
  Seen_Context_List_Properties(Machine(MailBox))==(btrue);
  Seen_List_Constraints(Machine(MailBox))==(btrue);
  Seen_List_Operations(Machine(MailBox),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(MailBox),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MailBox),mb_get_cu1_main_state)==(?);
  List_ANY_Var(Machine(MailBox),mb_get_cu2_main_state)==(?);
  List_ANY_Var(Machine(MailBox),mb_getCurrentU)==(?);
  List_ANY_Var(Machine(MailBox),mb_getCU1Error)==(?);
  List_ANY_Var(Machine(MailBox),mb_getCU2Error)==(?);
  List_ANY_Var(Machine(MailBox),mb_set_on_state)==(?);
  List_ANY_Var(Machine(MailBox),mb_set_running_state)==(?);
  List_ANY_Var(Machine(MailBox),mb_set_main_state)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MailBox)) == (? | ? | ? | ? | mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state | ? | seen(Machine(CTX)) | ? | MailBox);
  List_Of_HiddenCst_Ids(Machine(MailBox)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MailBox)) == (?);
  List_Of_VisibleVar_Ids(Machine(MailBox)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MailBox)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MailBox)) == (Type(mb_set_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?));Type(mb_getCU2Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCU1Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCurrentU) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(mb_get_cu2_main_state) == Cst(etype(MAIN_STATE,?,?),No_type);Type(mb_get_cu1_main_state) == Cst(etype(MAIN_STATE,?,?),No_type));
  Observers(Machine(MailBox)) == (Type(mb_set_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?));Type(mb_getCU2Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCU1Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCurrentU) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(mb_get_cu2_main_state) == Cst(etype(MAIN_STATE,?,?),No_type);Type(mb_get_cu1_main_state) == Cst(etype(MAIN_STATE,?,?),No_type))
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
