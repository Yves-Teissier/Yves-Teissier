Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(TeamR))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(TeamR))==(Machine(Team));
  Level(Refinement(TeamR))==(1);
  Upper_Level(Refinement(TeamR))==(Machine(Team))
END
&
THEORY LoadedStructureX IS
  Refinement(TeamR)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(TeamR))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(TeamR))==(?);
  List_Includes(Refinement(TeamR))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(TeamR))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(TeamR))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(TeamR))==(?);
  Context_List_Variables(Refinement(TeamR))==(?);
  Abstract_List_Variables(Refinement(TeamR))==(team);
  Local_List_Variables(Refinement(TeamR))==(teamr);
  List_Variables(Refinement(TeamR))==(teamr);
  External_List_Variables(Refinement(TeamR))==(teamr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(TeamR))==(?);
  Abstract_List_VisibleVariables(Refinement(TeamR))==(?);
  External_List_VisibleVariables(Refinement(TeamR))==(?);
  Expanded_List_VisibleVariables(Refinement(TeamR))==(?);
  List_VisibleVariables(Refinement(TeamR))==(?);
  Internal_List_VisibleVariables(Refinement(TeamR))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(TeamR))==(teamr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(TeamR))==(btrue);
  Expanded_List_Invariant(Refinement(TeamR))==(btrue);
  Abstract_List_Invariant(Refinement(TeamR))==(team <: 0..21 & card(team) = 11);
  Context_List_Invariant(Refinement(TeamR))==(btrue);
  List_Invariant(Refinement(TeamR))==(teamr: 0..10 >-> 0..21 & ran(teamr) = team)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(TeamR))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(TeamR))==(btrue);
  Abstract_List_Assertions(Refinement(TeamR))==(btrue);
  Context_List_Assertions(Refinement(TeamR))==(btrue);
  List_Assertions(Refinement(TeamR))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(TeamR))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(TeamR))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(TeamR))==(teamr:=%nn.(nn: 0..10 | nn));
  Context_List_Initialisation(Refinement(TeamR))==(skip);
  List_Initialisation(Refinement(TeamR))==(teamr:=%nn.(nn: 0..10 | nn))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(TeamR))==(substitute,query);
  List_Operations(Refinement(TeamR))==(substitute,query)
END
&
THEORY ListInputX IS
  List_Input(Refinement(TeamR),substitute)==(pp,rr);
  List_Input(Refinement(TeamR),query)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(TeamR),substitute)==(?);
  List_Output(Refinement(TeamR),query)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(TeamR),substitute)==(substitute(pp,rr));
  List_Header(Refinement(TeamR),query)==(aa <-- query(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(TeamR),substitute)==(btrue);
  List_Precondition(Refinement(TeamR),substitute)==(pp: team & rr: 0..21 & rr/:team);
  Own_Precondition(Refinement(TeamR),query)==(btrue);
  List_Precondition(Refinement(TeamR),query)==(pp: 0..21)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(TeamR),query)==(pp: 0..21 | pp: ran(teamr) ==> aa:=in [] not(pp: ran(teamr)) ==> aa:=out);
  Expanded_List_Substitution(Refinement(TeamR),substitute)==(pp: team & rr: 0..21 & rr/:team | teamr:=teamr<+{teamr~(pp)|->rr});
  List_Substitution(Refinement(TeamR),substitute)==(teamr(teamr~(pp)):=rr);
  List_Substitution(Refinement(TeamR),query)==(IF pp: ran(teamr) THEN aa:=in ELSE aa:=out END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(TeamR))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(TeamR))==(btrue);
  List_Context_Constraints(Refinement(TeamR))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(TeamR))==(?);
  Inherited_List_Constants(Refinement(TeamR))==(?);
  List_Constants(Refinement(TeamR))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(TeamR),ANSWER)==({in,out});
  Context_List_Enumerated(Refinement(TeamR))==(?);
  Context_List_Defered(Refinement(TeamR))==(?);
  Context_List_Sets(Refinement(TeamR))==(?);
  List_Valuable_Sets(Refinement(TeamR))==(?);
  Inherited_List_Enumerated(Refinement(TeamR))==(ANSWER);
  Inherited_List_Defered(Refinement(TeamR))==(?);
  Inherited_List_Sets(Refinement(TeamR))==(ANSWER);
  List_Enumerated(Refinement(TeamR))==(?);
  List_Defered(Refinement(TeamR))==(?);
  List_Sets(Refinement(TeamR))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(TeamR))==(?);
  Expanded_List_HiddenConstants(Refinement(TeamR))==(?);
  List_HiddenConstants(Refinement(TeamR))==(?);
  External_List_HiddenConstants(Refinement(TeamR))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(TeamR))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}));
  Context_List_Properties(Refinement(TeamR))==(btrue);
  Inherited_List_Properties(Refinement(TeamR))==(btrue);
  List_Properties(Refinement(TeamR))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(TeamR),substitute)==(?);
  List_ANY_Var(Refinement(TeamR),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(TeamR)) == (? | ? | teamr | ? | substitute,query | ? | ? | ? | TeamR);
  List_Of_HiddenCst_Ids(Refinement(TeamR)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(TeamR)) == (?);
  List_Of_VisibleVar_Ids(Refinement(TeamR)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(TeamR)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(TeamR)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(TeamR)) == (Type(out) == Cst(etype(ANSWER,0,1));Type(in) == Cst(etype(ANSWER,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(TeamR)) == (Type(teamr) == Mvl(SetOf(btype(INTEGER,0,10)*btype(INTEGER,0,21))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(TeamR)) == (Type(query) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(substitute) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
