Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Customer_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Customer_i))==(Machine(Customer));
  Level(Implementation(Customer_i))==(1);
  Upper_Level(Implementation(Customer_i))==(Machine(Customer))
END
&
THEORY LoadedStructureX IS
  Implementation(Customer_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Customer_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Customer_i))==(?);
  Inherited_List_Includes(Implementation(Customer_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Customer_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Customer_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Customer_i))==(?);
  Context_List_Variables(Implementation(Customer_i))==(?);
  Abstract_List_Variables(Implementation(Customer_i))==(price,limit,purchases);
  Local_List_Variables(Implementation(Customer_i))==(?);
  List_Variables(Implementation(Customer_i))==(?);
  External_List_Variables(Implementation(Customer_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Customer_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Customer_i))==(?);
  External_List_VisibleVariables(Implementation(Customer_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Customer_i))==(?);
  List_VisibleVariables(Implementation(Customer_i))==(purchases_i,price_i,limit);
  Internal_List_VisibleVariables(Implementation(Customer_i))==(purchases_i,price_i,limit)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Customer_i))==(btrue);
  Expanded_List_Invariant(Implementation(Customer_i))==(btrue);
  Abstract_List_Invariant(Implementation(Customer_i))==(purchases <: GOODS & limit: GOODS --> NAT1 & price: GOODS --> NAT1);
  Context_List_Invariant(Implementation(Customer_i))==(btrue);
  List_Invariant(Implementation(Customer_i))==(limit: GOODS --> NAT1 & price_i: GOODS --> NAT1 & price_i = price & purchases_i: GOODS --> BOOL & dom(purchases_i|>{TRUE}) = purchases)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Customer_i))==(btrue);
  Abstract_List_Assertions(Implementation(Customer_i))==(btrue);
  Context_List_Assertions(Implementation(Customer_i))==(btrue);
  List_Assertions(Implementation(Customer_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Customer_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Customer_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Customer_i))==(limit:=GOODS*{10};price_i:=GOODS*{1};purchases_i:=GOODS*{FALSE});
  Context_List_Initialisation(Implementation(Customer_i))==(skip);
  List_Initialisation(Implementation(Customer_i))==(limit:=GOODS*{10};price_i:=GOODS*{1};purchases_i:=GOODS*{FALSE})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Customer_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Customer_i))==(btrue);
  List_Context_Constraints(Implementation(Customer_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Customer_i))==(buy,setprice,pricequery);
  List_Operations(Implementation(Customer_i))==(buy,setprice,pricequery)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Customer_i),buy)==(gg);
  List_Input(Implementation(Customer_i),setprice)==(gg,pp);
  List_Input(Implementation(Customer_i),pricequery)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Customer_i),buy)==(pp);
  List_Output(Implementation(Customer_i),setprice)==(?);
  List_Output(Implementation(Customer_i),pricequery)==(pp)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Customer_i),buy)==(pp <-- buy(gg));
  List_Header(Implementation(Customer_i),setprice)==(setprice(gg,pp));
  List_Header(Implementation(Customer_i),pricequery)==(pp <-- pricequery(gg))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Customer_i),buy)==(btrue);
  List_Precondition(Implementation(Customer_i),buy)==(gg: GOODS & price(gg)<=limit(gg));
  Own_Precondition(Implementation(Customer_i),setprice)==(btrue);
  List_Precondition(Implementation(Customer_i),setprice)==(gg: GOODS & pp: NAT1);
  Own_Precondition(Implementation(Customer_i),pricequery)==(btrue);
  List_Precondition(Implementation(Customer_i),pricequery)==(gg: GOODS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Customer_i),pricequery)==(gg: GOODS | pp:=price_i(gg));
  Expanded_List_Substitution(Implementation(Customer_i),setprice)==(gg: GOODS & pp: NAT1 | price_i:=price_i<+{gg|->pp});
  Expanded_List_Substitution(Implementation(Customer_i),buy)==(gg: GOODS & price(gg)<=limit(gg) | pp:=price_i(gg);@tmp.(tmp:=limit(gg);(pp<=tmp ==> purchases_i:=purchases_i<+{gg|->TRUE} [] not(pp<=tmp) ==> skip)));
  List_Substitution(Implementation(Customer_i),buy)==(pp:=price_i(gg);VAR tmp IN tmp:=limit(gg);IF pp<=tmp THEN purchases_i(gg):=TRUE END END);
  List_Substitution(Implementation(Customer_i),setprice)==(price_i(gg):=pp);
  List_Substitution(Implementation(Customer_i),pricequery)==(pp:=price_i(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Customer_i))==(?);
  Inherited_List_Constants(Implementation(Customer_i))==(?);
  List_Constants(Implementation(Customer_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Customer_i),GOODS)==(?);
  Context_List_Enumerated(Implementation(Customer_i))==(?);
  Context_List_Defered(Implementation(Customer_i))==(?);
  Context_List_Sets(Implementation(Customer_i))==(?);
  List_Own_Enumerated(Implementation(Customer_i))==(?);
  List_Valuable_Sets(Implementation(Customer_i))==(GOODS);
  Inherited_List_Enumerated(Implementation(Customer_i))==(?);
  Inherited_List_Defered(Implementation(Customer_i))==(GOODS);
  Inherited_List_Sets(Implementation(Customer_i))==(GOODS);
  List_Enumerated(Implementation(Customer_i))==(?);
  List_Defered(Implementation(Customer_i))==(?);
  List_Sets(Implementation(Customer_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Customer_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Customer_i))==(?);
  List_HiddenConstants(Implementation(Customer_i))==(?);
  External_List_HiddenConstants(Implementation(Customer_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Customer_i))==(GOODS: FIN(INTEGER) & not(GOODS = {}));
  Context_List_Properties(Implementation(Customer_i))==(btrue);
  Inherited_List_Properties(Implementation(Customer_i))==(btrue);
  List_Properties(Implementation(Customer_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Customer_i))==(btrue);
  Values_Subs(Implementation(Customer_i))==(GOODS: 0..10);
  List_Values(Implementation(Customer_i))==(GOODS = 0..10)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Customer_i))==(Type(limit) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT)));Type(price_i) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT)));Type(purchases_i) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(BOOL,0,1))));
  Operations(Implementation(Customer_i))==(Type(pricequery) == Cst(btype(INTEGER,?,?),atype(GOODS,?,?));Type(setprice) == Cst(No_type,atype(GOODS,?,?)*btype(INTEGER,?,?));Type(buy) == Cst(btype(INTEGER,?,?),atype(GOODS,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Customer_i)) == (? | ? | ? | ? | buy,setprice,pricequery | ? | ? | ? | Customer_i);
  List_Of_HiddenCst_Ids(Implementation(Customer_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Customer_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Customer_i)) == (purchases_i,price_i,limit | ?);
  List_Of_Ids_SeenBNU(Implementation(Customer_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Customer_i)) == (Type(GOODS) == Cst(SetOf(btype(INTEGER,"[GOODS","]GOODS"))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Customer_i)) == (Type(purchases_i) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(BOOL,0,1)));Type(price_i) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT)));Type(limit) == Mvv(SetOf(btype(INTEGER,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Customer_i),buy, 1) == (Type(tmp) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Customer_i))==(?)
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
  TypingPredicate(Implementation(Customer_i))==(limit: POW(INTEGER*INTEGER) & price_i: POW(INTEGER*INTEGER) & purchases_i: POW(INTEGER*BOOL))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
