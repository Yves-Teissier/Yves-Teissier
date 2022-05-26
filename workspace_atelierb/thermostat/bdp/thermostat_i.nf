Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(thermostat_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(thermostat_i))==(Machine(thermostat));
  Level(Implementation(thermostat_i))==(1);
  Upper_Level(Implementation(thermostat_i))==(Machine(thermostat))
END
&
THEORY LoadedStructureX IS
  Implementation(thermostat_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(thermostat_i))==(CTX)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(thermostat_i))==(target,temperature,chaudiere,timer);
  Inherited_List_Includes(Implementation(thermostat_i))==(timer,chaudiere,temperature,target)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(thermostat_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(thermostat_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(thermostat_i))==(?);
  Context_List_Variables(Implementation(thermostat_i))==(?);
  Abstract_List_Variables(Implementation(thermostat_i))==(check_temperature_delay,gaz_duration,temperature_val,target_val,delay);
  Local_List_Variables(Implementation(thermostat_i))==(?);
  List_Variables(Implementation(thermostat_i))==(delay);
  External_List_Variables(Implementation(thermostat_i))==(delay)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(thermostat_i))==(?);
  Abstract_List_VisibleVariables(Implementation(thermostat_i))==(?);
  External_List_VisibleVariables(Implementation(thermostat_i))==(?);
  Expanded_List_VisibleVariables(Implementation(thermostat_i))==(?);
  List_VisibleVariables(Implementation(thermostat_i))==(delta,check_temperature_delay,gaz_duration,temperature_val,target_val);
  Internal_List_VisibleVariables(Implementation(thermostat_i))==(delta,check_temperature_delay,gaz_duration,temperature_val,target_val)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(thermostat_i))==(btrue);
  Abstract_List_Invariant(Implementation(thermostat_i))==(target_val: NAT & temperature_val: NAT & gaz_duration: NAT & check_temperature_delay: NAT & delay: NAT);
  Expanded_List_Invariant(Implementation(thermostat_i))==(delay: NAT);
  Context_List_Invariant(Implementation(thermostat_i))==(btrue);
  List_Invariant(Implementation(thermostat_i))==(target_val: NAT & temperature_val: NAT & gaz_duration: NAT & check_temperature_delay: NAT & check_temperature_delay<=400 & target_val<=2500 & delta: INT)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(thermostat_i))==(btrue);
  Expanded_List_Assertions(Implementation(thermostat_i))==(btrue);
  Context_List_Assertions(Implementation(thermostat_i))==(btrue);
  List_Assertions(Implementation(thermostat_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(thermostat_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(thermostat_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(thermostat_i))==(@(delay$0).(delay$0: NAT ==> delay:=delay$0);(1800: INT | target_val:=1800);(0: INT | temperature_val:=0);(90: INT | gaz_duration:=90);(350: INT | check_temperature_delay:=350);(0: INT | delta:=0));
  Context_List_Initialisation(Implementation(thermostat_i))==(skip);
  List_Initialisation(Implementation(thermostat_i))==(target_val:=1800;temperature_val:=0;gaz_duration:=90;check_temperature_delay:=350;delta:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(thermostat_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(thermostat_i),Machine(target))==(?);
  List_Instanciated_Parameters(Implementation(thermostat_i),Machine(temperature))==(?);
  List_Instanciated_Parameters(Implementation(thermostat_i),Machine(chaudiere))==(?);
  List_Instanciated_Parameters(Implementation(thermostat_i),Machine(timer))==(?);
  List_Instanciated_Parameters(Implementation(thermostat_i),Machine(CTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(thermostat_i),Machine(timer))==(btrue);
  List_Constraints(Implementation(thermostat_i))==(btrue);
  List_Context_Constraints(Implementation(thermostat_i))==(btrue);
  List_Constraints(Implementation(thermostat_i),Machine(chaudiere))==(btrue);
  List_Constraints(Implementation(thermostat_i),Machine(temperature))==(btrue);
  List_Constraints(Implementation(thermostat_i),Machine(target))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(thermostat_i))==(thermostat_set_context,thermostat_next);
  List_Operations(Implementation(thermostat_i))==(thermostat_set_context,thermostat_next)
END
&
THEORY ListInputX IS
  List_Input(Implementation(thermostat_i),thermostat_set_context)==(?);
  List_Input(Implementation(thermostat_i),thermostat_next)==(state)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(thermostat_i),thermostat_set_context)==(?);
  List_Output(Implementation(thermostat_i),thermostat_next)==(new_state)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(thermostat_i),thermostat_set_context)==(thermostat_set_context);
  List_Header(Implementation(thermostat_i),thermostat_next)==(new_state <-- thermostat_next(state))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(thermostat_i),thermostat_set_context)==(btrue);
  List_Precondition(Implementation(thermostat_i),thermostat_set_context)==(btrue);
  Own_Precondition(Implementation(thermostat_i),thermostat_next)==(btrue);
  List_Precondition(Implementation(thermostat_i),thermostat_next)==(state: STATE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(thermostat_i),thermostat_next)==(state: STATE | state = SETGAZ_STATE ==> ((btrue | skip);(gaz_duration: NAT | skip);(btrue | skip);new_state:=IDLE_STATE) [] not(state = SETGAZ_STATE) ==> (state = IDLE_STATE ==> ((btrue | @(ret_target$0).(ret_target$0: NAT ==> target_val:=ret_target$0));(btrue | @(new_temperature$0).(new_temperature$0: NAT ==> temperature_val:=new_temperature$0));(target_val>2500 ==> (2500: INT | target_val:=2500) [] not(target_val>2500) ==> skip);(target_val-temperature_val: INT & target_val: INT & temperature_val: INT | delta:=target_val-temperature_val);(delta>=50 ==> ((120: INT | gaz_duration:=120);(300: INT | check_temperature_delay:=300)) [] not(delta>=50) ==> ((90: INT | gaz_duration:=90);(350: INT | check_temperature_delay:=350)));(check_temperature_delay: NAT | skip);(temperature_val<target_val ==> new_state:=SETGAZ_STATE [] not(temperature_val<target_val) ==> new_state:=IDLE_STATE)) [] not(state = IDLE_STATE) ==> new_state:=IDLE_STATE));
  Expanded_List_Substitution(Implementation(thermostat_i),thermostat_set_context)==(btrue | skip);
  List_Substitution(Implementation(thermostat_i),thermostat_set_context)==(skip);
  List_Substitution(Implementation(thermostat_i),thermostat_next)==(IF state = SETGAZ_STATE THEN start_chaudiere;timer_wait(gaz_duration);stop_chaudiere;new_state:=IDLE_STATE ELSIF state = IDLE_STATE THEN target_val <-- target_get_target;temperature_val <-- temperature_get_temperature;IF target_val>2500 THEN target_val:=2500 END;delta:=target_val-temperature_val;IF delta>=50 THEN gaz_duration:=120;check_temperature_delay:=300 ELSE gaz_duration:=90;check_temperature_delay:=350 END;timer_wait(check_temperature_delay);IF temperature_val<target_val THEN new_state:=SETGAZ_STATE ELSE new_state:=IDLE_STATE END ELSE new_state:=IDLE_STATE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(thermostat_i))==(?);
  Inherited_List_Constants(Implementation(thermostat_i))==(?);
  List_Constants(Implementation(thermostat_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(thermostat_i),STATE)==({IDLE_STATE,SETGAZ_STATE});
  Context_List_Enumerated(Implementation(thermostat_i))==(STATE);
  Context_List_Defered(Implementation(thermostat_i))==(?);
  Context_List_Sets(Implementation(thermostat_i))==(STATE);
  List_Own_Enumerated(Implementation(thermostat_i))==(?);
  List_Valuable_Sets(Implementation(thermostat_i))==(?);
  Inherited_List_Enumerated(Implementation(thermostat_i))==(?);
  Inherited_List_Defered(Implementation(thermostat_i))==(?);
  Inherited_List_Sets(Implementation(thermostat_i))==(?);
  List_Enumerated(Implementation(thermostat_i))==(?);
  List_Defered(Implementation(thermostat_i))==(?);
  List_Sets(Implementation(thermostat_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(thermostat_i))==(?);
  Expanded_List_HiddenConstants(Implementation(thermostat_i))==(?);
  List_HiddenConstants(Implementation(thermostat_i))==(?);
  External_List_HiddenConstants(Implementation(thermostat_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(thermostat_i))==(btrue);
  Context_List_Properties(Implementation(thermostat_i))==(NEXT: STATE <-> STATE & NEXT = {IDLE_STATE|->SETGAZ_STATE,SETGAZ_STATE|->IDLE_STATE,IDLE_STATE|->IDLE_STATE} & S0: STATE & STATE: FIN(INTEGER) & not(STATE = {}));
  Inherited_List_Properties(Implementation(thermostat_i))==(btrue);
  List_Properties(Implementation(thermostat_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(thermostat_i))==(aa: aa);
  List_Values(Implementation(thermostat_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(thermostat_i),Machine(CTX))==(?);
  Seen_Context_List_Enumerated(Implementation(thermostat_i))==(?);
  Seen_Context_List_Invariant(Implementation(thermostat_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(thermostat_i))==(btrue);
  Seen_Context_List_Properties(Implementation(thermostat_i))==(btrue);
  Seen_List_Constraints(Implementation(thermostat_i))==(btrue);
  Seen_List_Operations(Implementation(thermostat_i),Machine(CTX))==(?);
  Seen_Expanded_List_Invariant(Implementation(thermostat_i),Machine(CTX))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(thermostat_i),Machine(timer))==(timer_wait);
  List_Included_Operations(Implementation(thermostat_i),Machine(chaudiere))==(start_chaudiere,stop_chaudiere);
  List_Included_Operations(Implementation(thermostat_i),Machine(temperature))==(temperature_get_temperature);
  List_Included_Operations(Implementation(thermostat_i),Machine(target))==(target_get_target)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(thermostat_i))==(Type(target_val) == Mvv(btype(INTEGER,?,?));Type(temperature_val) == Mvv(btype(INTEGER,?,?));Type(gaz_duration) == Mvv(btype(INTEGER,?,?));Type(check_temperature_delay) == Mvv(btype(INTEGER,?,?));Type(delta) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(thermostat_i))==(Type(thermostat_next) == Cst(etype(STATE,?,?),etype(STATE,?,?));Type(thermostat_set_context) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(thermostat_i),Machine(CTX))==(S0);
  List_Constants_Env(Implementation(thermostat_i),Machine(CTX))==(Type(IDLE_STATE) == Cst(etype(STATE,0,1));Type(SETGAZ_STATE) == Cst(etype(STATE,0,1));Type(S0) == Cst(etype(STATE,?,?)));
  Enumerate_Definition(Implementation(thermostat_i),Machine(CTX),STATE)==({IDLE_STATE,SETGAZ_STATE})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(thermostat_i)) == (? | ? | ? | delay | thermostat_set_context,thermostat_next | ? | seen(Machine(CTX)),imported(Machine(target)),imported(Machine(temperature)),imported(Machine(chaudiere)),imported(Machine(timer)) | ? | thermostat_i);
  List_Of_HiddenCst_Ids(Implementation(thermostat_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(thermostat_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(thermostat_i)) == (delta,check_temperature_delay,gaz_duration,temperature_val,target_val | ?);
  List_Of_Ids_SeenBNU(Implementation(thermostat_i)) == (?: ?);
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
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(thermostat_i)) == (Type(delta) == Mvv(btype(INTEGER,?,?));Type(check_temperature_delay) == Mvv(btype(INTEGER,?,?));Type(gaz_duration) == Mvv(btype(INTEGER,?,?));Type(temperature_val) == Mvv(btype(INTEGER,?,?));Type(target_val) == Mvv(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(thermostat_i))==(?)
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
  TypingPredicate(Implementation(thermostat_i))==(target_val: INTEGER & temperature_val: INTEGER & gaz_duration: INTEGER & check_temperature_delay: INTEGER & delta: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(thermostat_i),Machine(target))==(?);
  ImportedVisVariablesList(Implementation(thermostat_i),Machine(target))==(?);
  ImportedVariablesList(Implementation(thermostat_i),Machine(temperature))==(?);
  ImportedVisVariablesList(Implementation(thermostat_i),Machine(temperature))==(?);
  ImportedVariablesList(Implementation(thermostat_i),Machine(chaudiere))==(?);
  ImportedVisVariablesList(Implementation(thermostat_i),Machine(chaudiere))==(?);
  ImportedVariablesList(Implementation(thermostat_i),Machine(timer))==(delay);
  ImportedVisVariablesList(Implementation(thermostat_i),Machine(timer))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
