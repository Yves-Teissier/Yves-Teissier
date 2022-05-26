Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(hotel2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(hotel2))==(Machine(hotel2));
  Level(Machine(hotel2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(hotel2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(hotel2))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(hotel2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(hotel2))==(?);
  List_Includes(Machine(hotel2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(hotel2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(hotel2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(hotel2))==(?);
  Context_List_Variables(Machine(hotel2))==(?);
  Abstract_List_Variables(Machine(hotel2))==(?);
  Local_List_Variables(Machine(hotel2))==(guests);
  List_Variables(Machine(hotel2))==(guests);
  External_List_Variables(Machine(hotel2))==(guests)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(hotel2))==(?);
  Abstract_List_VisibleVariables(Machine(hotel2))==(?);
  External_List_VisibleVariables(Machine(hotel2))==(?);
  Expanded_List_VisibleVariables(Machine(hotel2))==(?);
  List_VisibleVariables(Machine(hotel2))==(?);
  Internal_List_VisibleVariables(Machine(hotel2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(hotel2))==(btrue);
  Gluing_List_Invariant(Machine(hotel2))==(btrue);
  Expanded_List_Invariant(Machine(hotel2))==(btrue);
  Abstract_List_Invariant(Machine(hotel2))==(btrue);
  Context_List_Invariant(Machine(hotel2))==(btrue);
  List_Invariant(Machine(hotel2))==(guests: ROOM --> NAME)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(hotel2))==(btrue);
  Abstract_List_Assertions(Machine(hotel2))==(btrue);
  Context_List_Assertions(Machine(hotel2))==(btrue);
  List_Assertions(Machine(hotel2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(hotel2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(hotel2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(hotel2))==(guests:=ROOM*{empty});
  Context_List_Initialisation(Machine(hotel2))==(skip);
  List_Initialisation(Machine(hotel2))==(guests:=ROOM*{empty})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(hotel2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(hotel2))==(btrue);
  List_Constraints(Machine(hotel2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(hotel2))==(guestcheckin,guestchekout,guestquery,presentquery,guestswap);
  List_Operations(Machine(hotel2))==(guestcheckin,guestchekout,guestquery,presentquery,guestswap)
END
&
THEORY ListInputX IS
  List_Input(Machine(hotel2),guestcheckin)==(rr,nn);
  List_Input(Machine(hotel2),guestchekout)==(rr);
  List_Input(Machine(hotel2),guestquery)==(rr);
  List_Input(Machine(hotel2),presentquery)==(nn);
  List_Input(Machine(hotel2),guestswap)==(rr,ss)
END
&
THEORY ListOutputX IS
  List_Output(Machine(hotel2),guestcheckin)==(?);
  List_Output(Machine(hotel2),guestchekout)==(?);
  List_Output(Machine(hotel2),guestquery)==(nn);
  List_Output(Machine(hotel2),presentquery)==(rr);
  List_Output(Machine(hotel2),guestswap)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(hotel2),guestcheckin)==(guestcheckin(rr,nn));
  List_Header(Machine(hotel2),guestchekout)==(guestchekout(rr));
  List_Header(Machine(hotel2),guestquery)==(nn <-- guestquery(rr));
  List_Header(Machine(hotel2),presentquery)==(rr <-- presentquery(nn));
  List_Header(Machine(hotel2),guestswap)==(guestswap(rr,ss))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(hotel2),guestcheckin)==(rr: ROOM & nn: NAME & nn/=empty);
  List_Precondition(Machine(hotel2),guestchekout)==(rr: ROOM);
  List_Precondition(Machine(hotel2),guestquery)==(rr: ROOM);
  List_Precondition(Machine(hotel2),presentquery)==(nn: NAME & nn/=empty);
  List_Precondition(Machine(hotel2),guestswap)==(rr: ROOM & ss: ROOM)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(hotel2),guestswap)==(rr: ROOM & ss: ROOM | guests:=guests<+{rr|->guests(ss),ss|->guests(rr)});
  Expanded_List_Substitution(Machine(hotel2),presentquery)==(nn: NAME & nn/=empty | nn: ran(guests) ==> rr:=present [] not(nn: ran(guests)) ==> rr:=notpresent);
  Expanded_List_Substitution(Machine(hotel2),guestquery)==(rr: ROOM | nn:=guests(rr));
  Expanded_List_Substitution(Machine(hotel2),guestchekout)==(rr: ROOM | guests:=guests<+{rr|->empty});
  Expanded_List_Substitution(Machine(hotel2),guestcheckin)==(rr: ROOM & nn: NAME & nn/=empty | guests:=guests<+{rr|->empty});
  List_Substitution(Machine(hotel2),guestcheckin)==(guests(rr):=empty);
  List_Substitution(Machine(hotel2),guestchekout)==(guests(rr):=empty);
  List_Substitution(Machine(hotel2),guestquery)==(nn:=guests(rr));
  List_Substitution(Machine(hotel2),presentquery)==(IF nn: ran(guests) THEN rr:=present ELSE rr:=notpresent END);
  List_Substitution(Machine(hotel2),guestswap)==(guests:=guests<+{rr|->guests(ss),ss|->guests(rr)})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(hotel2))==(empty,sze);
  Inherited_List_Constants(Machine(hotel2))==(?);
  List_Constants(Machine(hotel2))==(empty,sze)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(hotel2),ROOM)==(?);
  Context_List_Enumerated(Machine(hotel2))==(?);
  Context_List_Defered(Machine(hotel2))==(?);
  Context_List_Sets(Machine(hotel2))==(?);
  List_Valuable_Sets(Machine(hotel2))==(ROOM,NAME);
  Inherited_List_Enumerated(Machine(hotel2))==(?);
  Inherited_List_Defered(Machine(hotel2))==(?);
  Inherited_List_Sets(Machine(hotel2))==(?);
  List_Enumerated(Machine(hotel2))==(REPORT);
  List_Defered(Machine(hotel2))==(ROOM,NAME);
  List_Sets(Machine(hotel2))==(ROOM,NAME,REPORT);
  Set_Definition(Machine(hotel2),NAME)==(?);
  Set_Definition(Machine(hotel2),REPORT)==({present,notpresent})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(hotel2))==(?);
  Expanded_List_HiddenConstants(Machine(hotel2))==(?);
  List_HiddenConstants(Machine(hotel2))==(?);
  External_List_HiddenConstants(Machine(hotel2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(hotel2))==(btrue);
  Context_List_Properties(Machine(hotel2))==(btrue);
  Inherited_List_Properties(Machine(hotel2))==(btrue);
  List_Properties(Machine(hotel2))==(sze: NATURAL1 & card(ROOM) = sze & empty: NAME & ROOM: FIN(INTEGER) & not(ROOM = {}) & NAME: FIN(INTEGER) & not(NAME = {}) & REPORT: FIN(INTEGER) & not(REPORT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(hotel2),guestcheckin)==(?);
  List_ANY_Var(Machine(hotel2),guestchekout)==(?);
  List_ANY_Var(Machine(hotel2),guestquery)==(?);
  List_ANY_Var(Machine(hotel2),presentquery)==(?);
  List_ANY_Var(Machine(hotel2),guestswap)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(hotel2)) == (empty,sze,ROOM,NAME,REPORT,present,notpresent | ? | guests | ? | guestcheckin,guestchekout,guestquery,presentquery,guestswap | ? | ? | ? | hotel2);
  List_Of_HiddenCst_Ids(Machine(hotel2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(hotel2)) == (empty,sze);
  List_Of_VisibleVar_Ids(Machine(hotel2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(hotel2)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(hotel2)) == (Type(ROOM) == Cst(SetOf(atype(ROOM,"[ROOM","]ROOM")));Type(NAME) == Cst(SetOf(atype(NAME,"[NAME","]NAME")));Type(REPORT) == Cst(SetOf(etype(REPORT,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(hotel2)) == (Type(present) == Cst(etype(REPORT,0,1));Type(notpresent) == Cst(etype(REPORT,0,1));Type(empty) == Cst(atype(NAME,?,?));Type(sze) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(hotel2)) == (Type(guests) == Mvl(SetOf(atype(ROOM,"[ROOM","]ROOM")*atype(NAME,"[NAME","]NAME"))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(hotel2)) == (Type(guestswap) == Cst(No_type,atype(ROOM,?,?)*atype(ROOM,?,?));Type(presentquery) == Cst(etype(REPORT,?,?),atype(NAME,?,?));Type(guestquery) == Cst(atype(NAME,?,?),atype(ROOM,?,?));Type(guestchekout) == Cst(No_type,atype(ROOM,?,?));Type(guestcheckin) == Cst(No_type,atype(ROOM,?,?)*atype(NAME,?,?)));
  Observers(Machine(hotel2)) == (Type(presentquery) == Cst(etype(REPORT,?,?),atype(NAME,?,?));Type(guestquery) == Cst(atype(NAME,?,?),atype(ROOM,?,?)))
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
