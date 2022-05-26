Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Iron2R))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Iron2R))==(Machine(Iron2));
  Level(Refinement(Iron2R))==(1);
  Upper_Level(Refinement(Iron2R))==(Machine(Iron2))
END
&
THEORY LoadedStructureX IS
  Refinement(Iron2R)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Iron2R))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Iron2R))==(?);
  List_Includes(Refinement(Iron2R))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Iron2R))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Iron2R))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Iron2R))==(?);
  Context_List_Variables(Refinement(Iron2R))==(?);
  Abstract_List_Variables(Refinement(Iron2R))==(pile);
  Local_List_Variables(Refinement(Iron2R))==(counter,pilearr);
  List_Variables(Refinement(Iron2R))==(counter,pilearr);
  External_List_Variables(Refinement(Iron2R))==(counter,pilearr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Iron2R))==(?);
  Abstract_List_VisibleVariables(Refinement(Iron2R))==(?);
  External_List_VisibleVariables(Refinement(Iron2R))==(?);
  Expanded_List_VisibleVariables(Refinement(Iron2R))==(?);
  List_VisibleVariables(Refinement(Iron2R))==(?);
  Internal_List_VisibleVariables(Refinement(Iron2R))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Iron2R))==(counter,pilearr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Iron2R))==(btrue);
  Expanded_List_Invariant(Refinement(Iron2R))==(btrue);
  Abstract_List_Invariant(Refinement(Iron2R))==(pile: seq(ITEM) & size(pile)<=limit);
  Context_List_Invariant(Refinement(Iron2R))==(btrue);
  List_Invariant(Refinement(Iron2R))==(pilearr: 0..limit --> ITEM & counter: 0..limit & counter = size(pile) & pile = 1..counter<|pilearr)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Iron2R))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Iron2R))==(btrue);
  Abstract_List_Assertions(Refinement(Iron2R))==(btrue);
  Context_List_Assertions(Refinement(Iron2R))==(btrue);
  List_Assertions(Refinement(Iron2R))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Iron2R))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Iron2R))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Iron2R))==(pilearr,counter:=(0..limit)*{ee},0);
  Context_List_Initialisation(Refinement(Iron2R))==(skip);
  List_Initialisation(Refinement(Iron2R))==(pilearr:=(0..limit)*{ee} || counter:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Iron2R))==(put,take,query);
  List_Operations(Refinement(Iron2R))==(put,take,query)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Iron2R),put)==(ii);
  List_Input(Refinement(Iron2R),take)==(?);
  List_Input(Refinement(Iron2R),query)==(ii)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Iron2R),put)==(?);
  List_Output(Refinement(Iron2R),take)==(ii);
  List_Output(Refinement(Iron2R),query)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Iron2R),put)==(put(ii));
  List_Header(Refinement(Iron2R),take)==(ii <-- take);
  List_Header(Refinement(Iron2R),query)==(bb <-- query(ii))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Iron2R),put)==(btrue);
  List_Precondition(Refinement(Iron2R),put)==(ii: ITEM & size(pile)<limit);
  Own_Precondition(Refinement(Iron2R),take)==(btrue);
  List_Precondition(Refinement(Iron2R),take)==(pile/=<>);
  Own_Precondition(Refinement(Iron2R),query)==(btrue);
  List_Precondition(Refinement(Iron2R),query)==(ii: ITEM)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Iron2R),query)==(ii: ITEM | ii: pilearr[1..counter] ==> bb:=TRUE [] not(ii: pilearr[1..counter]) ==> bb:=FALSE);
  Expanded_List_Substitution(Refinement(Iron2R),take)==(pile/=<> | ii:=pilearr(counter);counter:=counter-1);
  Expanded_List_Substitution(Refinement(Iron2R),put)==(ii: ITEM & size(pile)<limit | counter:=counter+1;pilearr:=pilearr<+{counter|->ii});
  List_Substitution(Refinement(Iron2R),put)==(counter:=counter+1;pilearr(counter):=ii);
  List_Substitution(Refinement(Iron2R),take)==(ii:=pilearr(counter);counter:=counter-1);
  List_Substitution(Refinement(Iron2R),query)==(IF ii: pilearr[1..counter] THEN bb:=TRUE ELSE bb:=FALSE END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Iron2R))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Iron2R))==(btrue);
  List_Context_Constraints(Refinement(Iron2R))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Iron2R))==(limit,ee);
  Inherited_List_Constants(Refinement(Iron2R))==(limit);
  List_Constants(Refinement(Iron2R))==(ee)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Iron2R),ITEM)==(?);
  Context_List_Enumerated(Refinement(Iron2R))==(?);
  Context_List_Defered(Refinement(Iron2R))==(?);
  Context_List_Sets(Refinement(Iron2R))==(?);
  List_Valuable_Sets(Refinement(Iron2R))==(ITEM);
  Inherited_List_Enumerated(Refinement(Iron2R))==(?);
  Inherited_List_Defered(Refinement(Iron2R))==(ITEM);
  Inherited_List_Sets(Refinement(Iron2R))==(ITEM);
  List_Enumerated(Refinement(Iron2R))==(?);
  List_Defered(Refinement(Iron2R))==(?);
  List_Sets(Refinement(Iron2R))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Iron2R))==(?);
  Expanded_List_HiddenConstants(Refinement(Iron2R))==(?);
  List_HiddenConstants(Refinement(Iron2R))==(?);
  External_List_HiddenConstants(Refinement(Iron2R))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Iron2R))==(limit: NAT1 & ITEM: FIN(INTEGER) & not(ITEM = {}));
  Context_List_Properties(Refinement(Iron2R))==(btrue);
  Inherited_List_Properties(Refinement(Iron2R))==(btrue);
  List_Properties(Refinement(Iron2R))==(ee: ITEM)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Iron2R),put)==(?);
  List_ANY_Var(Refinement(Iron2R),take)==(?);
  List_ANY_Var(Refinement(Iron2R),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Iron2R)) == (ee | ? | counter,pilearr | ? | put,take,query | ? | ? | ? | Iron2R);
  List_Of_HiddenCst_Ids(Refinement(Iron2R)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Iron2R)) == (ee);
  List_Of_VisibleVar_Ids(Refinement(Iron2R)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Iron2R)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Iron2R)) == (Type(ITEM) == Cst(SetOf(atype(ITEM,"[ITEM","]ITEM"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Iron2R)) == (Type(ee) == Cst(atype(ITEM,?,?));Type(limit) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Iron2R)) == (Type(counter) == Mvl(btype(INTEGER,?,?));Type(pilearr) == Mvl(SetOf(btype(INTEGER,0,limit)*atype(ITEM,"[ITEM","]ITEM"))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Iron2R)) == (Type(query) == Cst(btype(BOOL,?,?),atype(ITEM,?,?));Type(take) == Cst(atype(ITEM,?,?),No_type);Type(put) == Cst(No_type,atype(ITEM,?,?)))
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
