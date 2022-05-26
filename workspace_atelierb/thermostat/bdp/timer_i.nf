Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(timer_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(timer_i))==(Machine(timer));
  Level(Implementation(timer_i))==(1);
  Upper_Level(Implementation(timer_i))==(Machine(timer))
END
&
THEORY LoadedStructureX IS
  Implementation(timer_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(timer_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(timer_i))==(?);
  Inherited_List_Includes(Implementation(timer_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(timer_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(timer_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(timer_i))==(?);
  Context_List_Variables(Implementation(timer_i))==(?);
  Abstract_List_Variables(Implementation(timer_i))==(delay);
  Local_List_Variables(Implementation(timer_i))==(?);
  List_Variables(Implementation(timer_i))==(?);
  External_List_Variables(Implementation(timer_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(timer_i))==(?);
  Abstract_List_VisibleVariables(Implementation(timer_i))==(?);
  External_List_VisibleVariables(Implementation(timer_i))==(?);
  Expanded_List_VisibleVariables(Implementation(timer_i))==(?);
  List_VisibleVariables(Implementation(timer_i))==(?);
  Internal_List_VisibleVariables(Implementation(timer_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(timer_i))==(btrue);
  Expanded_List_Invariant(Implementation(timer_i))==(btrue);
  Abstract_List_Invariant(Implementation(timer_i))==(delay: NAT);
  Context_List_Invariant(Implementation(timer_i))==(btrue);
  List_Invariant(Implementation(timer_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(timer_i))==(btrue);
  Abstract_List_Assertions(Implementation(timer_i))==(btrue);
  Context_List_Assertions(Implementation(timer_i))==(btrue);
  List_Assertions(Implementation(timer_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(timer_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(timer_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(timer_i))==(skip);
  Context_List_Initialisation(Implementation(timer_i))==(skip);
  List_Initialisation(Implementation(timer_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(timer_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(timer_i))==(btrue);
  List_Context_Constraints(Implementation(timer_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(timer_i))==(timer_wait);
  List_Operations(Implementation(timer_i))==(timer_wait)
END
&
THEORY ListInputX IS
  List_Input(Implementation(timer_i),timer_wait)==(aDelay)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(timer_i),timer_wait)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(timer_i),timer_wait)==(timer_wait(aDelay))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(timer_i),timer_wait)==(btrue);
  List_Precondition(Implementation(timer_i),timer_wait)==(aDelay: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(timer_i),timer_wait)==(aDelay: NAT | skip);
  List_Substitution(Implementation(timer_i),timer_wait)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(timer_i))==(?);
  Inherited_List_Constants(Implementation(timer_i))==(?);
  List_Constants(Implementation(timer_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(timer_i))==(?);
  Context_List_Defered(Implementation(timer_i))==(?);
  Context_List_Sets(Implementation(timer_i))==(?);
  List_Own_Enumerated(Implementation(timer_i))==(?);
  List_Valuable_Sets(Implementation(timer_i))==(?);
  Inherited_List_Enumerated(Implementation(timer_i))==(?);
  Inherited_List_Defered(Implementation(timer_i))==(?);
  Inherited_List_Sets(Implementation(timer_i))==(?);
  List_Enumerated(Implementation(timer_i))==(?);
  List_Defered(Implementation(timer_i))==(?);
  List_Sets(Implementation(timer_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(timer_i))==(?);
  Expanded_List_HiddenConstants(Implementation(timer_i))==(?);
  List_HiddenConstants(Implementation(timer_i))==(?);
  External_List_HiddenConstants(Implementation(timer_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(timer_i))==(btrue);
  Context_List_Properties(Implementation(timer_i))==(btrue);
  Inherited_List_Properties(Implementation(timer_i))==(btrue);
  List_Properties(Implementation(timer_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(timer_i))==(aa: aa);
  List_Values(Implementation(timer_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(timer_i))==(Type(timer_wait) == Cst(No_type,btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(timer_i)) == (? | ? | ? | ? | timer_wait | ? | ? | ? | timer_i);
  List_Of_HiddenCst_Ids(Implementation(timer_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(timer_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(timer_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(timer_i)) == (?: ?)
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
  List_Local_Operations(Implementation(timer_i))==(?)
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
  TypingPredicate(Implementation(timer_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
