Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(hotel))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(hotel))==(Machine(hotel));
  Level(Machine(hotel))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(hotel)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(hotel))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(hotel))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(hotel))==(?);
  List_Includes(Machine(hotel))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(hotel))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(hotel))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(hotel))==(?);
  Context_List_Variables(Machine(hotel))==(?);
  Abstract_List_Variables(Machine(hotel))==(?);
  Local_List_Variables(Machine(hotel))==(numbers);
  List_Variables(Machine(hotel))==(numbers);
  External_List_Variables(Machine(hotel))==(numbers)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(hotel))==(?);
  Abstract_List_VisibleVariables(Machine(hotel))==(?);
  External_List_VisibleVariables(Machine(hotel))==(?);
  Expanded_List_VisibleVariables(Machine(hotel))==(?);
  List_VisibleVariables(Machine(hotel))==(?);
  Internal_List_VisibleVariables(Machine(hotel))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(hotel))==(btrue);
  Gluing_List_Invariant(Machine(hotel))==(btrue);
  Expanded_List_Invariant(Machine(hotel))==(btrue);
  Abstract_List_Invariant(Machine(hotel))==(btrue);
  Context_List_Invariant(Machine(hotel))==(btrue);
  List_Invariant(Machine(hotel))==(numbers: ROOM --> 0..6 & numbers[small] <: 0..4)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(hotel))==(btrue);
  Abstract_List_Assertions(Machine(hotel))==(btrue);
  Context_List_Assertions(Machine(hotel))==(btrue);
  List_Assertions(Machine(hotel))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(hotel))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(hotel))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(hotel))==(numbers:=ROOM*{0});
  Context_List_Initialisation(Machine(hotel))==(skip);
  List_Initialisation(Machine(hotel))==(numbers:=ROOM*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(hotel))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(hotel))==(btrue);
  List_Constraints(Machine(hotel))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(hotel))==(checkin,checkout,roomquery,vacancies,totalguests,swap);
  List_Operations(Machine(hotel))==(checkin,checkout,roomquery,vacancies,totalguests,swap)
END
&
THEORY ListInputX IS
  List_Input(Machine(hotel),checkin)==(rr,nn);
  List_Input(Machine(hotel),checkout)==(rr);
  List_Input(Machine(hotel),roomquery)==(rr);
  List_Input(Machine(hotel),vacancies)==(?);
  List_Input(Machine(hotel),totalguests)==(?);
  List_Input(Machine(hotel),swap)==(rr,ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(hotel),checkin)==(?);
  List_Output(Machine(hotel),checkout)==(?);
  List_Output(Machine(hotel),roomquery)==(nn);
  List_Output(Machine(hotel),vacancies)==(nn);
  List_Output(Machine(hotel),totalguests)==(nn);
  List_Output(Machine(hotel),swap)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(hotel),checkin)==(checkin(rr,nn));
  List_Header(Machine(hotel),checkout)==(checkout(rr));
  List_Header(Machine(hotel),roomquery)==(nn <-- roomquery(rr));
  List_Header(Machine(hotel),vacancies)==(nn <-- vacancies);
  List_Header(Machine(hotel),totalguests)==(nn <-- totalguests);
  List_Header(Machine(hotel),swap)==(swap(rr,ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(hotel),checkin)==(rr: ROOM & nn: 1..6 & numbers(rr) = 0 & (rr: small => nn<=4));
  List_Precondition(Machine(hotel),checkout)==(rr: ROOM);
  List_Precondition(Machine(hotel),roomquery)==(rr: ROOM);
  List_Precondition(Machine(hotel),vacancies)==(btrue);
  List_Precondition(Machine(hotel),totalguests)==(btrue);
  List_Precondition(Machine(hotel),swap)==(rr: ROOM & ss: ROOM & rr: small <=> (ss: small))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(hotel),swap)==(rr: ROOM & ss: ROOM & rr: small <=> (ss: small) | numbers:=numbers<+{rr|->numbers(ss),ss|->numbers(rr)});
  Expanded_List_Substitution(Machine(hotel),totalguests)==(btrue | nn:=SIGMA(zz).(zz: ROOM | numbers(zz)));
  Expanded_List_Substitution(Machine(hotel),vacancies)==(btrue | nn:=card(numbers|>{0}));
  Expanded_List_Substitution(Machine(hotel),roomquery)==(rr: ROOM | nn:=numbers(rr));
  Expanded_List_Substitution(Machine(hotel),checkout)==(rr: ROOM | numbers:=numbers<+{rr|->0});
  Expanded_List_Substitution(Machine(hotel),checkin)==(rr: ROOM & nn: 1..6 & numbers(rr) = 0 & (rr: small => nn<=4) | numbers:=numbers<+{rr|->nn});
  List_Substitution(Machine(hotel),checkin)==(numbers(rr):=nn);
  List_Substitution(Machine(hotel),checkout)==(numbers(rr):=0);
  List_Substitution(Machine(hotel),roomquery)==(nn:=numbers(rr));
  List_Substitution(Machine(hotel),vacancies)==(nn:=card(numbers|>{0}));
  List_Substitution(Machine(hotel),totalguests)==(nn:=SIGMA(zz).(zz: ROOM | numbers(zz)));
  List_Substitution(Machine(hotel),swap)==(numbers:=numbers<+{rr|->numbers(ss),ss|->numbers(rr)})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(hotel))==(small,sze);
  Inherited_List_Constants(Machine(hotel))==(?);
  List_Constants(Machine(hotel))==(small,sze)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(hotel),ROOM)==(?);
  Context_List_Enumerated(Machine(hotel))==(?);
  Context_List_Defered(Machine(hotel))==(?);
  Context_List_Sets(Machine(hotel))==(?);
  List_Valuable_Sets(Machine(hotel))==(ROOM);
  Inherited_List_Enumerated(Machine(hotel))==(?);
  Inherited_List_Defered(Machine(hotel))==(?);
  Inherited_List_Sets(Machine(hotel))==(?);
  List_Enumerated(Machine(hotel))==(?);
  List_Defered(Machine(hotel))==(ROOM);
  List_Sets(Machine(hotel))==(ROOM)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(hotel))==(?);
  Expanded_List_HiddenConstants(Machine(hotel))==(?);
  List_HiddenConstants(Machine(hotel))==(?);
  External_List_HiddenConstants(Machine(hotel))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(hotel))==(btrue);
  Context_List_Properties(Machine(hotel))==(btrue);
  Inherited_List_Properties(Machine(hotel))==(btrue);
  List_Properties(Machine(hotel))==(sze: NATURAL1 & card(ROOM) = sze & small <: ROOM & ROOM: FIN(INTEGER) & not(ROOM = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(hotel),checkin)==(?);
  List_ANY_Var(Machine(hotel),checkout)==(?);
  List_ANY_Var(Machine(hotel),roomquery)==(?);
  List_ANY_Var(Machine(hotel),vacancies)==(?);
  List_ANY_Var(Machine(hotel),totalguests)==(?);
  List_ANY_Var(Machine(hotel),swap)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(hotel)) == (small,sze,ROOM | ? | numbers | ? | checkin,checkout,roomquery,vacancies,totalguests,swap | ? | ? | ? | hotel);
  List_Of_HiddenCst_Ids(Machine(hotel)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(hotel)) == (small,sze);
  List_Of_VisibleVar_Ids(Machine(hotel)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(hotel)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(hotel)) == (Type(ROOM) == Cst(SetOf(atype(ROOM,"[ROOM","]ROOM"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(hotel)) == (Type(small) == Cst(SetOf(atype(ROOM,"[small","]small")));Type(sze) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(hotel)) == (Type(numbers) == Mvl(SetOf(atype(ROOM,"[ROOM","]ROOM")*btype(INTEGER,0,6))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(hotel)) == (Type(swap) == Cst(No_type,atype(ROOM,?,?)*atype(ROOM,?,?));Type(totalguests) == Cst(btype(INTEGER,?,?),No_type);Type(vacancies) == Cst(btype(INTEGER,?,?),No_type);Type(roomquery) == Cst(btype(INTEGER,?,?),atype(ROOM,?,?));Type(checkout) == Cst(No_type,atype(ROOM,?,?));Type(checkin) == Cst(No_type,atype(ROOM,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(hotel)) == (Type(totalguests) == Cst(btype(INTEGER,?,?),No_type);Type(vacancies) == Cst(btype(INTEGER,?,?),No_type);Type(roomquery) == Cst(btype(INTEGER,?,?),atype(ROOM,?,?)))
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
