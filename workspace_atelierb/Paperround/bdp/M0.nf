Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(M0))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(M0))==(Machine(M0));
  Level(Machine(M0))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(M0)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(M0))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(M0))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(M0))==(?);
  List_Includes(Machine(M0))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(M0))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(M0))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(M0))==(?);
  Context_List_Variables(Machine(M0))==(?);
  Abstract_List_Variables(Machine(M0))==(?);
  Local_List_Variables(Machine(M0))==(xx);
  List_Variables(Machine(M0))==(xx);
  External_List_Variables(Machine(M0))==(xx)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(M0))==(?);
  Abstract_List_VisibleVariables(Machine(M0))==(?);
  External_List_VisibleVariables(Machine(M0))==(?);
  Expanded_List_VisibleVariables(Machine(M0))==(?);
  List_VisibleVariables(Machine(M0))==(?);
  Internal_List_VisibleVariables(Machine(M0))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(M0))==(btrue);
  Gluing_List_Invariant(Machine(M0))==(btrue);
  Expanded_List_Invariant(Machine(M0))==(btrue);
  Abstract_List_Invariant(Machine(M0))==(btrue);
  Context_List_Invariant(Machine(M0))==(btrue);
  List_Invariant(Machine(M0))==(xx: 0..3)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(M0))==(btrue);
  Abstract_List_Assertions(Machine(M0))==(btrue);
  Context_List_Assertions(Machine(M0))==(btrue);
  List_Assertions(Machine(M0))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(M0))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(M0))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(M0))==(@(xx$0).(xx$0: 0..1 ==> xx:=xx$0));
  Context_List_Initialisation(Machine(M0))==(skip);
  List_Initialisation(Machine(M0))==(xx:: 0..1)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(M0))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(M0))==(btrue);
  List_Constraints(Machine(M0))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(M0))==(op);
  List_Operations(Machine(M0))==(op)
END
&
THEORY ListInputX IS
  List_Input(Machine(M0),op)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(M0),op)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(M0),op)==(op)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(M0),op)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(M0),op)==(btrue | xx:=xx+1);
  List_Substitution(Machine(M0),op)==(xx:=xx+1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(M0))==(?);
  Inherited_List_Constants(Machine(M0))==(?);
  List_Constants(Machine(M0))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(M0))==(?);
  Context_List_Defered(Machine(M0))==(?);
  Context_List_Sets(Machine(M0))==(?);
  List_Valuable_Sets(Machine(M0))==(?);
  Inherited_List_Enumerated(Machine(M0))==(?);
  Inherited_List_Defered(Machine(M0))==(?);
  Inherited_List_Sets(Machine(M0))==(?);
  List_Enumerated(Machine(M0))==(?);
  List_Defered(Machine(M0))==(?);
  List_Sets(Machine(M0))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(M0))==(?);
  Expanded_List_HiddenConstants(Machine(M0))==(?);
  List_HiddenConstants(Machine(M0))==(?);
  External_List_HiddenConstants(Machine(M0))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(M0))==(btrue);
  Context_List_Properties(Machine(M0))==(btrue);
  Inherited_List_Properties(Machine(M0))==(btrue);
  List_Properties(Machine(M0))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(M0),op)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(M0)) == (? | ? | xx | ? | op | ? | ? | ? | M0);
  List_Of_HiddenCst_Ids(Machine(M0)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(M0)) == (?);
  List_Of_VisibleVar_Ids(Machine(M0)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(M0)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(M0)) == (Type(xx) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(M0)) == (Type(op) == Cst(No_type,No_type))
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
