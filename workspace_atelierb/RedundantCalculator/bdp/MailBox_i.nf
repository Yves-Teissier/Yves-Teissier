Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MailBox_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MailBox_i))==(Machine(MailBox));
  Level(Implementation(MailBox_i))==(1);
  Upper_Level(Implementation(MailBox_i))==(Machine(MailBox))
END
&
THEORY LoadedStructureX IS
  Implementation(MailBox_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MailBox_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MailBox_i))==(?);
  Inherited_List_Includes(Implementation(MailBox_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MailBox_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MailBox_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MailBox_i))==(?);
  Context_List_Variables(Implementation(MailBox_i))==(?);
  Abstract_List_Variables(Implementation(MailBox_i))==(?);
  Local_List_Variables(Implementation(MailBox_i))==(?);
  List_Variables(Implementation(MailBox_i))==(?);
  External_List_Variables(Implementation(MailBox_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MailBox_i))==(?);
  Abstract_List_VisibleVariables(Implementation(MailBox_i))==(?);
  External_List_VisibleVariables(Implementation(MailBox_i))==(?);
  Expanded_List_VisibleVariables(Implementation(MailBox_i))==(?);
  List_VisibleVariables(Implementation(MailBox_i))==(cu2_main_state,cu1_main_state,cu2_running_state,cu1_running_state,cu2_on_state,cu1_on_state);
  Internal_List_VisibleVariables(Implementation(MailBox_i))==(cu2_main_state,cu1_main_state,cu2_running_state,cu1_running_state,cu2_on_state,cu1_on_state)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MailBox_i))==(btrue);
  Expanded_List_Invariant(Implementation(MailBox_i))==(btrue);
  Abstract_List_Invariant(Implementation(MailBox_i))==(btrue);
  Context_List_Invariant(Implementation(MailBox_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Implementation(MailBox_i))==(cu1_on_state: ON_STATE & cu2_on_state: ON_STATE & cu1_running_state: RUNNING_STATE & cu2_running_state: RUNNING_STATE & cu1_main_state: MAIN_STATE & cu2_main_state: MAIN_STATE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(MailBox_i))==(btrue);
  Abstract_List_Assertions(Implementation(MailBox_i))==(btrue);
  Context_List_Assertions(Implementation(MailBox_i))==(btrue);
  List_Assertions(Implementation(MailBox_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MailBox_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MailBox_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MailBox_i))==(cu1_on_state:=ON_IDLE;cu2_on_state:=ON_IDLE;cu1_running_state:=UNKNOWN;cu2_running_state:=UNKNOWN;cu1_main_state:=OFF;cu2_main_state:=OFF);
  Context_List_Initialisation(Implementation(MailBox_i))==(skip);
  List_Initialisation(Implementation(MailBox_i))==(cu1_on_state:=ON_IDLE;cu2_on_state:=ON_IDLE;cu1_running_state:=UNKNOWN;cu2_running_state:=UNKNOWN;cu1_main_state:=OFF;cu2_main_state:=OFF)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MailBox_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(MailBox_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MailBox_i))==(btrue);
  List_Context_Constraints(Implementation(MailBox_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MailBox_i))==(mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state);
  List_Operations(Implementation(MailBox_i))==(mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MailBox_i),mb_get_cu1_main_state)==(?);
  List_Input(Implementation(MailBox_i),mb_get_cu2_main_state)==(?);
  List_Input(Implementation(MailBox_i),mb_getCurrentU)==(?);
  List_Input(Implementation(MailBox_i),mb_getCU1Error)==(?);
  List_Input(Implementation(MailBox_i),mb_getCU2Error)==(?);
  List_Input(Implementation(MailBox_i),mb_set_on_state)==(state,cu);
  List_Input(Implementation(MailBox_i),mb_set_running_state)==(state,cu);
  List_Input(Implementation(MailBox_i),mb_set_main_state)==(state,cu)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MailBox_i),mb_get_cu1_main_state)==(resp_cu1_main_state);
  List_Output(Implementation(MailBox_i),mb_get_cu2_main_state)==(resp_cu2_main_state);
  List_Output(Implementation(MailBox_i),mb_getCurrentU)==(current_u);
  List_Output(Implementation(MailBox_i),mb_getCU1Error)==(cu1_error);
  List_Output(Implementation(MailBox_i),mb_getCU2Error)==(cu2_error);
  List_Output(Implementation(MailBox_i),mb_set_on_state)==(?);
  List_Output(Implementation(MailBox_i),mb_set_running_state)==(?);
  List_Output(Implementation(MailBox_i),mb_set_main_state)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MailBox_i),mb_get_cu1_main_state)==(resp_cu1_main_state <-- mb_get_cu1_main_state);
  List_Header(Implementation(MailBox_i),mb_get_cu2_main_state)==(resp_cu2_main_state <-- mb_get_cu2_main_state);
  List_Header(Implementation(MailBox_i),mb_getCurrentU)==(current_u <-- mb_getCurrentU);
  List_Header(Implementation(MailBox_i),mb_getCU1Error)==(cu1_error <-- mb_getCU1Error);
  List_Header(Implementation(MailBox_i),mb_getCU2Error)==(cu2_error <-- mb_getCU2Error);
  List_Header(Implementation(MailBox_i),mb_set_on_state)==(mb_set_on_state(state,cu));
  List_Header(Implementation(MailBox_i),mb_set_running_state)==(mb_set_running_state(state,cu));
  List_Header(Implementation(MailBox_i),mb_set_main_state)==(mb_set_main_state(state,cu))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MailBox_i),mb_get_cu1_main_state)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_get_cu1_main_state)==(btrue);
  Own_Precondition(Implementation(MailBox_i),mb_get_cu2_main_state)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_get_cu2_main_state)==(btrue);
  Own_Precondition(Implementation(MailBox_i),mb_getCurrentU)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_getCurrentU)==(btrue);
  Own_Precondition(Implementation(MailBox_i),mb_getCU1Error)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_getCU1Error)==(btrue);
  Own_Precondition(Implementation(MailBox_i),mb_getCU2Error)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_getCU2Error)==(btrue);
  Own_Precondition(Implementation(MailBox_i),mb_set_on_state)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_set_on_state)==(state: ON_STATE & cu: NAT);
  Own_Precondition(Implementation(MailBox_i),mb_set_running_state)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_set_running_state)==(state: RUNNING_STATE & cu: NAT);
  Own_Precondition(Implementation(MailBox_i),mb_set_main_state)==(btrue);
  List_Precondition(Implementation(MailBox_i),mb_set_main_state)==(state: MAIN_STATE & cu: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MailBox_i),mb_set_main_state)==(state: MAIN_STATE & cu: NAT | cu = 1 ==> cu1_main_state:=state [] not(cu = 1) ==> cu2_main_state:=state);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_set_running_state)==(state: RUNNING_STATE & cu: NAT | cu = 1 ==> cu1_running_state:=state [] not(cu = 1) ==> cu2_running_state:=state);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_set_on_state)==(state: ON_STATE & cu: NAT | cu = 1 ==> cu1_on_state:=state [] not(cu = 1) ==> cu2_on_state:=state);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_getCU2Error)==(btrue | skip);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_getCU1Error)==(btrue | skip);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_getCurrentU)==(btrue | skip);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_get_cu2_main_state)==(btrue | resp_cu2_main_state:=cu2_main_state);
  Expanded_List_Substitution(Implementation(MailBox_i),mb_get_cu1_main_state)==(btrue | resp_cu1_main_state:=cu1_main_state);
  List_Substitution(Implementation(MailBox_i),mb_get_cu1_main_state)==(resp_cu1_main_state:=cu1_main_state);
  List_Substitution(Implementation(MailBox_i),mb_get_cu2_main_state)==(resp_cu2_main_state:=cu2_main_state);
  List_Substitution(Implementation(MailBox_i),mb_getCurrentU)==(skip);
  List_Substitution(Implementation(MailBox_i),mb_getCU1Error)==(skip);
  List_Substitution(Implementation(MailBox_i),mb_getCU2Error)==(skip);
  List_Substitution(Implementation(MailBox_i),mb_set_on_state)==(IF cu = 1 THEN cu1_on_state:=state ELSE cu2_on_state:=state END);
  List_Substitution(Implementation(MailBox_i),mb_set_running_state)==(IF cu = 1 THEN cu1_running_state:=state ELSE cu2_running_state:=state END);
  List_Substitution(Implementation(MailBox_i),mb_set_main_state)==(IF cu = 1 THEN cu1_main_state:=state ELSE cu2_main_state:=state END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MailBox_i))==(?);
  Inherited_List_Constants(Implementation(MailBox_i))==(?);
  List_Constants(Implementation(MailBox_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(MailBox_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(MailBox_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Implementation(MailBox_i))==(?);
  Context_List_Sets(Implementation(MailBox_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Own_Enumerated(Implementation(MailBox_i))==(?);
  List_Valuable_Sets(Implementation(MailBox_i))==(?);
  Inherited_List_Enumerated(Implementation(MailBox_i))==(?);
  Inherited_List_Defered(Implementation(MailBox_i))==(?);
  Inherited_List_Sets(Implementation(MailBox_i))==(?);
  List_Enumerated(Implementation(MailBox_i))==(?);
  List_Defered(Implementation(MailBox_i))==(?);
  List_Sets(Implementation(MailBox_i))==(?);
  Set_Definition(Implementation(MailBox_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(MailBox_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MailBox_i))==(?);
  Expanded_List_HiddenConstants(Implementation(MailBox_i))==(?);
  List_HiddenConstants(Implementation(MailBox_i))==(?);
  External_List_HiddenConstants(Implementation(MailBox_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MailBox_i))==(btrue);
  Context_List_Properties(Implementation(MailBox_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Implementation(MailBox_i))==(btrue);
  List_Properties(Implementation(MailBox_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MailBox_i))==(aa: aa);
  List_Values(Implementation(MailBox_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(MailBox_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(MailBox_i))==(?);
  Seen_Context_List_Invariant(Implementation(MailBox_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(MailBox_i))==(btrue);
  Seen_Context_List_Properties(Implementation(MailBox_i))==(btrue);
  Seen_List_Constraints(Implementation(MailBox_i))==(btrue);
  Seen_List_Operations(Implementation(MailBox_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(MailBox_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(MailBox_i))==(Type(cu1_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu2_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu1_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu1_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_main_state) == Mvv(etype(MAIN_STATE,?,?)));
  Operations(Implementation(MailBox_i))==(Type(mb_set_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(mb_set_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?));Type(mb_getCU2Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCU1Error) == Cst(btype(BOOL,0,1),No_type);Type(mb_getCurrentU) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(mb_get_cu2_main_state) == Cst(etype(MAIN_STATE,?,?),No_type);Type(mb_get_cu1_main_state) == Cst(etype(MAIN_STATE,?,?),No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(MailBox_i),Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants_Env(Implementation(MailBox_i),Machine(CTX))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)));
  Enumerate_Definition(Implementation(MailBox_i),Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Enumerate_Definition(Implementation(MailBox_i),Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Enumerate_Definition(Implementation(MailBox_i),Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MailBox_i)) == (? | ? | ? | ? | mb_get_cu1_main_state,mb_get_cu2_main_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state | ? | seen(Machine(CTX)) | ? | MailBox_i);
  List_Of_HiddenCst_Ids(Implementation(MailBox_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(MailBox_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(MailBox_i)) == (cu2_main_state,cu1_main_state,cu2_running_state,cu1_running_state,cu2_on_state,cu1_on_state | ?);
  List_Of_Ids_SeenBNU(Implementation(MailBox_i)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(MailBox_i)) == (Type(cu2_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu1_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu1_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu1_on_state) == Mvv(etype(ON_STATE,?,?)))
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
  List_Local_Operations(Implementation(MailBox_i))==(?)
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
  TypingPredicate(Implementation(MailBox_i))==(cu1_on_state: ON_STATE & cu2_on_state: ON_STATE & cu1_running_state: RUNNING_STATE & cu2_running_state: RUNNING_STATE & cu1_main_state: MAIN_STATE & cu2_main_state: MAIN_STATE)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
