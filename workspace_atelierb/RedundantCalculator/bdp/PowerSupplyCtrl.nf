Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PowerSupplyCtrl))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PowerSupplyCtrl))==(Machine(PowerSupplyCtrl));
  Level(Machine(PowerSupplyCtrl))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PowerSupplyCtrl)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PowerSupplyCtrl))==(?);
  List_Includes(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PowerSupplyCtrl))==(?);
  Context_List_Variables(Machine(PowerSupplyCtrl))==(?);
  Abstract_List_Variables(Machine(PowerSupplyCtrl))==(?);
  Local_List_Variables(Machine(PowerSupplyCtrl))==(?);
  List_Variables(Machine(PowerSupplyCtrl))==(?);
  External_List_Variables(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PowerSupplyCtrl))==(?);
  Abstract_List_VisibleVariables(Machine(PowerSupplyCtrl))==(?);
  External_List_VisibleVariables(Machine(PowerSupplyCtrl))==(?);
  Expanded_List_VisibleVariables(Machine(PowerSupplyCtrl))==(?);
  List_VisibleVariables(Machine(PowerSupplyCtrl))==(?);
  Internal_List_VisibleVariables(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PowerSupplyCtrl))==(btrue);
  Gluing_List_Invariant(Machine(PowerSupplyCtrl))==(btrue);
  Expanded_List_Invariant(Machine(PowerSupplyCtrl))==(btrue);
  Abstract_List_Invariant(Machine(PowerSupplyCtrl))==(btrue);
  Context_List_Invariant(Machine(PowerSupplyCtrl))==(btrue);
  List_Invariant(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PowerSupplyCtrl))==(btrue);
  Abstract_List_Assertions(Machine(PowerSupplyCtrl))==(btrue);
  Context_List_Assertions(Machine(PowerSupplyCtrl))==(btrue);
  List_Assertions(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PowerSupplyCtrl))==(skip);
  Context_List_Initialisation(Machine(PowerSupplyCtrl))==(skip);
  List_Initialisation(Machine(PowerSupplyCtrl))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PowerSupplyCtrl))==(btrue);
  List_Constraints(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PowerSupplyCtrl))==(is_powered,getU);
  List_Operations(Machine(PowerSupplyCtrl))==(is_powered,getU)
END
&
THEORY ListInputX IS
  List_Input(Machine(PowerSupplyCtrl),is_powered)==(?);
  List_Input(Machine(PowerSupplyCtrl),getU)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PowerSupplyCtrl),is_powered)==(isPowered);
  List_Output(Machine(PowerSupplyCtrl),getU)==(current_u)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PowerSupplyCtrl),is_powered)==(isPowered <-- is_powered);
  List_Header(Machine(PowerSupplyCtrl),getU)==(current_u <-- getU)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PowerSupplyCtrl),is_powered)==(btrue);
  List_Precondition(Machine(PowerSupplyCtrl),getU)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PowerSupplyCtrl),getU)==(btrue | @(current_u$0).(current_u$0: NAT ==> current_u:=current_u$0));
  Expanded_List_Substitution(Machine(PowerSupplyCtrl),is_powered)==(btrue | @(isPowered$0).(isPowered$0: BOOL ==> isPowered:=isPowered$0));
  List_Substitution(Machine(PowerSupplyCtrl),is_powered)==(isPowered:: BOOL);
  List_Substitution(Machine(PowerSupplyCtrl),getU)==(current_u:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PowerSupplyCtrl))==(?);
  Inherited_List_Constants(Machine(PowerSupplyCtrl))==(?);
  List_Constants(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(PowerSupplyCtrl))==(?);
  Context_List_Defered(Machine(PowerSupplyCtrl))==(?);
  Context_List_Sets(Machine(PowerSupplyCtrl))==(?);
  List_Valuable_Sets(Machine(PowerSupplyCtrl))==(?);
  Inherited_List_Enumerated(Machine(PowerSupplyCtrl))==(?);
  Inherited_List_Defered(Machine(PowerSupplyCtrl))==(?);
  Inherited_List_Sets(Machine(PowerSupplyCtrl))==(?);
  List_Enumerated(Machine(PowerSupplyCtrl))==(?);
  List_Defered(Machine(PowerSupplyCtrl))==(?);
  List_Sets(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PowerSupplyCtrl))==(?);
  Expanded_List_HiddenConstants(Machine(PowerSupplyCtrl))==(?);
  List_HiddenConstants(Machine(PowerSupplyCtrl))==(?);
  External_List_HiddenConstants(Machine(PowerSupplyCtrl))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PowerSupplyCtrl))==(btrue);
  Context_List_Properties(Machine(PowerSupplyCtrl))==(btrue);
  Inherited_List_Properties(Machine(PowerSupplyCtrl))==(btrue);
  List_Properties(Machine(PowerSupplyCtrl))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PowerSupplyCtrl),is_powered)==(?);
  List_ANY_Var(Machine(PowerSupplyCtrl),getU)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PowerSupplyCtrl)) == (? | ? | ? | ? | is_powered,getU | ? | ? | ? | PowerSupplyCtrl);
  List_Of_HiddenCst_Ids(Machine(PowerSupplyCtrl)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PowerSupplyCtrl)) == (?);
  List_Of_VisibleVar_Ids(Machine(PowerSupplyCtrl)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PowerSupplyCtrl)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PowerSupplyCtrl)) == (Type(getU) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(is_powered) == Cst(btype(BOOL,0,1),No_type));
  Observers(Machine(PowerSupplyCtrl)) == (Type(getU) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(is_powered) == Cst(btype(BOOL,0,1),No_type))
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
