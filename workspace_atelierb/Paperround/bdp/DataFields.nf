Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(DataFields))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(DataFields))==(Machine(DataFields));
  Level(Machine(DataFields))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(DataFields)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(DataFields))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(DataFields))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(DataFields))==(?);
  List_Includes(Machine(DataFields))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(DataFields))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(DataFields))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(DataFields))==(?);
  Context_List_Variables(Machine(DataFields))==(?);
  Abstract_List_Variables(Machine(DataFields))==(?);
  Local_List_Variables(Machine(DataFields))==(?);
  List_Variables(Machine(DataFields))==(?);
  External_List_Variables(Machine(DataFields))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(DataFields))==(?);
  Abstract_List_VisibleVariables(Machine(DataFields))==(?);
  External_List_VisibleVariables(Machine(DataFields))==(?);
  Expanded_List_VisibleVariables(Machine(DataFields))==(?);
  List_VisibleVariables(Machine(DataFields))==(?);
  Internal_List_VisibleVariables(Machine(DataFields))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(DataFields))==(btrue);
  Gluing_List_Invariant(Machine(DataFields))==(btrue);
  Expanded_List_Invariant(Machine(DataFields))==(btrue);
  Abstract_List_Invariant(Machine(DataFields))==(btrue);
  Context_List_Invariant(Machine(DataFields))==(btrue);
  List_Invariant(Machine(DataFields))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(DataFields))==(btrue);
  Abstract_List_Assertions(Machine(DataFields))==(btrue);
  Context_List_Assertions(Machine(DataFields))==(btrue);
  List_Assertions(Machine(DataFields))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(DataFields))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(DataFields))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(DataFields))==(skip);
  Context_List_Initialisation(Machine(DataFields))==(skip);
  List_Initialisation(Machine(DataFields))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(DataFields))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(DataFields))==(btrue);
  List_Constraints(Machine(DataFields))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(DataFields))==(?);
  List_Operations(Machine(DataFields))==(?)
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
  List_Valuable_Constants(Machine(DataFields))==(?);
  Inherited_List_Constants(Machine(DataFields))==(?);
  List_Constants(Machine(DataFields))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(DataFields),HOUR)==(?);
  Context_List_Enumerated(Machine(DataFields))==(?);
  Context_List_Defered(Machine(DataFields))==(?);
  Context_List_Sets(Machine(DataFields))==(?);
  List_Valuable_Sets(Machine(DataFields))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR);
  Inherited_List_Enumerated(Machine(DataFields))==(?);
  Inherited_List_Defered(Machine(DataFields))==(?);
  Inherited_List_Sets(Machine(DataFields))==(?);
  List_Enumerated(Machine(DataFields))==(MM);
  List_Defered(Machine(DataFields))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR);
  List_Sets(Machine(DataFields))==(HOUR,MINUTE,SECOND,DAY,MONTH,YEAR,MM);
  Set_Definition(Machine(DataFields),MINUTE)==(?);
  Set_Definition(Machine(DataFields),SECOND)==(?);
  Set_Definition(Machine(DataFields),DAY)==(?);
  Set_Definition(Machine(DataFields),MONTH)==(?);
  Set_Definition(Machine(DataFields),YEAR)==(?);
  Set_Definition(Machine(DataFields),MM)==({am,pm})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(DataFields))==(?);
  Expanded_List_HiddenConstants(Machine(DataFields))==(?);
  List_HiddenConstants(Machine(DataFields))==(?);
  External_List_HiddenConstants(Machine(DataFields))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(DataFields))==(btrue);
  Context_List_Properties(Machine(DataFields))==(btrue);
  Inherited_List_Properties(Machine(DataFields))==(btrue);
  List_Properties(Machine(DataFields))==(HOUR: FIN(INTEGER) & not(HOUR = {}) & MINUTE: FIN(INTEGER) & not(MINUTE = {}) & SECOND: FIN(INTEGER) & not(SECOND = {}) & DAY: FIN(INTEGER) & not(DAY = {}) & MONTH: FIN(INTEGER) & not(MONTH = {}) & YEAR: FIN(INTEGER) & not(YEAR = {}) & MM: FIN(INTEGER) & not(MM = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(DataFields)) == (HOUR,MINUTE,SECOND,DAY,MONTH,YEAR,MM,am,pm | ? | ? | ? | ? | ? | ? | ? | DataFields);
  List_Of_HiddenCst_Ids(Machine(DataFields)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DataFields)) == (?);
  List_Of_VisibleVar_Ids(Machine(DataFields)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DataFields)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(DataFields)) == (Type(HOUR) == Cst(SetOf(atype(HOUR,"[HOUR","]HOUR")));Type(MINUTE) == Cst(SetOf(atype(MINUTE,"[MINUTE","]MINUTE")));Type(SECOND) == Cst(SetOf(atype(SECOND,"[SECOND","]SECOND")));Type(DAY) == Cst(SetOf(atype(DAY,"[DAY","]DAY")));Type(MONTH) == Cst(SetOf(atype(MONTH,"[MONTH","]MONTH")));Type(YEAR) == Cst(SetOf(atype(YEAR,"[YEAR","]YEAR")));Type(MM) == Cst(SetOf(etype(MM,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(DataFields)) == (Type(am) == Cst(etype(MM,0,1));Type(pm) == Cst(etype(MM,0,1)))
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
