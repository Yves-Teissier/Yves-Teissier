Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Base))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Base))==(Machine(Base));
  Level(Machine(Base))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Base)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Base))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Base))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Base))==(?);
  List_Includes(Machine(Base))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Base))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Base))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Base))==(?);
  Context_List_Variables(Machine(Base))==(?);
  Abstract_List_Variables(Machine(Base))==(?);
  Local_List_Variables(Machine(Base))==(?);
  List_Variables(Machine(Base))==(?);
  External_List_Variables(Machine(Base))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Base))==(?);
  Abstract_List_VisibleVariables(Machine(Base))==(?);
  External_List_VisibleVariables(Machine(Base))==(?);
  Expanded_List_VisibleVariables(Machine(Base))==(?);
  List_VisibleVariables(Machine(Base))==(?);
  Internal_List_VisibleVariables(Machine(Base))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Base))==(btrue);
  Gluing_List_Invariant(Machine(Base))==(btrue);
  Expanded_List_Invariant(Machine(Base))==(btrue);
  Abstract_List_Invariant(Machine(Base))==(btrue);
  Context_List_Invariant(Machine(Base))==(btrue);
  List_Invariant(Machine(Base))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Base))==(btrue);
  Abstract_List_Assertions(Machine(Base))==(btrue);
  Context_List_Assertions(Machine(Base))==(btrue);
  List_Assertions(Machine(Base))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Base))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Base))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Base))==(skip);
  Context_List_Initialisation(Machine(Base))==(skip);
  List_Initialisation(Machine(Base))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Base))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Base))==(btrue);
  List_Constraints(Machine(Base))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Base))==(?);
  List_Operations(Machine(Base))==(?)
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
  List_Valuable_Constants(Machine(Base))==(?);
  Inherited_List_Constants(Machine(Base))==(?);
  List_Constants(Machine(Base))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Base))==(?);
  Context_List_Defered(Machine(Base))==(?);
  Context_List_Sets(Machine(Base))==(?);
  List_Valuable_Sets(Machine(Base))==(?);
  Inherited_List_Enumerated(Machine(Base))==(?);
  Inherited_List_Defered(Machine(Base))==(?);
  Inherited_List_Sets(Machine(Base))==(?);
  List_Enumerated(Machine(Base))==(?);
  List_Defered(Machine(Base))==(?);
  List_Sets(Machine(Base))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Base))==(?);
  Expanded_List_HiddenConstants(Machine(Base))==(?);
  List_HiddenConstants(Machine(Base))==(?);
  External_List_HiddenConstants(Machine(Base))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Base))==(btrue);
  Context_List_Properties(Machine(Base))==(btrue);
  Inherited_List_Properties(Machine(Base))==(btrue);
  List_Properties(Machine(Base))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Base)) == (? | ? | ? | ? | ? | ? | ? | ? | Base);
  List_Of_HiddenCst_Ids(Machine(Base)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Base)) == (?);
  List_Of_VisibleVar_Ids(Machine(Base)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Base)) == (?: ?)
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SYSTEM_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
