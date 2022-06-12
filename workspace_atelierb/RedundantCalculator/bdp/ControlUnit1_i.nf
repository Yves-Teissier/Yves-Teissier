Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(ControlUnit1_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(ControlUnit1_i))==(Machine(ControlUnit1));
  Level(Implementation(ControlUnit1_i))==(1);
  Upper_Level(Implementation(ControlUnit1_i))==(Machine(ControlUnit1))
END
&
THEORY LoadedStructureX IS
  Implementation(ControlUnit1_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(ControlUnit1_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(ControlUnit1_i))==(MailBox);
  Inherited_List_Includes(Implementation(ControlUnit1_i))==(MailBox)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(ControlUnit1_i))==(?);
  Context_List_Variables(Implementation(ControlUnit1_i))==(?);
  Abstract_List_Variables(Implementation(ControlUnit1_i))==(?);
  Local_List_Variables(Implementation(ControlUnit1_i))==(?);
  List_Variables(Implementation(ControlUnit1_i))==(?);
  External_List_Variables(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(ControlUnit1_i))==(?);
  Abstract_List_VisibleVariables(Implementation(ControlUnit1_i))==(?);
  External_List_VisibleVariables(Implementation(ControlUnit1_i))==(?);
  Expanded_List_VisibleVariables(Implementation(ControlUnit1_i))==(?);
  List_VisibleVariables(Implementation(ControlUnit1_i))==(IS_MASTER,IS_ERROR_RECEIVED_BEFORE,IS_ERROR_BEFORE,IS_MASTER_BEFORE,IS_FIRST_ELECTION,prev_main_state,cu2_main_state,cu1_error,current_u);
  Internal_List_VisibleVariables(Implementation(ControlUnit1_i))==(IS_MASTER,IS_ERROR_RECEIVED_BEFORE,IS_ERROR_BEFORE,IS_MASTER_BEFORE,IS_FIRST_ELECTION,prev_main_state,cu2_main_state,cu1_error,current_u)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(ControlUnit1_i))==(btrue);
  Abstract_List_Invariant(Implementation(ControlUnit1_i))==(btrue);
  Expanded_List_Invariant(Implementation(ControlUnit1_i))==(btrue);
  Context_List_Invariant(Implementation(ControlUnit1_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Implementation(ControlUnit1_i))==(current_u: NAT & cu1_error: BOOL & cu2_main_state: MAIN_STATE & prev_main_state: MAIN_STATE & IS_FIRST_ELECTION: BOOL & IS_MASTER_BEFORE: BOOL & IS_ERROR_BEFORE: BOOL & IS_ERROR_RECEIVED_BEFORE: BOOL & IS_MASTER: BOOL)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(ControlUnit1_i))==(btrue);
  Expanded_List_Assertions(Implementation(ControlUnit1_i))==(btrue);
  Context_List_Assertions(Implementation(ControlUnit1_i))==(btrue);
  List_Assertions(Implementation(ControlUnit1_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(ControlUnit1_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(ControlUnit1_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(ControlUnit1_i))==((0: INT | current_u:=0);cu1_error:=FALSE;cu2_main_state:=OFF;prev_main_state:=OFF;IS_FIRST_ELECTION:=TRUE;IS_MASTER_BEFORE:=FALSE;IS_ERROR_BEFORE:=FALSE;IS_ERROR_RECEIVED_BEFORE:=FALSE;IS_MASTER:=FALSE);
  Context_List_Initialisation(Implementation(ControlUnit1_i))==(skip);
  List_Initialisation(Implementation(ControlUnit1_i))==(current_u:=0;cu1_error:=FALSE;cu2_main_state:=OFF;prev_main_state:=OFF;IS_FIRST_ELECTION:=TRUE;IS_MASTER_BEFORE:=FALSE;IS_ERROR_BEFORE:=FALSE;IS_ERROR_RECEIVED_BEFORE:=FALSE;IS_MASTER:=FALSE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(ControlUnit1_i),Machine(MailBox))==(?);
  List_Instanciated_Parameters(Implementation(ControlUnit1_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(ControlUnit1_i),Machine(MailBox))==(btrue);
  List_Constraints(Implementation(ControlUnit1_i))==(btrue);
  List_Context_Constraints(Implementation(ControlUnit1_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(ControlUnit1_i))==(cu1_next_main_state,cu1_next_on_state,cu1_next_running_state,cu1_run);
  List_Operations(Implementation(ControlUnit1_i))==(cu1_next_main_state,cu1_next_on_state,cu1_next_running_state,cu1_run)
END
&
THEORY ListInputX IS
  List_Input(Implementation(ControlUnit1_i),cu1_next_main_state)==(state);
  List_Input(Implementation(ControlUnit1_i),cu1_next_on_state)==(state);
  List_Input(Implementation(ControlUnit1_i),cu1_next_running_state)==(state);
  List_Input(Implementation(ControlUnit1_i),cu1_run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(ControlUnit1_i),cu1_next_main_state)==(next_main_state);
  List_Output(Implementation(ControlUnit1_i),cu1_next_on_state)==(next_on_state);
  List_Output(Implementation(ControlUnit1_i),cu1_next_running_state)==(next_running_state);
  List_Output(Implementation(ControlUnit1_i),cu1_run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(ControlUnit1_i),cu1_next_main_state)==(next_main_state <-- cu1_next_main_state(state));
  List_Header(Implementation(ControlUnit1_i),cu1_next_on_state)==(next_on_state <-- cu1_next_on_state(state));
  List_Header(Implementation(ControlUnit1_i),cu1_next_running_state)==(next_running_state <-- cu1_next_running_state(state));
  List_Header(Implementation(ControlUnit1_i),cu1_run)==(cu1_run)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(ControlUnit1_i),cu1_next_main_state)==(btrue);
  List_Precondition(Implementation(ControlUnit1_i),cu1_next_main_state)==(state: MAIN_STATE);
  Own_Precondition(Implementation(ControlUnit1_i),cu1_next_on_state)==(btrue);
  List_Precondition(Implementation(ControlUnit1_i),cu1_next_on_state)==(state: ON_STATE);
  Own_Precondition(Implementation(ControlUnit1_i),cu1_next_running_state)==(btrue);
  List_Precondition(Implementation(ControlUnit1_i),cu1_next_running_state)==(state: RUNNING_STATE);
  Own_Precondition(Implementation(ControlUnit1_i),cu1_run)==(btrue);
  List_Precondition(Implementation(ControlUnit1_i),cu1_run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(ControlUnit1_i),cu1_run)==(btrue | skip);
  Expanded_List_Substitution(Implementation(ControlUnit1_i),cu1_next_running_state)==(state: RUNNING_STATE | state = SLAVE ==> (SLAVE: RUNNING_STATE & 1: NAT | skip) [] not(state = SLAVE) ==> (state = MASTER ==> (MASTER: RUNNING_STATE & 1: NAT | skip) [] not(state = MASTER) ==> skip);(btrue | @(resp_cu1_main_state$0).(resp_cu1_main_state$0: MAIN_STATE ==> cu2_main_state:=resp_cu1_main_state$0));(cu2_main_state = ERROR ==> next_running_state:=MASTER [] not(cu2_main_state = ERROR) ==> skip));
  Expanded_List_Substitution(Implementation(ControlUnit1_i),cu1_next_on_state)==(state: ON_STATE | (btrue | @(current_u$0).(current_u$0: NAT ==> current_u:=current_u$0));(current_u>U_LOW & current_u<U_HIGH ==> next_on_state:=RUNNING [] not(current_u>U_LOW & current_u<U_HIGH) ==> skip);(state = INITIALIZING ==> (INITIALIZING: ON_STATE & 1: NAT | skip) [] not(state = INITIALIZING) ==> skip));
  Expanded_List_Substitution(Implementation(ControlUnit1_i),cu1_next_main_state)==(state: MAIN_STATE | state = ERROR ==> (ERROR: MAIN_STATE & 1: NAT | skip) [] not(state = ERROR) ==> (state = SHUTDOWN ==> (prev_main_state: MAIN_STATE & 1: NAT | skip) [] not(state = SHUTDOWN) ==> skip);(btrue | @(current_u$0).(current_u$0: NAT ==> current_u:=current_u$0));(current_u>U_MIN ==> next_main_state:=ON [] not(current_u>U_MIN) ==> skip);(current_u<U_UNDER or current_u>U_OVER ==> next_main_state:=SHUTDOWN [] not(current_u<U_UNDER or current_u>U_OVER) ==> skip);(current_u>U_LOW & current_u<U_HIGH ==> next_main_state:=ON [] not(current_u>U_LOW & current_u<U_HIGH) ==> skip);(current_u<U_MIN ==> next_main_state:=OFF [] not(current_u<U_MIN) ==> skip);(btrue | @(cu1_error$0).(cu1_error$0: BOOL ==> cu1_error:=cu1_error$0));(cu1_error = TRUE ==> next_main_state:=ERROR [] not(cu1_error = TRUE) ==> skip));
  List_Substitution(Implementation(ControlUnit1_i),cu1_next_main_state)==(IF state = ERROR THEN mb_set_main_state(ERROR,1) ELSIF state = SHUTDOWN THEN mb_set_main_state(prev_main_state,1) END;current_u <-- mb_getCurrentU;IF current_u>U_MIN THEN next_main_state:=ON END;IF current_u<U_UNDER or current_u>U_OVER THEN next_main_state:=SHUTDOWN END;IF current_u>U_LOW & current_u<U_HIGH THEN next_main_state:=ON END;IF current_u<U_MIN THEN next_main_state:=OFF END;cu1_error <-- mb_getCU1Error;IF cu1_error = TRUE THEN next_main_state:=ERROR END);
  List_Substitution(Implementation(ControlUnit1_i),cu1_next_on_state)==(current_u <-- mb_getCurrentU;IF current_u>U_LOW & current_u<U_HIGH THEN next_on_state:=RUNNING END;IF state = INITIALIZING THEN mb_set_on_state(INITIALIZING,1) END);
  List_Substitution(Implementation(ControlUnit1_i),cu1_next_running_state)==(IF state = SLAVE THEN mb_set_running_state(SLAVE,1) ELSIF state = MASTER THEN mb_set_running_state(MASTER,1) END;cu2_main_state <-- mb_get_cu1_main_state;IF cu2_main_state = ERROR THEN next_running_state:=MASTER END);
  List_Substitution(Implementation(ControlUnit1_i),cu1_run)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(ControlUnit1_i))==(CU1_IS_FIRST_SLAVE);
  Inherited_List_Constants(Implementation(ControlUnit1_i))==(CU1_IS_FIRST_SLAVE);
  List_Constants(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(ControlUnit1_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(ControlUnit1_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Implementation(ControlUnit1_i))==(?);
  Context_List_Sets(Implementation(ControlUnit1_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Own_Enumerated(Implementation(ControlUnit1_i))==(?);
  List_Valuable_Sets(Implementation(ControlUnit1_i))==(?);
  Inherited_List_Enumerated(Implementation(ControlUnit1_i))==(?);
  Inherited_List_Defered(Implementation(ControlUnit1_i))==(?);
  Inherited_List_Sets(Implementation(ControlUnit1_i))==(?);
  List_Enumerated(Implementation(ControlUnit1_i))==(?);
  List_Defered(Implementation(ControlUnit1_i))==(?);
  List_Sets(Implementation(ControlUnit1_i))==(?);
  Set_Definition(Implementation(ControlUnit1_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(ControlUnit1_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(ControlUnit1_i))==(?);
  Expanded_List_HiddenConstants(Implementation(ControlUnit1_i))==(?);
  List_HiddenConstants(Implementation(ControlUnit1_i))==(?);
  External_List_HiddenConstants(Implementation(ControlUnit1_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(ControlUnit1_i))==(CU1_IS_FIRST_SLAVE: BOOL);
  Context_List_Properties(Implementation(ControlUnit1_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Implementation(ControlUnit1_i))==(btrue);
  List_Properties(Implementation(ControlUnit1_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(ControlUnit1_i))==(btrue);
  Values_Subs(Implementation(ControlUnit1_i))==(CU1_IS_FIRST_SLAVE: TRUE);
  List_Values(Implementation(ControlUnit1_i))==(CU1_IS_FIRST_SLAVE = TRUE)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(ControlUnit1_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(ControlUnit1_i))==(?);
  Seen_Context_List_Invariant(Implementation(ControlUnit1_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(ControlUnit1_i))==(btrue);
  Seen_Context_List_Properties(Implementation(ControlUnit1_i))==(btrue);
  Seen_List_Constraints(Implementation(ControlUnit1_i))==(btrue);
  Seen_List_Operations(Implementation(ControlUnit1_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(ControlUnit1_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(ControlUnit1_i),Machine(MailBox))==(mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(ControlUnit1_i))==(Type(current_u) == Mvv(btype(INTEGER,?,?));Type(cu1_error) == Mvv(btype(BOOL,?,?));Type(cu2_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(prev_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(IS_FIRST_ELECTION) == Mvv(btype(BOOL,?,?));Type(IS_MASTER_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_ERROR_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_ERROR_RECEIVED_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_MASTER) == Mvv(btype(BOOL,?,?)));
  Operations(Implementation(ControlUnit1_i))==(Type(cu1_run) == Cst(No_type,No_type);Type(cu1_next_running_state) == Cst(etype(RUNNING_STATE,?,?),etype(RUNNING_STATE,?,?));Type(cu1_next_on_state) == Cst(etype(ON_STATE,?,?),etype(ON_STATE,?,?));Type(cu1_next_main_state) == Cst(etype(MAIN_STATE,?,?),etype(MAIN_STATE,?,?)));
  Constants(Implementation(ControlUnit1_i))==(Type(CU1_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(ControlUnit1_i),Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants_Env(Implementation(ControlUnit1_i),Machine(CTX))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)));
  Enumerate_Definition(Implementation(ControlUnit1_i),Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Enumerate_Definition(Implementation(ControlUnit1_i),Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Enumerate_Definition(Implementation(ControlUnit1_i),Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(ControlUnit1_i)) == (? | ? | ? | ? | cu1_next_main_state,cu1_next_on_state,cu1_next_running_state,cu1_run | ? | seen(Machine(CTX)),imported(Machine(MailBox)) | ? | ControlUnit1_i);
  List_Of_HiddenCst_Ids(Implementation(ControlUnit1_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(ControlUnit1_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(ControlUnit1_i)) == (IS_MASTER,IS_ERROR_RECEIVED_BEFORE,IS_ERROR_BEFORE,IS_MASTER_BEFORE,IS_FIRST_ELECTION,prev_main_state,cu2_main_state,cu1_error,current_u | ?);
  List_Of_Ids_SeenBNU(Implementation(ControlUnit1_i)) == (seen(Machine(CTX)): (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ? | ?));
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
THEORY ConstantsEnvX IS
  Constants(Implementation(ControlUnit1_i)) == (Type(CU1_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(ControlUnit1_i)) == (Type(IS_MASTER) == Mvv(btype(BOOL,?,?));Type(IS_ERROR_RECEIVED_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_ERROR_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_MASTER_BEFORE) == Mvv(btype(BOOL,?,?));Type(IS_FIRST_ELECTION) == Mvv(btype(BOOL,?,?));Type(prev_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu1_error) == Mvv(btype(BOOL,?,?));Type(current_u) == Mvv(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(ControlUnit1_i))==(?)
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
  TypingPredicate(Implementation(ControlUnit1_i))==(current_u: INTEGER & cu1_error: BOOL & cu2_main_state: MAIN_STATE & prev_main_state: MAIN_STATE & IS_FIRST_ELECTION: BOOL & IS_MASTER_BEFORE: BOOL & IS_ERROR_BEFORE: BOOL & IS_ERROR_RECEIVED_BEFORE: BOOL & IS_MASTER: BOOL)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(ControlUnit1_i),Machine(MailBox))==(?);
  ImportedVisVariablesList(Implementation(ControlUnit1_i),Machine(MailBox))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
