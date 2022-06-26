Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Main_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Main_i))==(Machine(Main));
  Level(Implementation(Main_i))==(1);
  Upper_Level(Implementation(Main_i))==(Machine(Main))
END
&
THEORY LoadedStructureX IS
  Implementation(Main_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Main_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Main_i))==(MainControl,MainControl1,MailBox,IHM);
  Inherited_List_Includes(Implementation(Main_i))==(IHM,MailBox,MainControl1,MainControl)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Main_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Main_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Main_i))==(?);
  Context_List_Variables(Implementation(Main_i))==(?);
  Abstract_List_Variables(Implementation(Main_i))==(?);
  Local_List_Variables(Implementation(Main_i))==(?);
  List_Variables(Implementation(Main_i))==(?);
  External_List_Variables(Implementation(Main_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Main_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Main_i))==(?);
  External_List_VisibleVariables(Implementation(Main_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Main_i))==(?);
  List_VisibleVariables(Implementation(Main_i))==(m_cu2_new_on_state,m_cu2_new_running_state,m_cu2_new_main_state,m_cu2_current_on_state,m_cu2_current_running_state,m_cu2_current_main_state,m_cu1_new_on_state,m_cu1_new_running_state,m_cu1_new_main_state,m_cu1_current_on_state,m_cu1_current_running_state,m_cu1_current_main_state);
  Internal_List_VisibleVariables(Implementation(Main_i))==(m_cu2_new_on_state,m_cu2_new_running_state,m_cu2_new_main_state,m_cu2_current_on_state,m_cu2_current_running_state,m_cu2_current_main_state,m_cu1_new_on_state,m_cu1_new_running_state,m_cu1_new_main_state,m_cu1_current_on_state,m_cu1_current_running_state,m_cu1_current_main_state)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Main_i))==(btrue);
  Abstract_List_Invariant(Implementation(Main_i))==(btrue);
  Expanded_List_Invariant(Implementation(Main_i))==(btrue);
  Context_List_Invariant(Implementation(Main_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Implementation(Main_i))==(m_cu1_current_main_state: MAIN_STATE & m_cu1_current_running_state: RUNNING_STATE & m_cu1_current_on_state: ON_STATE & m_cu1_new_main_state: MAIN_STATE & m_cu1_new_running_state: RUNNING_STATE & m_cu1_new_on_state: ON_STATE & m_cu2_current_main_state: MAIN_STATE & m_cu2_current_running_state: RUNNING_STATE & m_cu2_current_on_state: ON_STATE & m_cu2_new_main_state: MAIN_STATE & m_cu2_new_running_state: RUNNING_STATE & m_cu2_new_on_state: ON_STATE & not(m_cu2_current_running_state = SLAVE & m_cu2_current_running_state = SLAVE) & not(m_cu2_current_running_state = MASTER & m_cu2_current_running_state = MASTER))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(Main_i))==(btrue);
  Expanded_List_Assertions(Implementation(Main_i))==(btrue);
  Context_List_Assertions(Implementation(Main_i))==(btrue);
  List_Assertions(Implementation(Main_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Main_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Main_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Main_i))==(m_cu1_current_main_state:=OFF;m_cu1_current_running_state:=UNKNOWN;m_cu1_current_on_state:=ON_IDLE;m_cu1_new_main_state:=OFF;m_cu1_new_running_state:=UNKNOWN;m_cu1_new_on_state:=ON_IDLE;m_cu2_current_main_state:=OFF;m_cu2_current_running_state:=UNKNOWN;m_cu2_current_on_state:=ON_IDLE;m_cu2_new_main_state:=OFF;m_cu2_new_running_state:=UNKNOWN;m_cu2_new_on_state:=ON_IDLE);
  Context_List_Initialisation(Implementation(Main_i))==(skip);
  List_Initialisation(Implementation(Main_i))==(m_cu1_current_main_state:=OFF;m_cu1_current_running_state:=UNKNOWN;m_cu1_current_on_state:=ON_IDLE;m_cu1_new_main_state:=OFF;m_cu1_new_running_state:=UNKNOWN;m_cu1_new_on_state:=ON_IDLE;m_cu2_current_main_state:=OFF;m_cu2_current_running_state:=UNKNOWN;m_cu2_current_on_state:=ON_IDLE;m_cu2_new_main_state:=OFF;m_cu2_new_running_state:=UNKNOWN;m_cu2_new_on_state:=ON_IDLE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Main_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Main_i),Machine(MainControl))==(?);
  List_Instanciated_Parameters(Implementation(Main_i),Machine(MainControl1))==(?);
  List_Instanciated_Parameters(Implementation(Main_i),Machine(MailBox))==(?);
  List_Instanciated_Parameters(Implementation(Main_i),Machine(IHM))==(?);
  List_Instanciated_Parameters(Implementation(Main_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Main_i),Machine(IHM))==(btrue);
  List_Constraints(Implementation(Main_i))==(btrue);
  List_Context_Constraints(Implementation(Main_i))==(btrue);
  List_Constraints(Implementation(Main_i),Machine(MailBox))==(btrue);
  List_Constraints(Implementation(Main_i),Machine(MainControl1))==(btrue);
  List_Constraints(Implementation(Main_i),Machine(MainControl))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Main_i))==(run);
  List_Operations(Implementation(Main_i))==(run)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Main_i),run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Main_i),run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Main_i),run)==(run)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Main_i),run)==(btrue);
  List_Precondition(Implementation(Main_i),run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Main_i),run)==(btrue | (btrue | skip);(btrue | skip);(1: NAT & 1: NAT | @(resp_cu_running_state$0).(resp_cu_running_state$0: RUNNING_STATE ==> m_cu2_current_running_state:=resp_cu_running_state$0));(1: NAT & 2: NAT | @(resp_cu_running_state$0).(resp_cu_running_state$0: RUNNING_STATE ==> m_cu1_current_running_state:=resp_cu_running_state$0));(1: NAT & 1: NAT | @(resp_cu_main_state$0).(resp_cu_main_state$0: MAIN_STATE ==> m_cu2_current_main_state:=resp_cu_main_state$0));(1: NAT & 2: NAT | @(resp_cu_main_state$0).(resp_cu_main_state$0: MAIN_STATE ==> m_cu1_current_main_state:=resp_cu_main_state$0));(1: NAT & 1: NAT | @(resp_cu_on_state$0).(resp_cu_on_state$0: ON_STATE ==> m_cu2_current_on_state:=resp_cu_on_state$0));(1: NAT & 2: NAT | @(resp_cu_on_state$0).(resp_cu_on_state$0: ON_STATE ==> m_cu1_current_on_state:=resp_cu_on_state$0));(m_cu1_current_on_state: ON_STATE & 1: NAT | skip);(m_cu2_current_on_state: ON_STATE & 2: NAT | skip);(m_cu1_current_running_state: RUNNING_STATE & 1: NAT | skip);(m_cu2_current_running_state: RUNNING_STATE & 2: NAT | skip);(m_cu1_current_main_state: MAIN_STATE & 1: NAT | skip);(m_cu2_current_main_state: MAIN_STATE & 2: NAT | skip));
  List_Substitution(Implementation(Main_i),run)==(cu1_run;cu2_run;m_cu2_current_running_state <-- mb_get_cu_running_state(1,1);m_cu1_current_running_state <-- mb_get_cu_running_state(1,2);m_cu2_current_main_state <-- mb_get_cu_main_state(1,1);m_cu1_current_main_state <-- mb_get_cu_main_state(1,2);m_cu2_current_on_state <-- mb_get_cu_on_state(1,1);m_cu1_current_on_state <-- mb_get_cu_on_state(1,2);print_on_state(m_cu1_current_on_state,1);print_on_state(m_cu2_current_on_state,2);print_running_state(m_cu1_current_running_state,1);print_running_state(m_cu2_current_running_state,2);print_main_state(m_cu1_current_main_state,1);print_main_state(m_cu2_current_main_state,2))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Main_i))==(?);
  Inherited_List_Constants(Implementation(Main_i))==(?);
  List_Constants(Implementation(Main_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Main_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(Main_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Implementation(Main_i))==(?);
  Context_List_Sets(Implementation(Main_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Own_Enumerated(Implementation(Main_i))==(?);
  List_Valuable_Sets(Implementation(Main_i))==(?);
  Inherited_List_Enumerated(Implementation(Main_i))==(?);
  Inherited_List_Defered(Implementation(Main_i))==(?);
  Inherited_List_Sets(Implementation(Main_i))==(?);
  List_Enumerated(Implementation(Main_i))==(?);
  List_Defered(Implementation(Main_i))==(?);
  List_Sets(Implementation(Main_i))==(?);
  Set_Definition(Implementation(Main_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(Main_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Main_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Main_i))==(?);
  List_HiddenConstants(Implementation(Main_i))==(?);
  External_List_HiddenConstants(Implementation(Main_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Main_i))==(btrue);
  Context_List_Properties(Implementation(Main_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Implementation(Main_i))==(btrue);
  List_Properties(Implementation(Main_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Main_i))==(aa: aa);
  List_Values(Implementation(Main_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Main_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(Main_i))==(?);
  Seen_Context_List_Invariant(Implementation(Main_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Main_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Main_i))==(btrue);
  Seen_List_Constraints(Implementation(Main_i))==(btrue);
  Seen_List_Operations(Implementation(Main_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(Main_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(Main_i),Machine(IHM))==(print_on_state,print_running_state,print_main_state);
  List_Included_Operations(Implementation(Main_i),Machine(MailBox))==(mb_get_cu_main_state,mb_get_cu_on_state,mb_get_cu_running_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state);
  List_Included_Operations(Implementation(Main_i),Machine(MainControl1))==(cu1_run);
  List_Included_Operations(Implementation(Main_i),Machine(MainControl))==(cu2_run)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Main_i))==(Type(m_cu1_current_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu1_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu1_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu1_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu1_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu1_new_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu2_current_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu2_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu2_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu2_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu2_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu2_new_on_state) == Mvv(etype(ON_STATE,?,?)));
  Operations(Implementation(Main_i))==(Type(run) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Main_i),Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants_Env(Implementation(Main_i),Machine(CTX))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)));
  Enumerate_Definition(Implementation(Main_i),Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Enumerate_Definition(Implementation(Main_i),Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Enumerate_Definition(Implementation(Main_i),Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Main_i)) == (? | ? | ? | ? | run | ? | seen(Machine(CTX)),imported(Machine(MainControl)),imported(Machine(MainControl1)),imported(Machine(MailBox)),imported(Machine(IHM)) | ? | Main_i);
  List_Of_HiddenCst_Ids(Implementation(Main_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Main_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Main_i)) == (m_cu2_new_on_state,m_cu2_new_running_state,m_cu2_new_main_state,m_cu2_current_on_state,m_cu2_current_running_state,m_cu2_current_main_state,m_cu1_new_on_state,m_cu1_new_running_state,m_cu1_new_main_state,m_cu1_current_on_state,m_cu1_current_running_state,m_cu1_current_main_state | ?);
  List_Of_Ids_SeenBNU(Implementation(Main_i)) == (seen(Machine(CTX)): (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ? | ?));
  List_Of_Ids(Machine(IHM)) == (? | ? | ? | ? | print_on_state,print_running_state,print_main_state | ? | seen(Machine(CTX)) | ? | IHM);
  List_Of_HiddenCst_Ids(Machine(IHM)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(IHM)) == (?);
  List_Of_VisibleVar_Ids(Machine(IHM)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(IHM)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?);
  List_Of_Ids(Machine(MailBox)) == (? | ? | ? | ? | mb_get_cu_main_state,mb_get_cu_on_state,mb_get_cu_running_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state | ? | seen(Machine(CTX)) | ? | MailBox);
  List_Of_HiddenCst_Ids(Machine(MailBox)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MailBox)) == (?);
  List_Of_VisibleVar_Ids(Machine(MailBox)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MailBox)) == (?: ?);
  List_Of_Ids(Machine(MainControl1)) == (? | ? | ? | ? | cu1_run | ? | seen(Machine(CTX)) | ? | MainControl1);
  List_Of_HiddenCst_Ids(Machine(MainControl1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MainControl1)) == (?);
  List_Of_VisibleVar_Ids(Machine(MainControl1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MainControl1)) == (?: ?);
  List_Of_Ids(Machine(MainControl)) == (? | ? | ? | ? | cu2_run | ? | seen(Machine(CTX)) | ? | MainControl);
  List_Of_HiddenCst_Ids(Machine(MainControl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MainControl)) == (?);
  List_Of_VisibleVar_Ids(Machine(MainControl)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MainControl)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Main_i)) == (Type(m_cu2_new_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu2_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu2_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu2_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu2_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu2_current_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu1_new_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu1_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu1_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(m_cu1_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(m_cu1_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(m_cu1_current_main_state) == Mvv(etype(MAIN_STATE,?,?)))
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
  List_Local_Operations(Implementation(Main_i))==(?)
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
  TypingPredicate(Implementation(Main_i))==(m_cu1_current_main_state: MAIN_STATE & m_cu1_current_running_state: RUNNING_STATE & m_cu1_current_on_state: ON_STATE & m_cu1_new_main_state: MAIN_STATE & m_cu1_new_running_state: RUNNING_STATE & m_cu1_new_on_state: ON_STATE & m_cu2_current_main_state: MAIN_STATE & m_cu2_current_running_state: RUNNING_STATE & m_cu2_current_on_state: ON_STATE & m_cu2_new_main_state: MAIN_STATE & m_cu2_new_running_state: RUNNING_STATE & m_cu2_new_on_state: ON_STATE)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(Main_i),Machine(MainControl))==(?);
  ImportedVisVariablesList(Implementation(Main_i),Machine(MainControl))==(?);
  ImportedVariablesList(Implementation(Main_i),Machine(MainControl1))==(?);
  ImportedVisVariablesList(Implementation(Main_i),Machine(MainControl1))==(?);
  ImportedVariablesList(Implementation(Main_i),Machine(MailBox))==(?);
  ImportedVisVariablesList(Implementation(Main_i),Machine(MailBox))==(?);
  ImportedVariablesList(Implementation(Main_i),Machine(IHM))==(?);
  ImportedVisVariablesList(Implementation(Main_i),Machine(IHM))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
