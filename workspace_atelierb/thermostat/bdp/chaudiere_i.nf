Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(chaudiere_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(chaudiere_i))==(Machine(chaudiere));
  Level(Implementation(chaudiere_i))==(1);
  Upper_Level(Implementation(chaudiere_i))==(Machine(chaudiere))
END
&
THEORY LoadedStructureX IS
  Implementation(chaudiere_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(chaudiere_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(chaudiere_i))==(?);
  Inherited_List_Includes(Implementation(chaudiere_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(chaudiere_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(chaudiere_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(chaudiere_i))==(?);
  Context_List_Variables(Implementation(chaudiere_i))==(?);
  Abstract_List_Variables(Implementation(chaudiere_i))==(?);
  Local_List_Variables(Implementation(chaudiere_i))==(?);
  List_Variables(Implementation(chaudiere_i))==(?);
  External_List_Variables(Implementation(chaudiere_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(chaudiere_i))==(?);
  Abstract_List_VisibleVariables(Implementation(chaudiere_i))==(?);
  External_List_VisibleVariables(Implementation(chaudiere_i))==(?);
  Expanded_List_VisibleVariables(Implementation(chaudiere_i))==(?);
  List_VisibleVariables(Implementation(chaudiere_i))==(?);
  Internal_List_VisibleVariables(Implementation(chaudiere_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(chaudiere_i))==(btrue);
  Expanded_List_Invariant(Implementation(chaudiere_i))==(btrue);
  Abstract_List_Invariant(Implementation(chaudiere_i))==(btrue);
  Context_List_Invariant(Implementation(chaudiere_i))==(btrue);
  List_Invariant(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(chaudiere_i))==(btrue);
  Abstract_List_Assertions(Implementation(chaudiere_i))==(btrue);
  Context_List_Assertions(Implementation(chaudiere_i))==(btrue);
  List_Assertions(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(chaudiere_i))==(skip);
  Context_List_Initialisation(Implementation(chaudiere_i))==(skip);
  List_Initialisation(Implementation(chaudiere_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(chaudiere_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(chaudiere_i))==(btrue);
  List_Context_Constraints(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(chaudiere_i))==(start_chaudiere,stop_chaudiere);
  List_Operations(Implementation(chaudiere_i))==(start_chaudiere,stop_chaudiere)
END
&
THEORY ListInputX IS
  List_Input(Implementation(chaudiere_i),start_chaudiere)==(?);
  List_Input(Implementation(chaudiere_i),stop_chaudiere)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(chaudiere_i),start_chaudiere)==(?);
  List_Output(Implementation(chaudiere_i),stop_chaudiere)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(chaudiere_i),start_chaudiere)==(start_chaudiere);
  List_Header(Implementation(chaudiere_i),stop_chaudiere)==(stop_chaudiere)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(chaudiere_i),start_chaudiere)==(btrue);
  List_Precondition(Implementation(chaudiere_i),start_chaudiere)==(btrue);
  Own_Precondition(Implementation(chaudiere_i),stop_chaudiere)==(btrue);
  List_Precondition(Implementation(chaudiere_i),stop_chaudiere)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(chaudiere_i),stop_chaudiere)==(btrue | skip);
  Expanded_List_Substitution(Implementation(chaudiere_i),start_chaudiere)==(btrue | skip);
  List_Substitution(Implementation(chaudiere_i),start_chaudiere)==(skip);
  List_Substitution(Implementation(chaudiere_i),stop_chaudiere)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(chaudiere_i))==(?);
  Inherited_List_Constants(Implementation(chaudiere_i))==(?);
  List_Constants(Implementation(chaudiere_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(chaudiere_i))==(?);
  Context_List_Defered(Implementation(chaudiere_i))==(?);
  Context_List_Sets(Implementation(chaudiere_i))==(?);
  List_Own_Enumerated(Implementation(chaudiere_i))==(?);
  List_Valuable_Sets(Implementation(chaudiere_i))==(?);
  Inherited_List_Enumerated(Implementation(chaudiere_i))==(?);
  Inherited_List_Defered(Implementation(chaudiere_i))==(?);
  Inherited_List_Sets(Implementation(chaudiere_i))==(?);
  List_Enumerated(Implementation(chaudiere_i))==(?);
  List_Defered(Implementation(chaudiere_i))==(?);
  List_Sets(Implementation(chaudiere_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(chaudiere_i))==(?);
  Expanded_List_HiddenConstants(Implementation(chaudiere_i))==(?);
  List_HiddenConstants(Implementation(chaudiere_i))==(?);
  External_List_HiddenConstants(Implementation(chaudiere_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(chaudiere_i))==(btrue);
  Context_List_Properties(Implementation(chaudiere_i))==(btrue);
  Inherited_List_Properties(Implementation(chaudiere_i))==(btrue);
  List_Properties(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(chaudiere_i))==(aa: aa);
  List_Values(Implementation(chaudiere_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(chaudiere_i))==(Type(stop_chaudiere) == Cst(No_type,No_type);Type(start_chaudiere) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(chaudiere_i)) == (? | ? | ? | ? | start_chaudiere,stop_chaudiere | ? | ? | ? | chaudiere_i);
  List_Of_HiddenCst_Ids(Implementation(chaudiere_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(chaudiere_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(chaudiere_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(chaudiere_i)) == (?: ?)
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
  List_Local_Operations(Implementation(chaudiere_i))==(?)
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
  TypingPredicate(Implementation(chaudiere_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
