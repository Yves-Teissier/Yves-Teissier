Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(IHM_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(IHM_i))==(Machine(IHM));
  Level(Implementation(IHM_i))==(1);
  Upper_Level(Implementation(IHM_i))==(Machine(IHM))
END
&
THEORY LoadedStructureX IS
  Implementation(IHM_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(IHM_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(IHM_i))==(?);
  Inherited_List_Includes(Implementation(IHM_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(IHM_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(IHM_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(IHM_i))==(?);
  Context_List_Variables(Implementation(IHM_i))==(?);
  Abstract_List_Variables(Implementation(IHM_i))==(?);
  Local_List_Variables(Implementation(IHM_i))==(?);
  List_Variables(Implementation(IHM_i))==(?);
  External_List_Variables(Implementation(IHM_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(IHM_i))==(?);
  Abstract_List_VisibleVariables(Implementation(IHM_i))==(?);
  External_List_VisibleVariables(Implementation(IHM_i))==(?);
  Expanded_List_VisibleVariables(Implementation(IHM_i))==(?);
  List_VisibleVariables(Implementation(IHM_i))==(?);
  Internal_List_VisibleVariables(Implementation(IHM_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(IHM_i))==(btrue);
  Expanded_List_Invariant(Implementation(IHM_i))==(btrue);
  Abstract_List_Invariant(Implementation(IHM_i))==(btrue);
  Context_List_Invariant(Implementation(IHM_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  List_Invariant(Implementation(IHM_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(IHM_i))==(btrue);
  Abstract_List_Assertions(Implementation(IHM_i))==(btrue);
  Context_List_Assertions(Implementation(IHM_i))==(btrue);
  List_Assertions(Implementation(IHM_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(IHM_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(IHM_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(IHM_i))==(skip);
  Context_List_Initialisation(Implementation(IHM_i))==(skip);
  List_Initialisation(Implementation(IHM_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(IHM_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(IHM_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(IHM_i))==(btrue);
  List_Context_Constraints(Implementation(IHM_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(IHM_i))==(print_on_state,print_running_state,print_main_state);
  List_Operations(Implementation(IHM_i))==(print_on_state,print_running_state,print_main_state)
END
&
THEORY ListInputX IS
  List_Input(Implementation(IHM_i),print_on_state)==(state,cu);
  List_Input(Implementation(IHM_i),print_running_state)==(state,cu);
  List_Input(Implementation(IHM_i),print_main_state)==(state,cu)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(IHM_i),print_on_state)==(?);
  List_Output(Implementation(IHM_i),print_running_state)==(?);
  List_Output(Implementation(IHM_i),print_main_state)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(IHM_i),print_on_state)==(print_on_state(state,cu));
  List_Header(Implementation(IHM_i),print_running_state)==(print_running_state(state,cu));
  List_Header(Implementation(IHM_i),print_main_state)==(print_main_state(state,cu))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(IHM_i),print_on_state)==(btrue);
  List_Precondition(Implementation(IHM_i),print_on_state)==(state: ON_STATE & cu: NAT);
  Own_Precondition(Implementation(IHM_i),print_running_state)==(btrue);
  List_Precondition(Implementation(IHM_i),print_running_state)==(state: RUNNING_STATE & cu: NAT);
  Own_Precondition(Implementation(IHM_i),print_main_state)==(btrue);
  List_Precondition(Implementation(IHM_i),print_main_state)==(state: MAIN_STATE & cu: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(IHM_i),print_main_state)==(state: MAIN_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Implementation(IHM_i),print_running_state)==(state: RUNNING_STATE & cu: NAT | skip);
  Expanded_List_Substitution(Implementation(IHM_i),print_on_state)==(state: ON_STATE & cu: NAT | skip);
  List_Substitution(Implementation(IHM_i),print_on_state)==(skip);
  List_Substitution(Implementation(IHM_i),print_running_state)==(skip);
  List_Substitution(Implementation(IHM_i),print_main_state)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(IHM_i))==(?);
  Inherited_List_Constants(Implementation(IHM_i))==(?);
  List_Constants(Implementation(IHM_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(IHM_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(IHM_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Context_List_Defered(Implementation(IHM_i))==(?);
  Context_List_Sets(Implementation(IHM_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Own_Enumerated(Implementation(IHM_i))==(?);
  List_Valuable_Sets(Implementation(IHM_i))==(?);
  Inherited_List_Enumerated(Implementation(IHM_i))==(?);
  Inherited_List_Defered(Implementation(IHM_i))==(?);
  Inherited_List_Sets(Implementation(IHM_i))==(?);
  List_Enumerated(Implementation(IHM_i))==(?);
  List_Defered(Implementation(IHM_i))==(?);
  List_Sets(Implementation(IHM_i))==(?);
  Set_Definition(Implementation(IHM_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(IHM_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(IHM_i))==(?);
  Expanded_List_HiddenConstants(Implementation(IHM_i))==(?);
  List_HiddenConstants(Implementation(IHM_i))==(?);
  External_List_HiddenConstants(Implementation(IHM_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(IHM_i))==(btrue);
  Context_List_Properties(Implementation(IHM_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Inherited_List_Properties(Implementation(IHM_i))==(btrue);
  List_Properties(Implementation(IHM_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(IHM_i))==(aa: aa);
  List_Values(Implementation(IHM_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(IHM_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(IHM_i))==(?);
  Seen_Context_List_Invariant(Implementation(IHM_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(IHM_i))==(btrue);
  Seen_Context_List_Properties(Implementation(IHM_i))==(btrue);
  Seen_List_Constraints(Implementation(IHM_i))==(btrue);
  Seen_List_Operations(Implementation(IHM_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(IHM_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(IHM_i))==(Type(print_main_state) == Cst(No_type,etype(MAIN_STATE,?,?)*btype(INTEGER,?,?));Type(print_running_state) == Cst(No_type,etype(RUNNING_STATE,?,?)*btype(INTEGER,?,?));Type(print_on_state) == Cst(No_type,etype(ON_STATE,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(IHM_i),Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants_Env(Implementation(IHM_i),Machine(CTX))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)));
  Enumerate_Definition(Implementation(IHM_i),Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Enumerate_Definition(Implementation(IHM_i),Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Enumerate_Definition(Implementation(IHM_i),Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(IHM_i)) == (? | ? | ? | ? | print_on_state,print_running_state,print_main_state | ? | seen(Machine(CTX)) | ? | IHM_i);
  List_Of_HiddenCst_Ids(Implementation(IHM_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(IHM_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(IHM_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(IHM_i)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
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
  List_Local_Operations(Implementation(IHM_i))==(?)
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
  TypingPredicate(Implementation(IHM_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
