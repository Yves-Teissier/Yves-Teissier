Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CTX))==(Machine(CTX));
  Level(Machine(CTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CTX))==(?);
  List_Includes(Machine(CTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CTX))==(?);
  Context_List_Variables(Machine(CTX))==(?);
  Abstract_List_Variables(Machine(CTX))==(?);
  Local_List_Variables(Machine(CTX))==(UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS);
  List_Variables(Machine(CTX))==(UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS);
  External_List_Variables(Machine(CTX))==(UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CTX))==(?);
  Abstract_List_VisibleVariables(Machine(CTX))==(?);
  External_List_VisibleVariables(Machine(CTX))==(?);
  Expanded_List_VisibleVariables(Machine(CTX))==(?);
  List_VisibleVariables(Machine(CTX))==(?);
  Internal_List_VisibleVariables(Machine(CTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CTX))==(btrue);
  Gluing_List_Invariant(Machine(CTX))==(btrue);
  Expanded_List_Invariant(Machine(CTX))==(btrue);
  Abstract_List_Invariant(Machine(CTX))==(btrue);
  Context_List_Invariant(Machine(CTX))==(btrue);
  List_Invariant(Machine(CTX))==(UNIT1_RS: RUNNING_STATE & UNIT2_RS: RUNNING_STATE & UNIT1_MS: MAIN_STATE & UNIT2_MS: MAIN_STATE & UNIT1_OS: ON_STATE & UNIT2_OS: ON_STATE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CTX))==(btrue);
  Abstract_List_Assertions(Machine(CTX))==(btrue);
  Context_List_Assertions(Machine(CTX))==(btrue);
  List_Assertions(Machine(CTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CTX))==(UNIT1_RS,UNIT2_RS,UNIT1_MS,UNIT2_MS,UNIT1_OS,UNIT2_OS:=UNKNOWN,UNKNOWN,OFF,OFF,ON_IDLE,ON_IDLE);
  Context_List_Initialisation(Machine(CTX))==(skip);
  List_Initialisation(Machine(CTX))==(UNIT1_RS:=UNKNOWN || UNIT2_RS:=UNKNOWN || UNIT1_MS:=OFF || UNIT2_MS:=OFF || UNIT1_OS:=ON_IDLE || UNIT2_OS:=ON_IDLE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CTX))==(btrue);
  List_Constraints(Machine(CTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CTX))==(?);
  List_Operations(Machine(CTX))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  Inherited_List_Constants(Machine(CTX))==(?);
  List_Constants(Machine(CTX))==(U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CTX),RUNNING_STATE)==({UNKNOWN,SLAVE,MASTER});
  Context_List_Enumerated(Machine(CTX))==(?);
  Context_List_Defered(Machine(CTX))==(?);
  Context_List_Sets(Machine(CTX))==(?);
  List_Valuable_Sets(Machine(CTX))==(?);
  Inherited_List_Enumerated(Machine(CTX))==(?);
  Inherited_List_Defered(Machine(CTX))==(?);
  Inherited_List_Sets(Machine(CTX))==(?);
  List_Enumerated(Machine(CTX))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  List_Defered(Machine(CTX))==(?);
  List_Sets(Machine(CTX))==(RUNNING_STATE,MAIN_STATE,ON_STATE);
  Set_Definition(Machine(CTX),MAIN_STATE)==({ERROR,SHUTDOWN,OFF,ON});
  Set_Definition(Machine(CTX),ON_STATE)==({ON_IDLE,INITIALIZING,RUNNING})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CTX))==(?);
  Expanded_List_HiddenConstants(Machine(CTX))==(?);
  List_HiddenConstants(Machine(CTX))==(NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE);
  External_List_HiddenConstants(Machine(CTX))==(NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CTX))==(btrue);
  Context_List_Properties(Machine(CTX))==(btrue);
  Inherited_List_Properties(Machine(CTX))==(btrue);
  List_Properties(Machine(CTX))==(NEXT_RUNNING_STATE: RUNNING_STATE <-> RUNNING_STATE & NEXT_MAIN_STATE: MAIN_STATE <-> MAIN_STATE & NEXT_ON_STATE: ON_STATE <-> ON_STATE & NEXT_MAIN_STATE = {OFF|->ON,SHUTDOWN|->ON,ON|->SHUTDOWN,ERROR|->SHUTDOWN,ON|->ERROR} & NEXT_ON_STATE = {INITIALIZING|->RUNNING,ON_IDLE|->INITIALIZING} & NEXT_RUNNING_STATE = {UNKNOWN|->MASTER,UNKNOWN|->SLAVE,SLAVE|->MASTER} & U_MIN: NAT & U_UNDER: NAT & U_OVER: NAT & U_HIGH: NAT & U_LOW: NAT & RUNNING_STATE: FIN(INTEGER) & not(RUNNING_STATE = {}) & MAIN_STATE: FIN(INTEGER) & not(MAIN_STATE = {}) & ON_STATE: FIN(INTEGER) & not(ON_STATE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW,RUNNING_STATE,MAIN_STATE,ON_STATE,UNKNOWN,SLAVE,MASTER,ERROR,SHUTDOWN,OFF,ON,ON_IDLE,INITIALIZING,RUNNING | ? | UNIT2_OS,UNIT1_OS,UNIT2_MS,UNIT1_MS,UNIT2_RS,UNIT1_RS | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT_ON_STATE,NEXT_MAIN_STATE,NEXT_RUNNING_STATE | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (U_MIN,U_UNDER,U_OVER,U_HIGH,U_LOW);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CTX)) == (Type(RUNNING_STATE) == Cst(SetOf(etype(RUNNING_STATE,0,2)));Type(MAIN_STATE) == Cst(SetOf(etype(MAIN_STATE,0,3)));Type(ON_STATE) == Cst(SetOf(etype(ON_STATE,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CTX)) == (Type(UNKNOWN) == Cst(etype(RUNNING_STATE,0,2));Type(SLAVE) == Cst(etype(RUNNING_STATE,0,2));Type(MASTER) == Cst(etype(RUNNING_STATE,0,2));Type(ERROR) == Cst(etype(MAIN_STATE,0,3));Type(SHUTDOWN) == Cst(etype(MAIN_STATE,0,3));Type(OFF) == Cst(etype(MAIN_STATE,0,3));Type(ON) == Cst(etype(MAIN_STATE,0,3));Type(ON_IDLE) == Cst(etype(ON_STATE,0,2));Type(INITIALIZING) == Cst(etype(ON_STATE,0,2));Type(RUNNING) == Cst(etype(ON_STATE,0,2));Type(U_MIN) == Cst(btype(INTEGER,?,?));Type(U_UNDER) == Cst(btype(INTEGER,?,?));Type(U_OVER) == Cst(btype(INTEGER,?,?));Type(U_HIGH) == Cst(btype(INTEGER,?,?));Type(U_LOW) == Cst(btype(INTEGER,?,?)))
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(CTX)) == (Type(NEXT_ON_STATE) == HCst(SetOf(etype(ON_STATE,?,?)*etype(ON_STATE,?,?)));Type(NEXT_MAIN_STATE) == HCst(SetOf(etype(MAIN_STATE,?,?)*etype(MAIN_STATE,?,?)));Type(NEXT_RUNNING_STATE) == HCst(SetOf(etype(RUNNING_STATE,?,?)*etype(RUNNING_STATE,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(CTX)) == (Type(UNIT2_OS) == Mvl(etype(ON_STATE,?,?));Type(UNIT1_OS) == Mvl(etype(ON_STATE,?,?));Type(UNIT2_MS) == Mvl(etype(MAIN_STATE,?,?));Type(UNIT1_MS) == Mvl(etype(MAIN_STATE,?,?));Type(UNIT2_RS) == Mvl(etype(RUNNING_STATE,?,?));Type(UNIT1_RS) == Mvl(etype(RUNNING_STATE,?,?)))
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
