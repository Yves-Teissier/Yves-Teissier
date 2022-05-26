Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(digicode))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(digicode))==(Machine(digicode));
  Level(Machine(digicode))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(digicode)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(digicode))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(digicode))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(digicode))==(?);
  List_Includes(Machine(digicode))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(digicode))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(digicode))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(digicode))==(?);
  Context_List_Variables(Machine(digicode))==(?);
  Abstract_List_Variables(Machine(digicode))==(?);
  Local_List_Variables(Machine(digicode))==(?);
  List_Variables(Machine(digicode))==(?);
  External_List_Variables(Machine(digicode))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(digicode))==(?);
  Abstract_List_VisibleVariables(Machine(digicode))==(?);
  External_List_VisibleVariables(Machine(digicode))==(?);
  Expanded_List_VisibleVariables(Machine(digicode))==(?);
  List_VisibleVariables(Machine(digicode))==(?);
  Internal_List_VisibleVariables(Machine(digicode))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(digicode))==(btrue);
  Gluing_List_Invariant(Machine(digicode))==(btrue);
  Expanded_List_Invariant(Machine(digicode))==(btrue);
  Abstract_List_Invariant(Machine(digicode))==(btrue);
  Context_List_Invariant(Machine(digicode))==(btrue);
  List_Invariant(Machine(digicode))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(digicode))==(btrue);
  Abstract_List_Assertions(Machine(digicode))==(btrue);
  Context_List_Assertions(Machine(digicode))==(btrue);
  List_Assertions(Machine(digicode))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(digicode))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(digicode))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(digicode))==(skip);
  Context_List_Initialisation(Machine(digicode))==(skip);
  List_Initialisation(Machine(digicode))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(digicode))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(digicode))==(btrue);
  List_Constraints(Machine(digicode))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(digicode))==(digi_getResponse);
  List_Operations(Machine(digicode))==(digi_getResponse)
END
&
THEORY ListInputX IS
  List_Input(Machine(digicode),digi_getResponse)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(digicode),digi_getResponse)==(response)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(digicode),digi_getResponse)==(response <-- digi_getResponse)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(digicode),digi_getResponse)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(digicode),digi_getResponse)==(btrue | @(response$0).(response$0: NAT ==> response:=response$0));
  List_Substitution(Machine(digicode),digi_getResponse)==(response:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(digicode))==(?);
  Inherited_List_Constants(Machine(digicode))==(?);
  List_Constants(Machine(digicode))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(digicode))==(?);
  Context_List_Defered(Machine(digicode))==(?);
  Context_List_Sets(Machine(digicode))==(?);
  List_Valuable_Sets(Machine(digicode))==(?);
  Inherited_List_Enumerated(Machine(digicode))==(?);
  Inherited_List_Defered(Machine(digicode))==(?);
  Inherited_List_Sets(Machine(digicode))==(?);
  List_Enumerated(Machine(digicode))==(?);
  List_Defered(Machine(digicode))==(?);
  List_Sets(Machine(digicode))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(digicode))==(?);
  Expanded_List_HiddenConstants(Machine(digicode))==(?);
  List_HiddenConstants(Machine(digicode))==(?);
  External_List_HiddenConstants(Machine(digicode))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(digicode))==(btrue);
  Context_List_Properties(Machine(digicode))==(btrue);
  Inherited_List_Properties(Machine(digicode))==(btrue);
  List_Properties(Machine(digicode))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(digicode),digi_getResponse)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(digicode)) == (? | ? | ? | ? | digi_getResponse | ? | ? | ? | digicode);
  List_Of_HiddenCst_Ids(Machine(digicode)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(digicode)) == (?);
  List_Of_VisibleVar_Ids(Machine(digicode)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(digicode)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(digicode)) == (Type(digi_getResponse) == Cst(btype(INTEGER,0,MAXINT),No_type));
  Observers(Machine(digicode)) == (Type(digi_getResponse) == Cst(btype(INTEGER,0,MAXINT),No_type))
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
