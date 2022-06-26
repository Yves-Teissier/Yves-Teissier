Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(CTX_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(CTX_i))==(Machine(CTX));
  Level(Implementation(CTX_i))==(1);
  Upper_Level(Implementation(CTX_i))==(Machine(CTX))
END
&
THEORY LoadedStructureX IS
  Implementation(CTX_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(CTX_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(CTX_i))==(?);
  Inherited_List_Includes(Implementation(CTX_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(CTX_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(CTX_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(CTX_i))==(?);
  Context_List_Variables(Implementation(CTX_i))==(?);
  Abstract_List_Variables(Implementation(CTX_i))==(UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS);
  Local_List_Variables(Implementation(CTX_i))==(?);
  List_Variables(Implementation(CTX_i))==(?);
  External_List_Variables(Implementation(CTX_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(CTX_i))==(?);
  Abstract_List_VisibleVariables(Implementation(CTX_i))==(?);
  External_List_VisibleVariables(Implementation(CTX_i))==(?);
  Expanded_List_VisibleVariables(Implementation(CTX_i))==(?);
  List_VisibleVariables(Implementation(CTX_i))==(?);
  Internal_List_VisibleVariables(Implementation(CTX_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(CTX_i))==(btrue);
  Expanded_List_Invariant(Implementation(CTX_i))==(btrue);
  Abstract_List_Invariant(Implementation(CTX_i))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE);
  Context_List_Invariant(Implementation(CTX_i))==(btrue);
  List_Invariant(Implementation(CTX_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(CTX_i))==(btrue);
  Abstract_List_Assertions(Implementation(CTX_i))==(btrue);
  Context_List_Assertions(Implementation(CTX_i))==(btrue);
  List_Assertions(Implementation(CTX_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(CTX_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(CTX_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(CTX_i))==(skip);
  Context_List_Initialisation(Implementation(CTX_i))==(skip);
  List_Initialisation(Implementation(CTX_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(CTX_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(CTX_i))==(btrue);
  List_Context_Constraints(Implementation(CTX_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(CTX_i))==(?);
  List_Operations(Implementation(CTX_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(CTX_i))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  Inherited_List_Constants(Implementation(CTX_i))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Constants(Implementation(CTX_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(CTX_i),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING});
  Context_List_Enumerated(Implementation(CTX_i))==(?);
  Context_List_Defered(Implementation(CTX_i))==(?);
  Context_List_Sets(Implementation(CTX_i))==(?);
  List_Own_Enumerated(Implementation(CTX_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Valuable_Sets(Implementation(CTX_i))==(?);
  Inherited_List_Enumerated(Implementation(CTX_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Inherited_List_Defered(Implementation(CTX_i))==(?);
  Inherited_List_Sets(Implementation(CTX_i))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Enumerated(Implementation(CTX_i))==(?);
  List_Defered(Implementation(CTX_i))==(?);
  List_Sets(Implementation(CTX_i))==(?);
  Set_Definition(Implementation(CTX_i),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Implementation(CTX_i),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(CTX_i))==(NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE);
  Expanded_List_HiddenConstants(Implementation(CTX_i))==(?);
  List_HiddenConstants(Implementation(CTX_i))==(?);
  External_List_HiddenConstants(Implementation(CTX_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(CTX_i))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR,OFF|->OFF,ON|->ON,ERROR|->ERROR,SHUTDOWN|->SHUTDOWN} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING,INITIALIZING|->INITIALIZING,ON_IDLE|->ON_IDLE,RUNNING|->RUNNING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER,UNKNOWN|->UNKNOWN,MASTER|->MASTER,SLAVE|->SLAVE} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}));
  Context_List_Properties(Implementation(CTX_i))==(btrue);
  Inherited_List_Properties(Implementation(CTX_i))==(btrue);
  List_Properties(Implementation(CTX_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(CTX_i))==(btrue);
  Values_Subs(Implementation(CTX_i))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW: 32,30,35,34,32);
  List_Values(Implementation(CTX_i))==(U_MIN = 32;U_UNDER = 30;U_OVER = 35;U_HIGH = 34;U_LOW = 32)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(CTX_i))==(Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(CTX_i)) == (? | ? | ? | ? | ? | ? | ? | ? | CTX_i);
  List_Of_HiddenCst_Ids(Implementation(CTX_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(CTX_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(CTX_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(CTX_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(CTX_i)) == (Type(ON_STATE) == Cst(SetOf(etype(ON_STATE,0,2)));Type(MAIN_STATE) == Cst(SetOf(etype(MAIN_STATE,0,3)));Type(RUNNING_STATE) == Cst(SetOf(etype(RUNNING_STATE,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(CTX_i)) == (Type(U_LOW) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2)))
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
  List_Local_Operations(Implementation(CTX_i))==(?)
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
  TypingPredicate(Implementation(CTX_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
