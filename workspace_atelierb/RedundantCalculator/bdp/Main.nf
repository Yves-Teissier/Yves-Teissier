Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Main))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Main))==(Machine(Main));
  Level(Machine(Main))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Main)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Main))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Main))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Main))==(?);
  List_Includes(Machine(Main))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Main))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Main))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Main))==(?);
  Context_List_Variables(Machine(Main))==(?);
  Abstract_List_Variables(Machine(Main))==(?);
  Local_List_Variables(Machine(Main))==(?);
  List_Variables(Machine(Main))==(?);
  External_List_Variables(Machine(Main))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Main))==(?);
  Abstract_List_VisibleVariables(Machine(Main))==(?);
  External_List_VisibleVariables(Machine(Main))==(?);
  Expanded_List_VisibleVariables(Machine(Main))==(?);
  List_VisibleVariables(Machine(Main))==(?);
  Internal_List_VisibleVariables(Machine(Main))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Main))==(btrue);
  Gluing_List_Invariant(Machine(Main))==(btrue);
  Expanded_List_Invariant(Machine(Main))==(btrue);
  Abstract_List_Invariant(Machine(Main))==(btrue);
  Context_List_Invariant(Machine(Main))==(btrue);
  List_Invariant(Machine(Main))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Main))==(btrue);
  Abstract_List_Assertions(Machine(Main))==(btrue);
  Context_List_Assertions(Machine(Main))==(btrue);
  List_Assertions(Machine(Main))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Main))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Main))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Main))==(skip);
  Context_List_Initialisation(Machine(Main))==(skip);
  List_Initialisation(Machine(Main))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Main))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Main))==(btrue);
  List_Constraints(Machine(Main))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Main))==(run);
  List_Operations(Machine(Main))==(run)
END
&
THEORY ListInputX IS
  List_Input(Machine(Main),run)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Main),run)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Main),run)==(run)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Main),run)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Main),run)==(btrue | skip);
  List_Substitution(Machine(Main),run)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Main))==(?);
  Inherited_List_Constants(Machine(Main))==(?);
  List_Constants(Machine(Main))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Main))==(?);
  Context_List_Defered(Machine(Main))==(?);
  Context_List_Sets(Machine(Main))==(?);
  List_Valuable_Sets(Machine(Main))==(?);
  Inherited_List_Enumerated(Machine(Main))==(?);
  Inherited_List_Defered(Machine(Main))==(?);
  Inherited_List_Sets(Machine(Main))==(?);
  List_Enumerated(Machine(Main))==(?);
  List_Defered(Machine(Main))==(?);
  List_Sets(Machine(Main))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Main))==(?);
  Expanded_List_HiddenConstants(Machine(Main))==(?);
  List_HiddenConstants(Machine(Main))==(?);
  External_List_HiddenConstants(Machine(Main))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Main))==(btrue);
  Context_List_Properties(Machine(Main))==(btrue);
  Inherited_List_Properties(Machine(Main))==(btrue);
  List_Properties(Machine(Main))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Main),run)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Main)) == (? | ? | ? | ? | run | ? | ? | ? | Main);
  List_Of_HiddenCst_Ids(Machine(Main)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Main)) == (?);
  List_Of_VisibleVar_Ids(Machine(Main)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Main)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Main)) == (Type(run) == Cst(No_type,No_type));
  Observers(Machine(Main)) == (Type(run) == Cst(No_type,No_type))
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
