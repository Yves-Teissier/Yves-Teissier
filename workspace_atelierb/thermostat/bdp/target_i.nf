Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(target_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(target_i))==(Machine(target));
  Level(Implementation(target_i))==(1);
  Upper_Level(Implementation(target_i))==(Machine(target))
END
&
THEORY LoadedStructureX IS
  Implementation(target_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(target_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(target_i))==(?);
  Inherited_List_Includes(Implementation(target_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(target_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(target_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(target_i))==(?);
  Context_List_Variables(Implementation(target_i))==(?);
  Abstract_List_Variables(Implementation(target_i))==(?);
  Local_List_Variables(Implementation(target_i))==(?);
  List_Variables(Implementation(target_i))==(?);
  External_List_Variables(Implementation(target_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(target_i))==(?);
  Abstract_List_VisibleVariables(Implementation(target_i))==(?);
  External_List_VisibleVariables(Implementation(target_i))==(?);
  Expanded_List_VisibleVariables(Implementation(target_i))==(?);
  List_VisibleVariables(Implementation(target_i))==(?);
  Internal_List_VisibleVariables(Implementation(target_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(target_i))==(btrue);
  Expanded_List_Invariant(Implementation(target_i))==(btrue);
  Abstract_List_Invariant(Implementation(target_i))==(btrue);
  Context_List_Invariant(Implementation(target_i))==(btrue);
  List_Invariant(Implementation(target_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(target_i))==(btrue);
  Abstract_List_Assertions(Implementation(target_i))==(btrue);
  Context_List_Assertions(Implementation(target_i))==(btrue);
  List_Assertions(Implementation(target_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(target_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(target_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(target_i))==(skip);
  Context_List_Initialisation(Implementation(target_i))==(skip);
  List_Initialisation(Implementation(target_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(target_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(target_i))==(btrue);
  List_Context_Constraints(Implementation(target_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(target_i))==(target_get_target);
  List_Operations(Implementation(target_i))==(target_get_target)
END
&
THEORY ListInputX IS
  List_Input(Implementation(target_i),target_get_target)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(target_i),target_get_target)==(ret_target)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(target_i),target_get_target)==(ret_target <-- target_get_target)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(target_i),target_get_target)==(btrue);
  List_Precondition(Implementation(target_i),target_get_target)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(target_i),target_get_target)==(btrue & 1800: INT | ret_target:=1800);
  List_Substitution(Implementation(target_i),target_get_target)==(ret_target:=1800)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(target_i))==(?);
  Inherited_List_Constants(Implementation(target_i))==(?);
  List_Constants(Implementation(target_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(target_i))==(?);
  Context_List_Defered(Implementation(target_i))==(?);
  Context_List_Sets(Implementation(target_i))==(?);
  List_Own_Enumerated(Implementation(target_i))==(?);
  List_Valuable_Sets(Implementation(target_i))==(?);
  Inherited_List_Enumerated(Implementation(target_i))==(?);
  Inherited_List_Defered(Implementation(target_i))==(?);
  Inherited_List_Sets(Implementation(target_i))==(?);
  List_Enumerated(Implementation(target_i))==(?);
  List_Defered(Implementation(target_i))==(?);
  List_Sets(Implementation(target_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(target_i))==(?);
  Expanded_List_HiddenConstants(Implementation(target_i))==(?);
  List_HiddenConstants(Implementation(target_i))==(?);
  External_List_HiddenConstants(Implementation(target_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(target_i))==(btrue);
  Context_List_Properties(Implementation(target_i))==(btrue);
  Inherited_List_Properties(Implementation(target_i))==(btrue);
  List_Properties(Implementation(target_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(target_i))==(aa: aa);
  List_Values(Implementation(target_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(target_i))==(Type(target_get_target) == Cst(btype(INTEGER,0,MAXINT),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(target_i)) == (? | ? | ? | ? | target_get_target | ? | ? | ? | target_i);
  List_Of_HiddenCst_Ids(Implementation(target_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(target_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(target_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(target_i)) == (?: ?)
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
  List_Local_Operations(Implementation(target_i))==(?)
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
  TypingPredicate(Implementation(target_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
