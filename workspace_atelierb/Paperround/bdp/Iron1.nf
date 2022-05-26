Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Iron1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Iron1))==(Machine(Iron1));
  Level(Machine(Iron1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Iron1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Iron1))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Iron1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Iron1))==(?);
  List_Includes(Machine(Iron1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Iron1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Iron1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Iron1))==(?);
  Context_List_Variables(Machine(Iron1))==(?);
  Abstract_List_Variables(Machine(Iron1))==(?);
  Local_List_Variables(Machine(Iron1))==(pile);
  List_Variables(Machine(Iron1))==(pile);
  External_List_Variables(Machine(Iron1))==(pile)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Iron1))==(?);
  Abstract_List_VisibleVariables(Machine(Iron1))==(?);
  External_List_VisibleVariables(Machine(Iron1))==(?);
  Expanded_List_VisibleVariables(Machine(Iron1))==(?);
  List_VisibleVariables(Machine(Iron1))==(?);
  Internal_List_VisibleVariables(Machine(Iron1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Iron1))==(btrue);
  Gluing_List_Invariant(Machine(Iron1))==(btrue);
  Expanded_List_Invariant(Machine(Iron1))==(btrue);
  Abstract_List_Invariant(Machine(Iron1))==(btrue);
  Context_List_Invariant(Machine(Iron1))==(btrue);
  List_Invariant(Machine(Iron1))==(pile: seq(ITEM) & size(pile)<=limit)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Iron1))==(btrue);
  Abstract_List_Assertions(Machine(Iron1))==(btrue);
  Context_List_Assertions(Machine(Iron1))==(btrue);
  List_Assertions(Machine(Iron1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Iron1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Iron1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Iron1))==(pile:=<>);
  Context_List_Initialisation(Machine(Iron1))==(skip);
  List_Initialisation(Machine(Iron1))==(pile:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Iron1))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Iron1))==(btrue);
  List_Constraints(Machine(Iron1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Iron1))==(put,take,query);
  List_Operations(Machine(Iron1))==(put,take,query)
END
&
THEORY ListInputX IS
  List_Input(Machine(Iron1),put)==(ii);
  List_Input(Machine(Iron1),take)==(?);
  List_Input(Machine(Iron1),query)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Iron1),put)==(?);
  List_Output(Machine(Iron1),take)==(ii);
  List_Output(Machine(Iron1),query)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Iron1),put)==(put(ii));
  List_Header(Machine(Iron1),take)==(ii <-- take);
  List_Header(Machine(Iron1),query)==(bb <-- query(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Iron1),put)==(ii: ITEM & size(pile)<limit);
  List_Precondition(Machine(Iron1),take)==(pile/=<>);
  List_Precondition(Machine(Iron1),query)==(ii: ITEM)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Iron1),query)==(ii: ITEM | bb:=bool(ii: ran(pile)));
  Expanded_List_Substitution(Machine(Iron1),take)==(pile/=<> | pile,ii:=front(pile),last(pile));
  Expanded_List_Substitution(Machine(Iron1),put)==(ii: ITEM & size(pile)<limit | pile:=pile<-ii);
  List_Substitution(Machine(Iron1),put)==(pile:=pile<-ii);
  List_Substitution(Machine(Iron1),take)==(pile:=front(pile) || ii:=last(pile));
  List_Substitution(Machine(Iron1),query)==(bb:=bool(ii: ran(pile)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Iron1))==(limit);
  Inherited_List_Constants(Machine(Iron1))==(?);
  List_Constants(Machine(Iron1))==(limit)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Iron1),ITEM)==(?);
  Context_List_Enumerated(Machine(Iron1))==(?);
  Context_List_Defered(Machine(Iron1))==(?);
  Context_List_Sets(Machine(Iron1))==(?);
  List_Valuable_Sets(Machine(Iron1))==(ITEM);
  Inherited_List_Enumerated(Machine(Iron1))==(?);
  Inherited_List_Defered(Machine(Iron1))==(?);
  Inherited_List_Sets(Machine(Iron1))==(?);
  List_Enumerated(Machine(Iron1))==(?);
  List_Defered(Machine(Iron1))==(ITEM);
  List_Sets(Machine(Iron1))==(ITEM)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Iron1))==(?);
  Expanded_List_HiddenConstants(Machine(Iron1))==(?);
  List_HiddenConstants(Machine(Iron1))==(?);
  External_List_HiddenConstants(Machine(Iron1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Iron1))==(btrue);
  Context_List_Properties(Machine(Iron1))==(btrue);
  Inherited_List_Properties(Machine(Iron1))==(btrue);
  List_Properties(Machine(Iron1))==(limit: NAT1 & ITEM: FIN(INTEGER) & not(ITEM = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Iron1),put)==(?);
  List_ANY_Var(Machine(Iron1),take)==(?);
  List_ANY_Var(Machine(Iron1),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Iron1)) == (limit,ITEM | ? | pile | ? | put,take,query | ? | ? | ? | Iron1);
  List_Of_HiddenCst_Ids(Machine(Iron1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Iron1)) == (limit);
  List_Of_VisibleVar_Ids(Machine(Iron1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Iron1)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Iron1)) == (Type(ITEM) == Cst(SetOf(atype(ITEM,"[ITEM","]ITEM"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Iron1)) == (Type(limit) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Iron1)) == (Type(pile) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ITEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Iron1)) == (Type(query) == Cst(btype(BOOL,?,?),atype(ITEM,?,?));Type(take) == Cst(atype(ITEM,?,?),No_type);Type(put) == Cst(No_type,atype(ITEM,?,?)));
  Observers(Machine(Iron1)) == (Type(query) == Cst(btype(BOOL,?,?),atype(ITEM,?,?)))
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
