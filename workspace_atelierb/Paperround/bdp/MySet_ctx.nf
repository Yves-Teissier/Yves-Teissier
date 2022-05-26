Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MySet_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MySet_ctx))==(Machine(MySet_ctx));
  Level(Machine(MySet_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MySet_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MySet_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MySet_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MySet_ctx))==(?);
  List_Includes(Machine(MySet_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MySet_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MySet_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MySet_ctx))==(?);
  Context_List_Variables(Machine(MySet_ctx))==(?);
  Abstract_List_Variables(Machine(MySet_ctx))==(?);
  Local_List_Variables(Machine(MySet_ctx))==(?);
  List_Variables(Machine(MySet_ctx))==(?);
  External_List_Variables(Machine(MySet_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MySet_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(MySet_ctx))==(?);
  External_List_VisibleVariables(Machine(MySet_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(MySet_ctx))==(?);
  List_VisibleVariables(Machine(MySet_ctx))==(?);
  Internal_List_VisibleVariables(Machine(MySet_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MySet_ctx))==(btrue);
  Gluing_List_Invariant(Machine(MySet_ctx))==(btrue);
  Expanded_List_Invariant(Machine(MySet_ctx))==(btrue);
  Abstract_List_Invariant(Machine(MySet_ctx))==(btrue);
  Context_List_Invariant(Machine(MySet_ctx))==(btrue);
  List_Invariant(Machine(MySet_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MySet_ctx))==(btrue);
  Abstract_List_Assertions(Machine(MySet_ctx))==(btrue);
  Context_List_Assertions(Machine(MySet_ctx))==(btrue);
  List_Assertions(Machine(MySet_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MySet_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MySet_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MySet_ctx))==(skip);
  Context_List_Initialisation(Machine(MySet_ctx))==(skip);
  List_Initialisation(Machine(MySet_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MySet_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MySet_ctx))==(btrue);
  List_Constraints(Machine(MySet_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MySet_ctx))==(?);
  List_Operations(Machine(MySet_ctx))==(?)
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
  List_Valuable_Constants(Machine(MySet_ctx))==(MM);
  Inherited_List_Constants(Machine(MySet_ctx))==(?);
  List_Constants(Machine(MySet_ctx))==(MM)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(MySet_ctx),VALUE)==(?);
  Context_List_Enumerated(Machine(MySet_ctx))==(?);
  Context_List_Defered(Machine(MySet_ctx))==(?);
  Context_List_Sets(Machine(MySet_ctx))==(?);
  List_Valuable_Sets(Machine(MySet_ctx))==(VALUE);
  Inherited_List_Enumerated(Machine(MySet_ctx))==(?);
  Inherited_List_Defered(Machine(MySet_ctx))==(?);
  Inherited_List_Sets(Machine(MySet_ctx))==(?);
  List_Enumerated(Machine(MySet_ctx))==(?);
  List_Defered(Machine(MySet_ctx))==(VALUE);
  List_Sets(Machine(MySet_ctx))==(VALUE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MySet_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(MySet_ctx))==(?);
  List_HiddenConstants(Machine(MySet_ctx))==(?);
  External_List_HiddenConstants(Machine(MySet_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MySet_ctx))==(btrue);
  Context_List_Properties(Machine(MySet_ctx))==(btrue);
  Inherited_List_Properties(Machine(MySet_ctx))==(btrue);
  List_Properties(Machine(MySet_ctx))==(MM: NAT & VALUE: FIN(INTEGER) & not(VALUE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MySet_ctx)) == (MM,VALUE | ? | ? | ? | ? | ? | ? | ? | MySet_ctx);
  List_Of_HiddenCst_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MySet_ctx)) == (MM);
  List_Of_VisibleVar_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MySet_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(MySet_ctx)) == (Type(VALUE) == Cst(SetOf(atype(VALUE,"[VALUE","]VALUE"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(MySet_ctx)) == (Type(MM) == Cst(btype(INTEGER,?,?)))
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
