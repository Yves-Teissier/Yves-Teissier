Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(target))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(target))==(Machine(target));
  Level(Machine(target))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(target)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(target))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(target))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(target))==(?);
  List_Includes(Machine(target))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(target))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(target))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(target))==(?);
  Context_List_Variables(Machine(target))==(?);
  Abstract_List_Variables(Machine(target))==(?);
  Local_List_Variables(Machine(target))==(?);
  List_Variables(Machine(target))==(?);
  External_List_Variables(Machine(target))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(target))==(?);
  Abstract_List_VisibleVariables(Machine(target))==(?);
  External_List_VisibleVariables(Machine(target))==(?);
  Expanded_List_VisibleVariables(Machine(target))==(?);
  List_VisibleVariables(Machine(target))==(?);
  Internal_List_VisibleVariables(Machine(target))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(target))==(btrue);
  Gluing_List_Invariant(Machine(target))==(btrue);
  Expanded_List_Invariant(Machine(target))==(btrue);
  Abstract_List_Invariant(Machine(target))==(btrue);
  Context_List_Invariant(Machine(target))==(btrue);
  List_Invariant(Machine(target))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(target))==(btrue);
  Abstract_List_Assertions(Machine(target))==(btrue);
  Context_List_Assertions(Machine(target))==(btrue);
  List_Assertions(Machine(target))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(target))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(target))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(target))==(skip);
  Context_List_Initialisation(Machine(target))==(skip);
  List_Initialisation(Machine(target))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(target))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(target))==(btrue);
  List_Constraints(Machine(target))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(target))==(target_get_target);
  List_Operations(Machine(target))==(target_get_target)
END
&
THEORY ListInputX IS
  List_Input(Machine(target),target_get_target)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(target),target_get_target)==(ret_target)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(target),target_get_target)==(ret_target <-- target_get_target)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(target),target_get_target)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(target),target_get_target)==(btrue | @(ret_target$0).(ret_target$0: NAT ==> ret_target:=ret_target$0));
  List_Substitution(Machine(target),target_get_target)==(ret_target:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(target))==(?);
  Inherited_List_Constants(Machine(target))==(?);
  List_Constants(Machine(target))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(target))==(?);
  Context_List_Defered(Machine(target))==(?);
  Context_List_Sets(Machine(target))==(?);
  List_Valuable_Sets(Machine(target))==(?);
  Inherited_List_Enumerated(Machine(target))==(?);
  Inherited_List_Defered(Machine(target))==(?);
  Inherited_List_Sets(Machine(target))==(?);
  List_Enumerated(Machine(target))==(?);
  List_Defered(Machine(target))==(?);
  List_Sets(Machine(target))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(target))==(?);
  Expanded_List_HiddenConstants(Machine(target))==(?);
  List_HiddenConstants(Machine(target))==(?);
  External_List_HiddenConstants(Machine(target))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(target))==(btrue);
  Context_List_Properties(Machine(target))==(btrue);
  Inherited_List_Properties(Machine(target))==(btrue);
  List_Properties(Machine(target))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(target),target_get_target)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(target)) == (? | ? | ? | ? | target_get_target | ? | ? | ? | target);
  List_Of_HiddenCst_Ids(Machine(target)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(target)) == (?);
  List_Of_VisibleVar_Ids(Machine(target)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(target)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(target)) == (Type(target_get_target) == Cst(btype(INTEGER,0,MAXINT),No_type));
  Observers(Machine(target)) == (Type(target_get_target) == Cst(btype(INTEGER,0,MAXINT),No_type))
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
