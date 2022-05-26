Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(TeamR2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(TeamR2))==(Machine(Team));
  Level(Refinement(TeamR2))==(1);
  Upper_Level(Refinement(TeamR2))==(Machine(Team))
END
&
THEORY LoadedStructureX IS
  Refinement(TeamR2)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(TeamR2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(TeamR2))==(?);
  List_Includes(Refinement(TeamR2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(TeamR2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(TeamR2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(TeamR2))==(?);
  Context_List_Variables(Refinement(TeamR2))==(?);
  Abstract_List_Variables(Refinement(TeamR2))==(team);
  Local_List_Variables(Refinement(TeamR2))==(teama);
  List_Variables(Refinement(TeamR2))==(teama);
  External_List_Variables(Refinement(TeamR2))==(teama)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(TeamR2))==(?);
  Abstract_List_VisibleVariables(Refinement(TeamR2))==(?);
  External_List_VisibleVariables(Refinement(TeamR2))==(?);
  Expanded_List_VisibleVariables(Refinement(TeamR2))==(?);
  List_VisibleVariables(Refinement(TeamR2))==(?);
  Internal_List_VisibleVariables(Refinement(TeamR2))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(TeamR2))==(teama)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(TeamR2))==(btrue);
  Expanded_List_Invariant(Refinement(TeamR2))==(btrue);
  Abstract_List_Invariant(Refinement(TeamR2))==(team <: 0..21 & card(team) = 11);
  Context_List_Invariant(Refinement(TeamR2))==(btrue);
  List_Invariant(Refinement(TeamR2))==(teama: 0..21 --> BOOL & team = dom(teama|>{TRUE}))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(TeamR2))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(TeamR2))==(btrue);
  Abstract_List_Assertions(Refinement(TeamR2))==(btrue);
  Context_List_Assertions(Refinement(TeamR2))==(btrue);
  List_Assertions(Refinement(TeamR2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(TeamR2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(TeamR2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(TeamR2))==(teama:=(0..10)*{TRUE}\/(11..21)*{FALSE});
  Context_List_Initialisation(Refinement(TeamR2))==(skip);
  List_Initialisation(Refinement(TeamR2))==(teama:=(0..10)*{TRUE}\/(11..21)*{FALSE})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(TeamR2))==(substitute,query);
  List_Operations(Refinement(TeamR2))==(substitute,query)
END
&
THEORY ListInputX IS
  List_Input(Refinement(TeamR2),substitute)==(pp,rr);
  List_Input(Refinement(TeamR2),query)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(TeamR2),substitute)==(?);
  List_Output(Refinement(TeamR2),query)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(TeamR2),substitute)==(substitute(pp,rr));
  List_Header(Refinement(TeamR2),query)==(aa <-- query(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(TeamR2),substitute)==(btrue);
  List_Precondition(Refinement(TeamR2),substitute)==(pp: team & rr: 0..21 & rr/:team);
  Own_Precondition(Refinement(TeamR2),query)==(btrue);
  List_Precondition(Refinement(TeamR2),query)==(pp: 0..21)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(TeamR2),query)==(pp: 0..21 | @bb.(bb:=teama(pp);(bb = TRUE ==> aa:=in [] not(bb = TRUE) ==> aa:=out)));
  Expanded_List_Substitution(Refinement(TeamR2),substitute)==(pp: team & rr: 0..21 & rr/:team | teama:=teama<+{pp|->FALSE};teama:=teama<+{rr|->TRUE});
  List_Substitution(Refinement(TeamR2),substitute)==(teama(pp):=FALSE;teama(rr):=TRUE);
  List_Substitution(Refinement(TeamR2),query)==(VAR bb IN bb:=teama(pp);IF bb = TRUE THEN aa:=in ELSE aa:=out END END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(TeamR2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(TeamR2))==(btrue);
  List_Context_Constraints(Refinement(TeamR2))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(TeamR2))==(?);
  Inherited_List_Constants(Refinement(TeamR2))==(?);
  List_Constants(Refinement(TeamR2))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(TeamR2),ANSWER)==({in,out});
  Context_List_Enumerated(Refinement(TeamR2))==(?);
  Context_List_Defered(Refinement(TeamR2))==(?);
  Context_List_Sets(Refinement(TeamR2))==(?);
  List_Valuable_Sets(Refinement(TeamR2))==(?);
  Inherited_List_Enumerated(Refinement(TeamR2))==(ANSWER);
  Inherited_List_Defered(Refinement(TeamR2))==(?);
  Inherited_List_Sets(Refinement(TeamR2))==(ANSWER);
  List_Enumerated(Refinement(TeamR2))==(?);
  List_Defered(Refinement(TeamR2))==(?);
  List_Sets(Refinement(TeamR2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(TeamR2))==(?);
  Expanded_List_HiddenConstants(Refinement(TeamR2))==(?);
  List_HiddenConstants(Refinement(TeamR2))==(?);
  External_List_HiddenConstants(Refinement(TeamR2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(TeamR2))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}));
  Context_List_Properties(Refinement(TeamR2))==(btrue);
  Inherited_List_Properties(Refinement(TeamR2))==(btrue);
  List_Properties(Refinement(TeamR2))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(TeamR2),substitute)==(?);
  List_ANY_Var(Refinement(TeamR2),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(TeamR2)) == (? | ? | teama | ? | substitute,query | ? | ? | ? | TeamR2);
  List_Of_HiddenCst_Ids(Refinement(TeamR2)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(TeamR2)) == (?);
  List_Of_VisibleVar_Ids(Refinement(TeamR2)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(TeamR2)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(TeamR2)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(TeamR2)) == (Type(out) == Cst(etype(ANSWER,0,1));Type(in) == Cst(etype(ANSWER,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(TeamR2)) == (Type(teama) == Mvl(SetOf(btype(INTEGER,0,21)*btype(BOOL,0,1))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(TeamR2)) == (Type(query) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(substitute) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
