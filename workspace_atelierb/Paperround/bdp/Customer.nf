Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Customer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Customer))==(Machine(Customer));
  Level(Machine(Customer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Customer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Customer))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Customer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Customer))==(?);
  List_Includes(Machine(Customer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Customer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Customer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Customer))==(?);
  Context_List_Variables(Machine(Customer))==(?);
  Abstract_List_Variables(Machine(Customer))==(?);
  Local_List_Variables(Machine(Customer))==(price,limit,purchases);
  List_Variables(Machine(Customer))==(price,limit,purchases);
  External_List_Variables(Machine(Customer))==(price,limit,purchases)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Customer))==(?);
  Abstract_List_VisibleVariables(Machine(Customer))==(?);
  External_List_VisibleVariables(Machine(Customer))==(?);
  Expanded_List_VisibleVariables(Machine(Customer))==(?);
  List_VisibleVariables(Machine(Customer))==(?);
  Internal_List_VisibleVariables(Machine(Customer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Customer))==(btrue);
  Gluing_List_Invariant(Machine(Customer))==(btrue);
  Expanded_List_Invariant(Machine(Customer))==(btrue);
  Abstract_List_Invariant(Machine(Customer))==(btrue);
  Context_List_Invariant(Machine(Customer))==(btrue);
  List_Invariant(Machine(Customer))==(purchases <: GOODS & limit: GOODS --> NAT1 & price: GOODS --> NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Customer))==(btrue);
  Abstract_List_Assertions(Machine(Customer))==(btrue);
  Context_List_Assertions(Machine(Customer))==(btrue);
  List_Assertions(Machine(Customer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Customer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Customer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Customer))==(purchases:={} || @(limit$0).(limit$0: GOODS --> NAT1 ==> limit:=limit$0) || @(price$0).(price$0: GOODS --> NAT1 ==> price:=price$0));
  Context_List_Initialisation(Machine(Customer))==(skip);
  List_Initialisation(Machine(Customer))==(purchases:={} || limit:: GOODS --> NAT1 || price:: GOODS --> NAT1)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Customer))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Customer))==(btrue);
  List_Constraints(Machine(Customer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Customer))==(buy,setprice,pricequery);
  List_Operations(Machine(Customer))==(buy,setprice,pricequery)
END
&
THEORY ListInputX IS
  List_Input(Machine(Customer),buy)==(gg);
  List_Input(Machine(Customer),setprice)==(gg,pp);
  List_Input(Machine(Customer),pricequery)==(gg)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Customer),buy)==(pp);
  List_Output(Machine(Customer),setprice)==(?);
  List_Output(Machine(Customer),pricequery)==(pp)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Customer),buy)==(pp <-- buy(gg));
  List_Header(Machine(Customer),setprice)==(setprice(gg,pp));
  List_Header(Machine(Customer),pricequery)==(pp <-- pricequery(gg))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Customer),buy)==(gg: GOODS & price(gg)<=limit(gg));
  List_Precondition(Machine(Customer),setprice)==(gg: GOODS & pp: NAT1);
  List_Precondition(Machine(Customer),pricequery)==(gg: GOODS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Customer),pricequery)==(gg: GOODS | pp:=price(gg));
  Expanded_List_Substitution(Machine(Customer),setprice)==(gg: GOODS & pp: NAT1 | price:=price<+{gg|->pp});
  Expanded_List_Substitution(Machine(Customer),buy)==(gg: GOODS & price(gg)<=limit(gg) | purchases,pp:=purchases\/{gg},price(gg));
  List_Substitution(Machine(Customer),buy)==(purchases:=purchases\/{gg} || pp:=price(gg));
  List_Substitution(Machine(Customer),setprice)==(price(gg):=pp);
  List_Substitution(Machine(Customer),pricequery)==(pp:=price(gg))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Customer))==(?);
  Inherited_List_Constants(Machine(Customer))==(?);
  List_Constants(Machine(Customer))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Customer),GOODS)==(?);
  Context_List_Enumerated(Machine(Customer))==(?);
  Context_List_Defered(Machine(Customer))==(?);
  Context_List_Sets(Machine(Customer))==(?);
  List_Valuable_Sets(Machine(Customer))==(GOODS);
  Inherited_List_Enumerated(Machine(Customer))==(?);
  Inherited_List_Defered(Machine(Customer))==(?);
  Inherited_List_Sets(Machine(Customer))==(?);
  List_Enumerated(Machine(Customer))==(?);
  List_Defered(Machine(Customer))==(GOODS);
  List_Sets(Machine(Customer))==(GOODS)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Customer))==(?);
  Expanded_List_HiddenConstants(Machine(Customer))==(?);
  List_HiddenConstants(Machine(Customer))==(?);
  External_List_HiddenConstants(Machine(Customer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Customer))==(btrue);
  Context_List_Properties(Machine(Customer))==(btrue);
  Inherited_List_Properties(Machine(Customer))==(btrue);
  List_Properties(Machine(Customer))==(GOODS: FIN(INTEGER) & not(GOODS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Customer),buy)==(?);
  List_ANY_Var(Machine(Customer),setprice)==(?);
  List_ANY_Var(Machine(Customer),pricequery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Customer)) == (GOODS | ? | price,limit,purchases | ? | buy,setprice,pricequery | ? | ? | ? | Customer);
  List_Of_HiddenCst_Ids(Machine(Customer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Customer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Customer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Customer)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Customer)) == (Type(GOODS) == Cst(SetOf(atype(GOODS,"[GOODS","]GOODS"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Customer)) == (Type(price) == Mvl(SetOf(atype(GOODS,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT)));Type(limit) == Mvl(SetOf(atype(GOODS,"[GOODS","]GOODS")*btype(INTEGER,1,MAXINT)));Type(purchases) == Mvl(SetOf(atype(GOODS,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Customer)) == (Type(pricequery) == Cst(btype(INTEGER,?,?),atype(GOODS,?,?));Type(setprice) == Cst(No_type,atype(GOODS,?,?)*btype(INTEGER,?,?));Type(buy) == Cst(btype(INTEGER,?,?),atype(GOODS,?,?)));
  Observers(Machine(Customer)) == (Type(pricequery) == Cst(btype(INTEGER,?,?),atype(GOODS,?,?)))
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
