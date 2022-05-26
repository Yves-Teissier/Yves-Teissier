Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(thermostat))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(thermostat))==(Machine(thermostat));
  Level(Machine(thermostat))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(thermostat)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(thermostat))==(CTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(thermostat))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(thermostat))==(timer,chaudiere,temperature,target);
  List_Includes(Machine(thermostat))==(target,temperature,chaudiere,timer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(thermostat))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(thermostat))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(thermostat))==(?);
  Context_List_Variables(Machine(thermostat))==(?);
  Abstract_List_Variables(Machine(thermostat))==(?);
  Local_List_Variables(Machine(thermostat))==(check_temperature_delay,gaz_duration,temperature_val,target_val);
  List_Variables(Machine(thermostat))==(check_temperature_delay,gaz_duration,temperature_val,target_val,delay);
  External_List_Variables(Machine(thermostat))==(check_temperature_delay,gaz_duration,temperature_val,target_val,delay)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(thermostat))==(?);
  Abstract_List_VisibleVariables(Machine(thermostat))==(?);
  External_List_VisibleVariables(Machine(thermostat))==(?);
  Expanded_List_VisibleVariables(Machine(thermostat))==(?);
  List_VisibleVariables(Machine(thermostat))==(?);
  Internal_List_VisibleVariables(Machine(thermostat))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(thermostat))==(btrue);
  Gluing_List_Invariant(Machine(thermostat))==(btrue);
  Abstract_List_Invariant(Machine(thermostat))==(btrue);
  Expanded_List_Invariant(Machine(thermostat))==(delay: NAT);
  Context_List_Invariant(Machine(thermostat))==(btrue);
  List_Invariant(Machine(thermostat))==(target_val: NAT & temperature_val: NAT & gaz_duration: NAT & check_temperature_delay: NAT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(thermostat))==(btrue);
  Expanded_List_Assertions(Machine(thermostat))==(btrue);
  Context_List_Assertions(Machine(thermostat))==(btrue);
  List_Assertions(Machine(thermostat))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(thermostat))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(thermostat))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(thermostat))==(@(delay$0).(delay$0: NAT ==> delay:=delay$0);(@(target_val$0).(target_val$0: NAT ==> target_val:=target_val$0) || @(temperature_val$0).(temperature_val$0: NAT ==> temperature_val:=temperature_val$0) || @(gaz_duration$0).(gaz_duration$0: NAT ==> gaz_duration:=gaz_duration$0) || @(check_temperature_delay$0).(check_temperature_delay$0: NAT ==> check_temperature_delay:=check_temperature_delay$0)));
  Context_List_Initialisation(Machine(thermostat))==(skip);
  List_Initialisation(Machine(thermostat))==(target_val:: NAT || temperature_val:: NAT || gaz_duration:: NAT || check_temperature_delay:: NAT)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(thermostat))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(thermostat),Machine(target))==(?);
  List_Instanciated_Parameters(Machine(thermostat),Machine(temperature))==(?);
  List_Instanciated_Parameters(Machine(thermostat),Machine(chaudiere))==(?);
  List_Instanciated_Parameters(Machine(thermostat),Machine(timer))==(?);
  List_Instanciated_Parameters(Machine(thermostat),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(thermostat),Machine(timer))==(btrue);
  List_Context_Constraints(Machine(thermostat))==(btrue);
  List_Constraints(Machine(thermostat))==(btrue);
  List_Constraints(Machine(thermostat),Machine(chaudiere))==(btrue);
  List_Constraints(Machine(thermostat),Machine(temperature))==(btrue);
  List_Constraints(Machine(thermostat),Machine(target))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(thermostat))==(thermostat_set_context,thermostat_next);
  List_Operations(Machine(thermostat))==(thermostat_set_context,thermostat_next)
END
&
THEORY ListInputX IS
  List_Input(Machine(thermostat),thermostat_set_context)==(?);
  List_Input(Machine(thermostat),thermostat_next)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Machine(thermostat),thermostat_set_context)==(?);
  List_Output(Machine(thermostat),thermostat_next)==(new_state)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(thermostat),thermostat_set_context)==(thermostat_set_context);
  List_Header(Machine(thermostat),thermostat_next)==(new_state <-- thermostat_next(state))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(thermostat),thermostat_set_context)==(btrue);
  List_Precondition(Machine(thermostat),thermostat_next)==(state: STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(thermostat),thermostat_next)==(state: STATE | @(new_state$0).(new_state$0: NEXT[{state}] ==> new_state:=new_state$0) || @(target_val$0).(target_val$0: NAT ==> target_val:=target_val$0) || @(temperature_val$0).(temperature_val$0: NAT ==> temperature_val:=temperature_val$0) || @(gaz_duration$0).(gaz_duration$0: NAT ==> gaz_duration:=gaz_duration$0) || @(check_temperature_delay$0).(check_temperature_delay$0: NAT ==> check_temperature_delay:=check_temperature_delay$0));
  Expanded_List_Substitution(Machine(thermostat),thermostat_set_context)==(btrue | skip);
  List_Substitution(Machine(thermostat),thermostat_set_context)==(skip);
  List_Substitution(Machine(thermostat),thermostat_next)==(new_state:: NEXT[{state}] || target_val:: NAT || temperature_val:: NAT || gaz_duration:: NAT || check_temperature_delay:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(thermostat))==(?);
  Inherited_List_Constants(Machine(thermostat))==(?);
  List_Constants(Machine(thermostat))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(thermostat),STATE)==({IDLE_STATE,SETGAZ_STATE});
  Context_List_Enumerated(Machine(thermostat))==(STATE);
  Context_List_Defered(Machine(thermostat))==(?);
  Context_List_Sets(Machine(thermostat))==(STATE);
  List_Valuable_Sets(Machine(thermostat))==(?);
  Inherited_List_Enumerated(Machine(thermostat))==(?);
  Inherited_List_Defered(Machine(thermostat))==(?);
  Inherited_List_Sets(Machine(thermostat))==(?);
  List_Enumerated(Machine(thermostat))==(?);
  List_Defered(Machine(thermostat))==(?);
  List_Sets(Machine(thermostat))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(thermostat))==(?);
  Expanded_List_HiddenConstants(Machine(thermostat))==(?);
  List_HiddenConstants(Machine(thermostat))==(?);
  External_List_HiddenConstants(Machine(thermostat))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(thermostat))==(btrue);
  Context_List_Properties(Machine(thermostat))==(NEXT: STATE <-> STATE & NEXT = {IDLE_STATE|->SETGAZ_STATE,SETGAZ_STATE|->IDLE_STATE,IDLE_STATE|->IDLE_STATE} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Inherited_List_Properties(Machine(thermostat))==(btrue);
  List_Properties(Machine(thermostat))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(thermostat),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Machine(thermostat))==(?);
  Seen_Context_List_Invariant(Machine(thermostat))==(btrue);
  Seen_Context_List_Assertions(Machine(thermostat))==(btrue);
  Seen_Context_List_Properties(Machine(thermostat))==(btrue);
  Seen_List_Constraints(Machine(thermostat))==(btrue);
  Seen_List_Operations(Machine(thermostat),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Machine(thermostat),Machine(CTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(thermostat),thermostat_set_context)==(?);
  List_ANY_Var(Machine(thermostat),thermostat_next)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(thermostat)) == (? | ? | check_temperature_delay,gaz_duration,temperature_val,target_val | delay | thermostat_set_context,thermostat_next | ? | seen(Machine(CTX)),included(Machine(target)),included(Machine(temperature)),included(Machine(chaudiere)),included(Machine(timer)) | ? | thermostat);
  List_Of_HiddenCst_Ids(Machine(thermostat)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(thermostat)) == (?);
  List_Of_VisibleVar_Ids(Machine(thermostat)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(thermostat)) == (?: ?);
  List_Of_Ids(Machine(timer)) == (? | ? | delay | ? | timer_wait | ? | ? | ? | timer);
  List_Of_HiddenCst_Ids(Machine(timer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(timer)) == (?);
  List_Of_VisibleVar_Ids(Machine(timer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(timer)) == (?: ?);
  List_Of_Ids(Machine(chaudiere)) == (? | ? | ? | ? | start_chaudiere,stop_chaudiere | ? | ? | ? | chaudiere);
  List_Of_HiddenCst_Ids(Machine(chaudiere)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(chaudiere)) == (?);
  List_Of_VisibleVar_Ids(Machine(chaudiere)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(chaudiere)) == (?: ?);
  List_Of_Ids(Machine(temperature)) == (? | ? | ? | ? | temperature_get_temperature | ? | ? | ? | temperature);
  List_Of_HiddenCst_Ids(Machine(temperature)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(temperature)) == (?);
  List_Of_VisibleVar_Ids(Machine(temperature)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(temperature)) == (?: ?);
  List_Of_Ids(Machine(target)) == (? | ? | ? | ? | target_get_target | ? | ? | ? | target);
  List_Of_HiddenCst_Ids(Machine(target)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(target)) == (?);
  List_Of_VisibleVar_Ids(Machine(target)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(target)) == (?: ?);
  List_Of_Ids(Machine(CTX)) == (S0,STATE,IDLE_STATE,SETGAZ_STATE | ? | ? | ? | ? | ? | ? | ? | CTX);
  List_Of_HiddenCst_Ids(Machine(CTX)) == (NEXT | ?);
  List_Of_VisibleCst_Ids(Machine(CTX)) == (S0);
  List_Of_VisibleVar_Ids(Machine(CTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CTX)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(thermostat)) == (Type(delay) == Mvl(btype(INTEGER,?,?));Type(check_temperature_delay) == Mvl(btype(INTEGER,?,?));Type(gaz_duration) == Mvl(btype(INTEGER,?,?));Type(temperature_val) == Mvl(btype(INTEGER,?,?));Type(target_val) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(thermostat)) == (Type(thermostat_next) == Cst(etype(STATE,?,?),etype(STATE,?,?));Type(thermostat_set_context) == Cst(No_type,No_type));
  Observers(Machine(thermostat)) == (Type(thermostat_set_context) == Cst(No_type,No_type))
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
