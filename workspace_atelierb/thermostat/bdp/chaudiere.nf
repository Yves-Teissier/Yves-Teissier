Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(chaudiere))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(chaudiere))==(Machine(chaudiere));
  Level(Machine(chaudiere))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(chaudiere)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(chaudiere))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(chaudiere))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(chaudiere))==(?);
  List_Includes(Machine(chaudiere))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(chaudiere))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(chaudiere))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(chaudiere))==(?);
  Context_List_Variables(Machine(chaudiere))==(?);
  Abstract_List_Variables(Machine(chaudiere))==(?);
  Local_List_Variables(Machine(chaudiere))==(?);
  List_Variables(Machine(chaudiere))==(?);
  External_List_Variables(Machine(chaudiere))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(chaudiere))==(?);
  Abstract_List_VisibleVariables(Machine(chaudiere))==(?);
  External_List_VisibleVariables(Machine(chaudiere))==(?);
  Expanded_List_VisibleVariables(Machine(chaudiere))==(?);
  List_VisibleVariables(Machine(chaudiere))==(?);
  Internal_List_VisibleVariables(Machine(chaudiere))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(chaudiere))==(btrue);
  Gluing_List_Invariant(Machine(chaudiere))==(btrue);
  Expanded_List_Invariant(Machine(chaudiere))==(btrue);
  Abstract_List_Invariant(Machine(chaudiere))==(btrue);
  Context_List_Invariant(Machine(chaudiere))==(btrue);
  List_Invariant(Machine(chaudiere))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(chaudiere))==(btrue);
  Abstract_List_Assertions(Machine(chaudiere))==(btrue);
  Context_List_Assertions(Machine(chaudiere))==(btrue);
  List_Assertions(Machine(chaudiere))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(chaudiere))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(chaudiere))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(chaudiere))==(skip);
  Context_List_Initialisation(Machine(chaudiere))==(skip);
  List_Initialisation(Machine(chaudiere))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(chaudiere))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(chaudiere))==(btrue);
  List_Constraints(Machine(chaudiere))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(chaudiere))==(start_chaudiere,stop_chaudiere);
  List_Operations(Machine(chaudiere))==(start_chaudiere,stop_chaudiere)
END
&
THEORY ListInputX IS
  List_Input(Machine(chaudiere),start_chaudiere)==(?);
  List_Input(Machine(chaudiere),stop_chaudiere)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(chaudiere),start_chaudiere)==(?);
  List_Output(Machine(chaudiere),stop_chaudiere)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(chaudiere),start_chaudiere)==(start_chaudiere);
  List_Header(Machine(chaudiere),stop_chaudiere)==(stop_chaudiere)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(chaudiere),start_chaudiere)==(btrue);
  List_Precondition(Machine(chaudiere),stop_chaudiere)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(chaudiere),stop_chaudiere)==(btrue | skip);
  Expanded_List_Substitution(Machine(chaudiere),start_chaudiere)==(btrue | skip);
  List_Substitution(Machine(chaudiere),start_chaudiere)==(skip);
  List_Substitution(Machine(chaudiere),stop_chaudiere)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(chaudiere))==(?);
  Inherited_List_Constants(Machine(chaudiere))==(?);
  List_Constants(Machine(chaudiere))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(chaudiere))==(?);
  Context_List_Defered(Machine(chaudiere))==(?);
  Context_List_Sets(Machine(chaudiere))==(?);
  List_Valuable_Sets(Machine(chaudiere))==(?);
  Inherited_List_Enumerated(Machine(chaudiere))==(?);
  Inherited_List_Defered(Machine(chaudiere))==(?);
  Inherited_List_Sets(Machine(chaudiere))==(?);
  List_Enumerated(Machine(chaudiere))==(?);
  List_Defered(Machine(chaudiere))==(?);
  List_Sets(Machine(chaudiere))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(chaudiere))==(?);
  Expanded_List_HiddenConstants(Machine(chaudiere))==(?);
  List_HiddenConstants(Machine(chaudiere))==(?);
  External_List_HiddenConstants(Machine(chaudiere))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(chaudiere))==(btrue);
  Context_List_Properties(Machine(chaudiere))==(btrue);
  Inherited_List_Properties(Machine(chaudiere))==(btrue);
  List_Properties(Machine(chaudiere))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(chaudiere),start_chaudiere)==(?);
  List_ANY_Var(Machine(chaudiere),stop_chaudiere)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(chaudiere)) == (? | ? | ? | ? | start_chaudiere,stop_chaudiere | ? | ? | ? | chaudiere);
  List_Of_HiddenCst_Ids(Machine(chaudiere)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(chaudiere)) == (?);
  List_Of_VisibleVar_Ids(Machine(chaudiere)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(chaudiere)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(chaudiere)) == (Type(stop_chaudiere) == Cst(No_type,No_type);Type(start_chaudiere) == Cst(No_type,No_type));
  Observers(Machine(chaudiere)) == (Type(stop_chaudiere) == Cst(No_type,No_type);Type(start_chaudiere) == Cst(No_type,No_type))
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
