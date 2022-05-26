Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Iron1R))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Iron1R))==(Machine(Iron1));
  Level(Refinement(Iron1R))==(1);
  Upper_Level(Refinement(Iron1R))==(Machine(Iron1))
END
&
THEORY LoadedStructureX IS
  Refinement(Iron1R)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Iron1R))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Iron1R))==(?);
  List_Includes(Refinement(Iron1R))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Iron1R))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Iron1R))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Iron1R))==(?);
  Context_List_Variables(Refinement(Iron1R))==(?);
  Abstract_List_Variables(Refinement(Iron1R))==(pile);
  Local_List_Variables(Refinement(Iron1R))==(counter,pilearray);
  List_Variables(Refinement(Iron1R))==(counter,pilearray);
  External_List_Variables(Refinement(Iron1R))==(counter,pilearray)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Iron1R))==(?);
  Abstract_List_VisibleVariables(Refinement(Iron1R))==(?);
  External_List_VisibleVariables(Refinement(Iron1R))==(?);
  Expanded_List_VisibleVariables(Refinement(Iron1R))==(?);
  List_VisibleVariables(Refinement(Iron1R))==(?);
  Internal_List_VisibleVariables(Refinement(Iron1R))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Iron1R))==(counter,pilearray)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Iron1R))==(btrue);
  Expanded_List_Invariant(Refinement(Iron1R))==(btrue);
  Abstract_List_Invariant(Refinement(Iron1R))==(pile: seq(ITEM) & size(pile)<=limit);
  Context_List_Invariant(Refinement(Iron1R))==(btrue);
  List_Invariant(Refinement(Iron1R))==(pilearray: 0..limit-1 --> ITEM & counter: 0..limit & counter = size(pile) & pile = %ii.(ii: 1..counter | pilearray(ii-1)))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Iron1R))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Iron1R))==(btrue);
  Abstract_List_Assertions(Refinement(Iron1R))==(btrue);
  Context_List_Assertions(Refinement(Iron1R))==(btrue);
  List_Assertions(Refinement(Iron1R))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Iron1R))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Iron1R))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Iron1R))==(pilearray,counter:=(0..limit-1)*{ee},0);
  Context_List_Initialisation(Refinement(Iron1R))==(skip);
  List_Initialisation(Refinement(Iron1R))==(pilearray:=(0..limit-1)*{ee} || counter:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Iron1R))==(put,take,query);
  List_Operations(Refinement(Iron1R))==(put,take,query)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Iron1R),put)==(ii);
  List_Input(Refinement(Iron1R),take)==(?);
  List_Input(Refinement(Iron1R),query)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Iron1R),put)==(?);
  List_Output(Refinement(Iron1R),take)==(ii);
  List_Output(Refinement(Iron1R),query)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Iron1R),put)==(put(ii));
  List_Header(Refinement(Iron1R),take)==(ii <-- take);
  List_Header(Refinement(Iron1R),query)==(bb <-- query(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Iron1R),put)==(btrue);
  List_Precondition(Refinement(Iron1R),put)==(ii: ITEM & size(pile)<limit);
  Own_Precondition(Refinement(Iron1R),take)==(btrue);
  List_Precondition(Refinement(Iron1R),take)==(pile/=<>);
  Own_Precondition(Refinement(Iron1R),query)==(btrue);
  List_Precondition(Refinement(Iron1R),query)==(ii: ITEM)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Iron1R),query)==(ii: ITEM | ii: pilearray[0..counter-1] ==> bb:=TRUE [] not(ii: pilearray[0..counter-1]) ==> bb:=FALSE);
  Expanded_List_Substitution(Refinement(Iron1R),take)==(pile/=<> | counter:=counter-1;ii:=pilearray(counter));
  Expanded_List_Substitution(Refinement(Iron1R),put)==(ii: ITEM & size(pile)<limit | pilearray:=pilearray<+{counter|->ii};counter:=counter+1);
  List_Substitution(Refinement(Iron1R),put)==(pilearray(counter):=ii;counter:=counter+1);
  List_Substitution(Refinement(Iron1R),take)==(counter:=counter-1;ii:=pilearray(counter));
  List_Substitution(Refinement(Iron1R),query)==(IF ii: pilearray[0..counter-1] THEN bb:=TRUE ELSE bb:=FALSE END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Iron1R))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Iron1R))==(btrue);
  List_Context_Constraints(Refinement(Iron1R))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Iron1R))==(limit,ee);
  Inherited_List_Constants(Refinement(Iron1R))==(limit);
  List_Constants(Refinement(Iron1R))==(ee)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Iron1R),ITEM)==(?);
  Context_List_Enumerated(Refinement(Iron1R))==(?);
  Context_List_Defered(Refinement(Iron1R))==(?);
  Context_List_Sets(Refinement(Iron1R))==(?);
  List_Valuable_Sets(Refinement(Iron1R))==(ITEM);
  Inherited_List_Enumerated(Refinement(Iron1R))==(?);
  Inherited_List_Defered(Refinement(Iron1R))==(ITEM);
  Inherited_List_Sets(Refinement(Iron1R))==(ITEM);
  List_Enumerated(Refinement(Iron1R))==(?);
  List_Defered(Refinement(Iron1R))==(?);
  List_Sets(Refinement(Iron1R))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Iron1R))==(?);
  Expanded_List_HiddenConstants(Refinement(Iron1R))==(?);
  List_HiddenConstants(Refinement(Iron1R))==(?);
  External_List_HiddenConstants(Refinement(Iron1R))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Iron1R))==(limit: NAT1 & ITEM: FIN(INTEGER) & not(ITEM = {}));
  Context_List_Properties(Refinement(Iron1R))==(btrue);
  Inherited_List_Properties(Refinement(Iron1R))==(btrue);
  List_Properties(Refinement(Iron1R))==(ee: ITEM)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Iron1R),put)==(?);
  List_ANY_Var(Refinement(Iron1R),take)==(?);
  List_ANY_Var(Refinement(Iron1R),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Iron1R)) == (ee | ? | counter,pilearray | ? | put,take,query | ? | ? | ? | Iron1R);
  List_Of_HiddenCst_Ids(Refinement(Iron1R)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Iron1R)) == (ee);
  List_Of_VisibleVar_Ids(Refinement(Iron1R)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Iron1R)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Iron1R)) == (Type(ITEM) == Cst(SetOf(atype(ITEM,"[ITEM","]ITEM"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Iron1R)) == (Type(ee) == Cst(atype(ITEM,?,?));Type(limit) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Iron1R)) == (Type(counter) == Mvl(btype(INTEGER,?,?));Type(pilearray) == Mvl(SetOf(btype(INTEGER,0,limit-1)*atype(ITEM,"[ITEM","]ITEM"))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Iron1R)) == (Type(query) == Cst(btype(BOOL,?,?),atype(ITEM,?,?));Type(take) == Cst(atype(ITEM,?,?),No_type);Type(put) == Cst(No_type,atype(ITEM,?,?)))
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
