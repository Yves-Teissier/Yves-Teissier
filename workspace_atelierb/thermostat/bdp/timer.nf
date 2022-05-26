Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(timer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(timer))==(Machine(timer));
  Level(Machine(timer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(timer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(timer))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(timer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(timer))==(?);
  List_Includes(Machine(timer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(timer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(timer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(timer))==(?);
  Context_List_Variables(Machine(timer))==(?);
  Abstract_List_Variables(Machine(timer))==(?);
  Local_List_Variables(Machine(timer))==(delay);
  List_Variables(Machine(timer))==(delay);
  External_List_Variables(Machine(timer))==(delay)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(timer))==(?);
  Abstract_List_VisibleVariables(Machine(timer))==(?);
  External_List_VisibleVariables(Machine(timer))==(?);
  Expanded_List_VisibleVariables(Machine(timer))==(?);
  List_VisibleVariables(Machine(timer))==(?);
  Internal_List_VisibleVariables(Machine(timer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(timer))==(btrue);
  Gluing_List_Invariant(Machine(timer))==(btrue);
  Expanded_List_Invariant(Machine(timer))==(btrue);
  Abstract_List_Invariant(Machine(timer))==(btrue);
  Context_List_Invariant(Machine(timer))==(btrue);
  List_Invariant(Machine(timer))==(delay: NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(timer))==(btrue);
  Abstract_List_Assertions(Machine(timer))==(btrue);
  Context_List_Assertions(Machine(timer))==(btrue);
  List_Assertions(Machine(timer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(timer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(timer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(timer))==(@(delay$0).(delay$0: NAT ==> delay:=delay$0));
  Context_List_Initialisation(Machine(timer))==(skip);
  List_Initialisation(Machine(timer))==(delay:: NAT)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(timer))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(timer))==(btrue);
  List_Constraints(Machine(timer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(timer))==(timer_wait);
  List_Operations(Machine(timer))==(timer_wait)
END
&
THEORY ListInputX IS
  List_Input(Machine(timer),timer_wait)==(aDelay)
END
&
THEORY ListOutputX IS
  List_Output(Machine(timer),timer_wait)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(timer),timer_wait)==(timer_wait(aDelay))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(timer),timer_wait)==(aDelay: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(timer),timer_wait)==(aDelay: NAT | skip);
  List_Substitution(Machine(timer),timer_wait)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(timer))==(?);
  Inherited_List_Constants(Machine(timer))==(?);
  List_Constants(Machine(timer))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(timer))==(?);
  Context_List_Defered(Machine(timer))==(?);
  Context_List_Sets(Machine(timer))==(?);
  List_Valuable_Sets(Machine(timer))==(?);
  Inherited_List_Enumerated(Machine(timer))==(?);
  Inherited_List_Defered(Machine(timer))==(?);
  Inherited_List_Sets(Machine(timer))==(?);
  List_Enumerated(Machine(timer))==(?);
  List_Defered(Machine(timer))==(?);
  List_Sets(Machine(timer))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(timer))==(?);
  Expanded_List_HiddenConstants(Machine(timer))==(?);
  List_HiddenConstants(Machine(timer))==(?);
  External_List_HiddenConstants(Machine(timer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(timer))==(btrue);
  Context_List_Properties(Machine(timer))==(btrue);
  Inherited_List_Properties(Machine(timer))==(btrue);
  List_Properties(Machine(timer))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(timer),timer_wait)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(timer)) == (? | ? | delay | ? | timer_wait | ? | ? | ? | timer);
  List_Of_HiddenCst_Ids(Machine(timer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(timer)) == (?);
  List_Of_VisibleVar_Ids(Machine(timer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(timer)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(timer)) == (Type(delay) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(timer)) == (Type(timer_wait) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(timer)) == (Type(timer_wait) == Cst(No_type,btype(INTEGER,?,?)))
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
