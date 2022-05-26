Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(temperature_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(temperature_i))==(Machine(temperature));
  Level(Implementation(temperature_i))==(1);
  Upper_Level(Implementation(temperature_i))==(Machine(temperature))
END
&
THEORY LoadedStructureX IS
  Implementation(temperature_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(temperature_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(temperature_i))==(?);
  Inherited_List_Includes(Implementation(temperature_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(temperature_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(temperature_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(temperature_i))==(?);
  Context_List_Variables(Implementation(temperature_i))==(?);
  Abstract_List_Variables(Implementation(temperature_i))==(?);
  Local_List_Variables(Implementation(temperature_i))==(?);
  List_Variables(Implementation(temperature_i))==(?);
  External_List_Variables(Implementation(temperature_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(temperature_i))==(?);
  Abstract_List_VisibleVariables(Implementation(temperature_i))==(?);
  External_List_VisibleVariables(Implementation(temperature_i))==(?);
  Expanded_List_VisibleVariables(Implementation(temperature_i))==(?);
  List_VisibleVariables(Implementation(temperature_i))==(?);
  Internal_List_VisibleVariables(Implementation(temperature_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(temperature_i))==(btrue);
  Expanded_List_Invariant(Implementation(temperature_i))==(btrue);
  Abstract_List_Invariant(Implementation(temperature_i))==(btrue);
  Context_List_Invariant(Implementation(temperature_i))==(btrue);
  List_Invariant(Implementation(temperature_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(temperature_i))==(btrue);
  Abstract_List_Assertions(Implementation(temperature_i))==(btrue);
  Context_List_Assertions(Implementation(temperature_i))==(btrue);
  List_Assertions(Implementation(temperature_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(temperature_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(temperature_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(temperature_i))==(skip);
  Context_List_Initialisation(Implementation(temperature_i))==(skip);
  List_Initialisation(Implementation(temperature_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(temperature_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(temperature_i))==(btrue);
  List_Context_Constraints(Implementation(temperature_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(temperature_i))==(temperature_get_temperature);
  List_Operations(Implementation(temperature_i))==(temperature_get_temperature)
END
&
THEORY ListInputX IS
  List_Input(Implementation(temperature_i),temperature_get_temperature)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(temperature_i),temperature_get_temperature)==(new_temperature)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(temperature_i),temperature_get_temperature)==(new_temperature <-- temperature_get_temperature)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(temperature_i),temperature_get_temperature)==(btrue);
  List_Precondition(Implementation(temperature_i),temperature_get_temperature)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(temperature_i),temperature_get_temperature)==(btrue & 1900: INT | new_temperature:=1900);
  List_Substitution(Implementation(temperature_i),temperature_get_temperature)==(new_temperature:=1900)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(temperature_i))==(?);
  Inherited_List_Constants(Implementation(temperature_i))==(?);
  List_Constants(Implementation(temperature_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(temperature_i))==(?);
  Context_List_Defered(Implementation(temperature_i))==(?);
  Context_List_Sets(Implementation(temperature_i))==(?);
  List_Own_Enumerated(Implementation(temperature_i))==(?);
  List_Valuable_Sets(Implementation(temperature_i))==(?);
  Inherited_List_Enumerated(Implementation(temperature_i))==(?);
  Inherited_List_Defered(Implementation(temperature_i))==(?);
  Inherited_List_Sets(Implementation(temperature_i))==(?);
  List_Enumerated(Implementation(temperature_i))==(?);
  List_Defered(Implementation(temperature_i))==(?);
  List_Sets(Implementation(temperature_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(temperature_i))==(?);
  Expanded_List_HiddenConstants(Implementation(temperature_i))==(?);
  List_HiddenConstants(Implementation(temperature_i))==(?);
  External_List_HiddenConstants(Implementation(temperature_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(temperature_i))==(btrue);
  Context_List_Properties(Implementation(temperature_i))==(btrue);
  Inherited_List_Properties(Implementation(temperature_i))==(btrue);
  List_Properties(Implementation(temperature_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(temperature_i))==(aa: aa);
  List_Values(Implementation(temperature_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(temperature_i))==(Type(temperature_get_temperature) == Cst(btype(INTEGER,0,MAXINT),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(temperature_i)) == (? | ? | ? | ? | temperature_get_temperature | ? | ? | ? | temperature_i);
  List_Of_HiddenCst_Ids(Implementation(temperature_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(temperature_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(temperature_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(temperature_i)) == (?: ?)
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
  List_Local_Operations(Implementation(temperature_i))==(?)
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
  TypingPredicate(Implementation(temperature_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
