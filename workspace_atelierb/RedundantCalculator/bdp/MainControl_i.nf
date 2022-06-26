Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MainControl_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MainControl_i))==(Machine(MainControl));
  Level(Implementation(MainControl_i))==(1);
  Upper_Level(Implementation(MainControl_i))==(Machine(MainControl))
END
&
THEORY LoadedStructureX IS
  Implementation(MainControl_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MainControl_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MainControl_i))==(ControlUnit2,MailBox);
  Inherited_List_Includes(Implementation(MainControl_i))==(MailBox,ControlUnit2)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MainControl_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MainControl_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MainControl_i))==(?);
  Context_List_Variables(Implementation(MainControl_i))==(?);
  Abstract_List_Variables(Implementation(MainControl_i))==(?);
  Local_List_Variables(Implementation(MainControl_i))==(?);
  List_Variables(Implementation(MainControl_i))==(?);
  External_List_Variables(Implementation(MainControl_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MainControl_i))==(?);
  Abstract_List_VisibleVariables(Implementation(MainControl_i))==(?);
  External_List_VisibleVariables(Implementation(MainControl_i))==(?);
  Expanded_List_VisibleVariables(Implementation(MainControl_i))==(?);
  List_VisibleVariables(Implementation(MainControl_i))==(cu2_new_on_state,cu2_new_running_state,cu2_new_main_state,cu2_current_on_state,cu2_current_running_state,cu2_current_main_state);
  Internal_List_VisibleVariables(Implementation(MainControl_i))==(cu2_new_on_state,cu2_new_running_state,cu2_new_main_state,cu2_current_on_state,cu2_current_running_state,cu2_current_main_state)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MainControl_i))==(btrue);
  Abstract_List_Invariant(Implementation(MainControl_i))==(btrue);
  Expanded_List_Invariant(Implementation(MainControl_i))==(btrue);
  Context_List_Invariant(Implementation(MainControl_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Implementation(MainControl_i))==(cu2_current_main_state: MAIN_STATE & cu2_current_running_state: RUNNING_STATE & cu2_current_on_state: ON_STATE & cu2_new_main_state: MAIN_STATE & cu2_new_running_state: RUNNING_STATE & cu2_new_on_state: ON_STATE)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(MainControl_i))==(btrue);
  Expanded_List_Assertions(Implementation(MainControl_i))==(btrue);
  Context_List_Assertions(Implementation(MainControl_i))==(btrue);
  List_Assertions(Implementation(MainControl_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MainControl_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MainControl_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MainControl_i))==(cu2_current_main_state:=OFF;cu2_current_running_state:=UNKNOWN;cu2_current_on_state:=ON_IDLE;cu2_new_main_state:=OFF;cu2_new_running_state:=UNKNOWN;cu2_new_on_state:=ON_IDLE);
  Context_List_Initialisation(Implementation(MainControl_i))==(skip);
  List_Initialisation(Implementation(MainControl_i))==(cu2_current_main_state:=OFF;cu2_current_running_state:=UNKNOWN;cu2_current_on_state:=ON_IDLE;cu2_new_main_state:=OFF;cu2_new_running_state:=UNKNOWN;cu2_new_on_state:=ON_IDLE)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MainControl_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(MainControl_i),Machine(ControlUnit2))==(?);
  List_Instanciated_Parameters(Implementation(MainControl_i),Machine(MailBox))==(?);
  List_Instanciated_Parameters(Implementation(MainControl_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MainControl_i),Machine(MailBox))==(btrue);
  List_Constraints(Implementation(MainControl_i))==(btrue);
  List_Context_Constraints(Implementation(MainControl_i))==(btrue);
  List_Constraints(Implementation(MainControl_i),Machine(ControlUnit2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MainControl_i))==(cu2_run);
  List_Operations(Implementation(MainControl_i))==(cu2_run)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MainControl_i),cu2_run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MainControl_i),cu2_run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MainControl_i),cu2_run)==(cu2_run)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MainControl_i),cu2_run)==(btrue);
  List_Precondition(Implementation(MainControl_i),cu2_run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MainControl_i),cu2_run)==(btrue | (cu2_current_main_state: MAIN_STATE | @(next_main_state$0).(next_main_state$0: NEXT_MAIN_STATE[{cu2_current_main_state}] ==> cu2_new_main_state:=next_main_state$0));cu2_current_main_state:=cu2_new_main_state;(cu2_new_main_state = ON ==> ((cu2_current_on_state: ON_STATE | @(next_on_state$0).(next_on_state$0: NEXT_ON_STATE[{cu2_current_on_state}] ==> cu2_new_on_state:=next_on_state$0));cu2_current_on_state:=cu2_new_on_state) [] not(cu2_new_main_state = ON) ==> skip);(cu2_new_on_state = RUNNING ==> ((cu2_current_running_state: RUNNING_STATE | @(next_running_state$0).(next_running_state$0: NEXT_RUNNING_STATE[{cu2_current_running_state}] ==> cu2_new_running_state:=next_running_state$0));cu2_current_running_state:=cu2_new_running_state) [] not(cu2_new_on_state = RUNNING) ==> skip));
  List_Substitution(Implementation(MainControl_i),cu2_run)==(cu2_new_main_state <-- cu2_next_main_state(cu2_current_main_state);cu2_current_main_state:=cu2_new_main_state;IF cu2_new_main_state = ON THEN cu2_new_on_state <-- cu2_next_on_state(cu2_current_on_state);cu2_current_on_state:=cu2_new_on_state END;IF cu2_new_on_state = RUNNING THEN cu2_new_running_state <-- cu2_next_running_state(cu2_current_running_state);cu2_current_running_state:=cu2_new_running_state END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MainControl_i))==(?);
  Inherited_List_Constants(Implementation(MainControl_i))==(CU2_IS_FIRST_SLAVE);
  List_Constants(Implementation(MainControl_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(MainControl_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(MainControl_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Implementation(MainControl_i))==(?);
  Context_List_Sets(Implementation(MainControl_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Own_Enumerated(Implementation(MainControl_i))==(?);
  List_Valuable_Sets(Implementation(MainControl_i))==(?);
  Inherited_List_Enumerated(Implementation(MainControl_i))==(?);
  Inherited_List_Defered(Implementation(MainControl_i))==(?);
  Inherited_List_Sets(Implementation(MainControl_i))==(?);
  List_Enumerated(Implementation(MainControl_i))==(?);
  List_Defered(Implementation(MainControl_i))==(?);
  List_Sets(Implementation(MainControl_i))==(?);
  Set_Definition(Implementation(MainControl_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(MainControl_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MainControl_i))==(?);
  Expanded_List_HiddenConstants(Implementation(MainControl_i))==(?);
  List_HiddenConstants(Implementation(MainControl_i))==(?);
  External_List_HiddenConstants(Implementation(MainControl_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MainControl_i))==(btrue);
  Context_List_Properties(Implementation(MainControl_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Implementation(MainControl_i))==(CU2_IS_FIRST_SLAVE: BOOL);
  List_Properties(Implementation(MainControl_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MainControl_i))==(aa: aa);
  List_Values(Implementation(MainControl_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(MainControl_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(MainControl_i))==(?);
  Seen_Context_List_Invariant(Implementation(MainControl_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(MainControl_i))==(btrue);
  Seen_Context_List_Properties(Implementation(MainControl_i))==(btrue);
  Seen_List_Constraints(Implementation(MainControl_i))==(btrue);
  Seen_List_Operations(Implementation(MainControl_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(MainControl_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(MainControl_i),Machine(MailBox))==(mb_get_cu_main_state,mb_get_cu_on_state,mb_get_cu_running_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state);
  List_Included_Operations(Implementation(MainControl_i),Machine(ControlUnit2))==(cu2_next_main_state,cu2_next_on_state,cu2_next_running_state)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(MainControl_i))==(Type(cu2_current_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu2_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_new_on_state) == Mvv(etype(ON_STATE,?,?)));
  Operations(Implementation(MainControl_i))==(Type(cu2_run) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(MainControl_i),Machine(ControlUnit2))==(CU2_IS_FIRST_SLAVE);
  List_Constants_Env(Implementation(MainControl_i),Machine(ControlUnit2))==(Type(CU2_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)));
  List_Constants(Implementation(MainControl_i),Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants_Env(Implementation(MainControl_i),Machine(CTX))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)));
  Enumerate_Definition(Implementation(MainControl_i),Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Enumerate_Definition(Implementation(MainControl_i),Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Enumerate_Definition(Implementation(MainControl_i),Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MainControl_i)) == (? | CU2_IS_FIRST_SLAVE | ? | ? | cu2_run | ? | seen(Machine(CTX)),imported(Machine(ControlUnit2)),imported(Machine(MailBox)) | ? | MainControl_i);
  List_Of_HiddenCst_Ids(Implementation(MainControl_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(MainControl_i)) == (CU2_IS_FIRST_SLAVE);
  List_Of_VisibleVar_Ids(Implementation(MainControl_i)) == (cu2_new_on_state,cu2_new_running_state,cu2_new_main_state,cu2_current_on_state,cu2_current_running_state,cu2_current_main_state | ?);
  List_Of_Ids_SeenBNU(Implementation(MainControl_i)) == (seen(Machine(CTX)): (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ? | ?));
  List_Of_Ids(Machine(MailBox)) == (? | ? | ? | ? | mb_get_cu_main_state,mb_get_cu_on_state,mb_get_cu_running_state,mb_getCurrentU,mb_getCU1Error,mb_getCU2Error,mb_set_on_state,mb_set_running_state,mb_set_main_state | ? | seen(Machine(CTX)) | ? | MailBox);
  List_Of_HiddenCst_Ids(Machine(MailBox)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MailBox)) == (?);
  List_Of_VisibleVar_Ids(Machine(MailBox)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MailBox)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?);
  List_Of_Ids(Machine(ControlUnit2)) == (CU2_IS_FIRST_SLAVE | ? | ? | ? | cu2_next_main_state,cu2_next_on_state,cu2_next_running_state | ? | seen(Machine(CTX)) | ? | ControlUnit2);
  List_Of_HiddenCst_Ids(Machine(ControlUnit2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ControlUnit2)) == (CU2_IS_FIRST_SLAVE);
  List_Of_VisibleVar_Ids(Machine(ControlUnit2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ControlUnit2)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(MainControl_i)) == (Type(CU2_IS_FIRST_SLAVE) == Cst(btype(BOOL,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(MainControl_i)) == (Type(cu2_new_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu2_new_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_new_main_state) == Mvv(etype(MAIN_STATE,?,?));Type(cu2_current_on_state) == Mvv(etype(ON_STATE,?,?));Type(cu2_current_running_state) == Mvv(etype(RUNNING_STATE,?,?));Type(cu2_current_main_state) == Mvv(etype(MAIN_STATE,?,?)))
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
  List_Local_Operations(Implementation(MainControl_i))==(?)
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
  TypingPredicate(Implementation(MainControl_i))==(cu2_current_main_state: MAIN_STATE & cu2_current_running_state: RUNNING_STATE & cu2_current_on_state: ON_STATE & cu2_new_main_state: MAIN_STATE & cu2_new_running_state: RUNNING_STATE & cu2_new_on_state: ON_STATE)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(MainControl_i),Machine(ControlUnit2))==(?);
  ImportedVisVariablesList(Implementation(MainControl_i),Machine(ControlUnit2))==(?);
  ImportedVariablesList(Implementation(MainControl_i),Machine(MailBox))==(?);
  ImportedVisVariablesList(Implementation(MainControl_i),Machine(MailBox))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
