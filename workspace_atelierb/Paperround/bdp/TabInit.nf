Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(TabInit))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(TabInit))==(Machine(TabInit));
  Level(Machine(TabInit))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(TabInit)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(TabInit))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(TabInit))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(TabInit))==(?);
  List_Includes(Machine(TabInit))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(TabInit))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(TabInit))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(TabInit))==(?);
  Context_List_Variables(Machine(TabInit))==(?);
  Abstract_List_Variables(Machine(TabInit))==(?);
  Local_List_Variables(Machine(TabInit))==(tab);
  List_Variables(Machine(TabInit))==(tab);
  External_List_Variables(Machine(TabInit))==(tab)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(TabInit))==(?);
  Abstract_List_VisibleVariables(Machine(TabInit))==(?);
  External_List_VisibleVariables(Machine(TabInit))==(?);
  Expanded_List_VisibleVariables(Machine(TabInit))==(?);
  List_VisibleVariables(Machine(TabInit))==(?);
  Internal_List_VisibleVariables(Machine(TabInit))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(TabInit))==(btrue);
  Gluing_List_Invariant(Machine(TabInit))==(btrue);
  Expanded_List_Invariant(Machine(TabInit))==(btrue);
  Abstract_List_Invariant(Machine(TabInit))==(btrue);
  Context_List_Invariant(Machine(TabInit))==(btrue);
  List_Invariant(Machine(TabInit))==(tab: 0..9 --> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(TabInit))==(btrue);
  Abstract_List_Assertions(Machine(TabInit))==(btrue);
  Context_List_Assertions(Machine(TabInit))==(btrue);
  List_Assertions(Machine(TabInit))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(TabInit))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(TabInit))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(TabInit))==(tab:=(0..9)*{0});
  Context_List_Initialisation(Machine(TabInit))==(skip);
  List_Initialisation(Machine(TabInit))==(tab:=(0..9)*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(TabInit))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(TabInit))==(btrue);
  List_Constraints(Machine(TabInit))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(TabInit))==(op);
  List_Operations(Machine(TabInit))==(op)
END
&
THEORY ListInputX IS
  List_Input(Machine(TabInit),op)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(TabInit),op)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(TabInit),op)==(op)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(TabInit),op)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(TabInit),op)==(btrue | @(tab$0).(tab$0: 0..9 --> NAT ==> tab:=tab$0));
  List_Substitution(Machine(TabInit),op)==(tab:: 0..9 --> NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(TabInit))==(?);
  Inherited_List_Constants(Machine(TabInit))==(?);
  List_Constants(Machine(TabInit))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(TabInit))==(?);
  Context_List_Defered(Machine(TabInit))==(?);
  Context_List_Sets(Machine(TabInit))==(?);
  List_Valuable_Sets(Machine(TabInit))==(?);
  Inherited_List_Enumerated(Machine(TabInit))==(?);
  Inherited_List_Defered(Machine(TabInit))==(?);
  Inherited_List_Sets(Machine(TabInit))==(?);
  List_Enumerated(Machine(TabInit))==(?);
  List_Defered(Machine(TabInit))==(?);
  List_Sets(Machine(TabInit))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(TabInit))==(?);
  Expanded_List_HiddenConstants(Machine(TabInit))==(?);
  List_HiddenConstants(Machine(TabInit))==(?);
  External_List_HiddenConstants(Machine(TabInit))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(TabInit))==(btrue);
  Context_List_Properties(Machine(TabInit))==(btrue);
  Inherited_List_Properties(Machine(TabInit))==(btrue);
  List_Properties(Machine(TabInit))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(TabInit),op)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(TabInit)) == (? | ? | tab | ? | op | ? | ? | ? | TabInit);
  List_Of_HiddenCst_Ids(Machine(TabInit)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(TabInit)) == (?);
  List_Of_VisibleVar_Ids(Machine(TabInit)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(TabInit)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(TabInit)) == (Type(tab) == Mvl(SetOf(btype(INTEGER,0,9)*btype(INTEGER,0,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(TabInit)) == (Type(op) == Cst(No_type,No_type))
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
