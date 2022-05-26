Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(temperature))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(temperature))==(Machine(temperature));
  Level(Machine(temperature))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(temperature)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(temperature))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(temperature))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(temperature))==(?);
  List_Includes(Machine(temperature))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(temperature))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(temperature))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(temperature))==(?);
  Context_List_Variables(Machine(temperature))==(?);
  Abstract_List_Variables(Machine(temperature))==(?);
  Local_List_Variables(Machine(temperature))==(?);
  List_Variables(Machine(temperature))==(?);
  External_List_Variables(Machine(temperature))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(temperature))==(?);
  Abstract_List_VisibleVariables(Machine(temperature))==(?);
  External_List_VisibleVariables(Machine(temperature))==(?);
  Expanded_List_VisibleVariables(Machine(temperature))==(?);
  List_VisibleVariables(Machine(temperature))==(?);
  Internal_List_VisibleVariables(Machine(temperature))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(temperature))==(btrue);
  Gluing_List_Invariant(Machine(temperature))==(btrue);
  Expanded_List_Invariant(Machine(temperature))==(btrue);
  Abstract_List_Invariant(Machine(temperature))==(btrue);
  Context_List_Invariant(Machine(temperature))==(btrue);
  List_Invariant(Machine(temperature))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(temperature))==(btrue);
  Abstract_List_Assertions(Machine(temperature))==(btrue);
  Context_List_Assertions(Machine(temperature))==(btrue);
  List_Assertions(Machine(temperature))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(temperature))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(temperature))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(temperature))==(skip);
  Context_List_Initialisation(Machine(temperature))==(skip);
  List_Initialisation(Machine(temperature))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(temperature))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(temperature))==(btrue);
  List_Constraints(Machine(temperature))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(temperature))==(temperature_get_temperature);
  List_Operations(Machine(temperature))==(temperature_get_temperature)
END
&
THEORY ListInputX IS
  List_Input(Machine(temperature),temperature_get_temperature)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(temperature),temperature_get_temperature)==(new_temperature)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(temperature),temperature_get_temperature)==(new_temperature <-- temperature_get_temperature)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(temperature),temperature_get_temperature)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(temperature),temperature_get_temperature)==(btrue | @(new_temperature$0).(new_temperature$0: NAT ==> new_temperature:=new_temperature$0));
  List_Substitution(Machine(temperature),temperature_get_temperature)==(new_temperature:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(temperature))==(?);
  Inherited_List_Constants(Machine(temperature))==(?);
  List_Constants(Machine(temperature))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(temperature))==(?);
  Context_List_Defered(Machine(temperature))==(?);
  Context_List_Sets(Machine(temperature))==(?);
  List_Valuable_Sets(Machine(temperature))==(?);
  Inherited_List_Enumerated(Machine(temperature))==(?);
  Inherited_List_Defered(Machine(temperature))==(?);
  Inherited_List_Sets(Machine(temperature))==(?);
  List_Enumerated(Machine(temperature))==(?);
  List_Defered(Machine(temperature))==(?);
  List_Sets(Machine(temperature))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(temperature))==(?);
  Expanded_List_HiddenConstants(Machine(temperature))==(?);
  List_HiddenConstants(Machine(temperature))==(?);
  External_List_HiddenConstants(Machine(temperature))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(temperature))==(btrue);
  Context_List_Properties(Machine(temperature))==(btrue);
  Inherited_List_Properties(Machine(temperature))==(btrue);
  List_Properties(Machine(temperature))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(temperature),temperature_get_temperature)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(temperature)) == (? | ? | ? | ? | temperature_get_temperature | ? | ? | ? | temperature);
  List_Of_HiddenCst_Ids(Machine(temperature)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(temperature)) == (?);
  List_Of_VisibleVar_Ids(Machine(temperature)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(temperature)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(temperature)) == (Type(temperature_get_temperature) == Cst(btype(INTEGER,0,MAXINT),No_type));
  Observers(Machine(temperature)) == (Type(temperature_get_temperature) == Cst(btype(INTEGER,0,MAXINT),No_type))
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
