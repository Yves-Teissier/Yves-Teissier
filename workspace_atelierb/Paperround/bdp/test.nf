Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(test))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(test))==(Machine(test));
  Level(Machine(test))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(test)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(test))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(test))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(test))==(?);
  List_Includes(Machine(test))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(test))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(test))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(test))==(?);
  Context_List_Variables(Machine(test))==(?);
  Abstract_List_Variables(Machine(test))==(?);
  Local_List_Variables(Machine(test))==(xx);
  List_Variables(Machine(test))==(xx);
  External_List_Variables(Machine(test))==(xx)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(test))==(?);
  Abstract_List_VisibleVariables(Machine(test))==(?);
  External_List_VisibleVariables(Machine(test))==(?);
  Expanded_List_VisibleVariables(Machine(test))==(?);
  List_VisibleVariables(Machine(test))==(?);
  Internal_List_VisibleVariables(Machine(test))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(test))==(btrue);
  Gluing_List_Invariant(Machine(test))==(btrue);
  Expanded_List_Invariant(Machine(test))==(btrue);
  Abstract_List_Invariant(Machine(test))==(btrue);
  Context_List_Invariant(Machine(test))==(btrue);
  List_Invariant(Machine(test))==(xx: 0..3)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(test))==(btrue);
  Abstract_List_Assertions(Machine(test))==(btrue);
  Context_List_Assertions(Machine(test))==(btrue);
  List_Assertions(Machine(test))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(test))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(test))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(test))==(@(xx$0).(xx$0: 0..1 ==> xx:=xx$0));
  Context_List_Initialisation(Machine(test))==(skip);
  List_Initialisation(Machine(test))==(xx:: 0..1)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(test))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(test))==(btrue);
  List_Constraints(Machine(test))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(test))==(op);
  List_Operations(Machine(test))==(op)
END
&
THEORY ListInputX IS
  List_Input(Machine(test),op)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(test),op)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(test),op)==(op)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(test),op)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(test),op)==(btrue | xx:=xx+1);
  List_Substitution(Machine(test),op)==(xx:=xx+1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(test))==(?);
  Inherited_List_Constants(Machine(test))==(?);
  List_Constants(Machine(test))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(test))==(?);
  Context_List_Defered(Machine(test))==(?);
  Context_List_Sets(Machine(test))==(?);
  List_Valuable_Sets(Machine(test))==(?);
  Inherited_List_Enumerated(Machine(test))==(?);
  Inherited_List_Defered(Machine(test))==(?);
  Inherited_List_Sets(Machine(test))==(?);
  List_Enumerated(Machine(test))==(?);
  List_Defered(Machine(test))==(?);
  List_Sets(Machine(test))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(test))==(?);
  Expanded_List_HiddenConstants(Machine(test))==(?);
  List_HiddenConstants(Machine(test))==(?);
  External_List_HiddenConstants(Machine(test))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(test))==(btrue);
  Context_List_Properties(Machine(test))==(btrue);
  Inherited_List_Properties(Machine(test))==(btrue);
  List_Properties(Machine(test))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(test),op)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(test)) == (? | ? | xx | ? | op | ? | ? | ? | test);
  List_Of_HiddenCst_Ids(Machine(test)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(test)) == (?);
  List_Of_VisibleVar_Ids(Machine(test)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(test)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(test)) == (Type(xx) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(test)) == (Type(op) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == KO;
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
