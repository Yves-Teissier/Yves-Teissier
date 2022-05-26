Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(DataFields_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(DataFields_i))==(Machine(DataFields));
  Level(Implementation(DataFields_i))==(1);
  Upper_Level(Implementation(DataFields_i))==(Machine(DataFields))
END
&
THEORY LoadedStructureX IS
  Implementation(DataFields_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(DataFields_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(DataFields_i))==(?);
  Inherited_List_Includes(Implementation(DataFields_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(DataFields_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(DataFields_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(DataFields_i))==(?);
  Context_List_Variables(Implementation(DataFields_i))==(?);
  Abstract_List_Variables(Implementation(DataFields_i))==(?);
  Local_List_Variables(Implementation(DataFields_i))==(?);
  List_Variables(Implementation(DataFields_i))==(?);
  External_List_Variables(Implementation(DataFields_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(DataFields_i))==(?);
  Abstract_List_VisibleVariables(Implementation(DataFields_i))==(?);
  External_List_VisibleVariables(Implementation(DataFields_i))==(?);
  Expanded_List_VisibleVariables(Implementation(DataFields_i))==(?);
  List_VisibleVariables(Implementation(DataFields_i))==(?);
  Internal_List_VisibleVariables(Implementation(DataFields_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(DataFields_i))==(btrue);
  Expanded_List_Invariant(Implementation(DataFields_i))==(btrue);
  Abstract_List_Invariant(Implementation(DataFields_i))==(btrue);
  Context_List_Invariant(Implementation(DataFields_i))==(btrue);
  List_Invariant(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(DataFields_i))==(btrue);
  Abstract_List_Assertions(Implementation(DataFields_i))==(btrue);
  Context_List_Assertions(Implementation(DataFields_i))==(btrue);
  List_Assertions(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(DataFields_i))==(skip);
  Context_List_Initialisation(Implementation(DataFields_i))==(skip);
  List_Initialisation(Implementation(DataFields_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(DataFields_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(DataFields_i))==(btrue);
  List_Context_Constraints(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(DataFields_i))==(?);
  List_Operations(Implementation(DataFields_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(DataFields_i))==(?);
  Inherited_List_Constants(Implementation(DataFields_i))==(?);
  List_Constants(Implementation(DataFields_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(DataFields_i),MM)==({am,pm});
  Context_List_Enumerated(Implementation(DataFields_i))==(?);
  Context_List_Defered(Implementation(DataFields_i))==(?);
  Context_List_Sets(Implementation(DataFields_i))==(?);
  List_Own_Enumerated(Implementation(DataFields_i))==(MM);
  List_Valuable_Sets(Implementation(DataFields_i))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR);
  Inherited_List_Enumerated(Implementation(DataFields_i))==(MM);
  Inherited_List_Defered(Implementation(DataFields_i))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR);
  Inherited_List_Sets(Implementation(DataFields_i))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR,MM);
  List_Enumerated(Implementation(DataFields_i))==(?);
  List_Defered(Implementation(DataFields_i))==(?);
  List_Sets(Implementation(DataFields_i))==(?);
  Set_Definition(Implementation(DataFields_i),YEAR)==(?);
  Set_Definition(Implementation(DataFields_i),MONTH)==(?);
  Set_Definition(Implementation(DataFields_i),DAY)==(?);
  Set_Definition(Implementation(DataFields_i),SECOND)==(?);
  Set_Definition(Implementation(DataFields_i),MINUTE)==(?);
  Set_Definition(Implementation(DataFields_i),HOUR)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(DataFields_i))==(?);
  Expanded_List_HiddenConstants(Implementation(DataFields_i))==(?);
  List_HiddenConstants(Implementation(DataFields_i))==(?);
  External_List_HiddenConstants(Implementation(DataFields_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(DataFields_i))==(HOUR: FIN(INTEGER) & not(HOUR = {}) & MINUTE: FIN(INTEGER) & not(MINUTE = {}) & SECOND: FIN(INTEGER) & not(SECOND = {}) & DAY: FIN(INTEGER) & not(DAY = {}) & MONTH: FIN(INTEGER) & not(MONTH = {}) & YEAR: FIN(INTEGER) & not(YEAR = {}) & MM: FIN(INTEGER) & not(MM = {}));
  Context_List_Properties(Implementation(DataFields_i))==(btrue);
  Inherited_List_Properties(Implementation(DataFields_i))==(btrue);
  List_Properties(Implementation(DataFields_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(DataFields_i))==(btrue);
  Values_Subs(Implementation(DataFields_i))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR: 0..23,0..59,0..59,1..31,1..12,1900..2100);
  List_Values(Implementation(DataFields_i))==(HOUR = 0..23;MINUTE = 0..59;SECOND = 0..59;DAY = 1..31;MONTH = 1..12;YEAR = 1900..2100)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(DataFields_i))==(Type(am) == Cst(etype(MM,0,1));Type(pm) == Cst(etype(MM,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(DataFields_i)) == (? | ? | ? | ? | ? | ? | ? | ? | DataFields_i);
  List_Of_HiddenCst_Ids(Implementation(DataFields_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(DataFields_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(DataFields_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(DataFields_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(DataFields_i)) == (Type(MM) == Cst(SetOf(etype(MM,0,1)));Type(YEAR) == Cst(SetOf(btype(INTEGER,"[YEAR","]YEAR")));Type(MONTH) == Cst(SetOf(btype(INTEGER,"[MONTH","]MONTH")));Type(DAY) == Cst(SetOf(btype(INTEGER,"[DAY","]DAY")));Type(SECOND) == Cst(SetOf(btype(INTEGER,"[SECOND","]SECOND")));Type(MINUTE) == Cst(SetOf(btype(INTEGER,"[MINUTE","]MINUTE")));Type(HOUR) == Cst(SetOf(btype(INTEGER,"[HOUR","]HOUR"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(DataFields_i)) == (Type(pm) == Cst(etype(MM,0,1));Type(am) == Cst(etype(MM,0,1)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(DataFields_i))==(?)
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
  TypingPredicate(Implementation(DataFields_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
