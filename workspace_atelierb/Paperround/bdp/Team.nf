Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Team))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Team))==(Machine(Team));
  Level(Machine(Team))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Team)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Team))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Team))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Team))==(?);
  List_Includes(Machine(Team))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Team))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Team))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Team))==(?);
  Context_List_Variables(Machine(Team))==(?);
  Abstract_List_Variables(Machine(Team))==(?);
  Local_List_Variables(Machine(Team))==(team);
  List_Variables(Machine(Team))==(team);
  External_List_Variables(Machine(Team))==(team)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Team))==(?);
  Abstract_List_VisibleVariables(Machine(Team))==(?);
  External_List_VisibleVariables(Machine(Team))==(?);
  Expanded_List_VisibleVariables(Machine(Team))==(?);
  List_VisibleVariables(Machine(Team))==(?);
  Internal_List_VisibleVariables(Machine(Team))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Team))==(btrue);
  Gluing_List_Invariant(Machine(Team))==(btrue);
  Expanded_List_Invariant(Machine(Team))==(btrue);
  Abstract_List_Invariant(Machine(Team))==(btrue);
  Context_List_Invariant(Machine(Team))==(btrue);
  List_Invariant(Machine(Team))==(team <: 0..21 & card(team) = 11)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Team))==(btrue);
  Abstract_List_Assertions(Machine(Team))==(btrue);
  Context_List_Assertions(Machine(Team))==(btrue);
  List_Assertions(Machine(Team))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Team))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Team))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Team))==(team:=0..10);
  Context_List_Initialisation(Machine(Team))==(skip);
  List_Initialisation(Machine(Team))==(team:=0..10)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Team))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Team))==(btrue);
  List_Constraints(Machine(Team))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Team))==(substitute,query);
  List_Operations(Machine(Team))==(substitute,query)
END
&
THEORY ListInputX IS
  List_Input(Machine(Team),substitute)==(pp,rr);
  List_Input(Machine(Team),query)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Team),substitute)==(?);
  List_Output(Machine(Team),query)==(aa)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Team),substitute)==(substitute(pp,rr));
  List_Header(Machine(Team),query)==(aa <-- query(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Team),substitute)==(pp: team & rr: 0..21 & rr/:team);
  List_Precondition(Machine(Team),query)==(pp: 0..21)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Team),query)==(pp: 0..21 | pp: team ==> aa:=in [] not(pp: team) ==> aa:=out);
  Expanded_List_Substitution(Machine(Team),substitute)==(pp: team & rr: 0..21 & rr/:team | team:=(team\/{rr})-{pp});
  List_Substitution(Machine(Team),substitute)==(team:=(team\/{rr})-{pp});
  List_Substitution(Machine(Team),query)==(IF pp: team THEN aa:=in ELSE aa:=out END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Team))==(?);
  Inherited_List_Constants(Machine(Team))==(?);
  List_Constants(Machine(Team))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Team),ANSWER)==({in,out});
  Context_List_Enumerated(Machine(Team))==(?);
  Context_List_Defered(Machine(Team))==(?);
  Context_List_Sets(Machine(Team))==(?);
  List_Valuable_Sets(Machine(Team))==(?);
  Inherited_List_Enumerated(Machine(Team))==(?);
  Inherited_List_Defered(Machine(Team))==(?);
  Inherited_List_Sets(Machine(Team))==(?);
  List_Enumerated(Machine(Team))==(ANSWER);
  List_Defered(Machine(Team))==(?);
  List_Sets(Machine(Team))==(ANSWER)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Team))==(?);
  Expanded_List_HiddenConstants(Machine(Team))==(?);
  List_HiddenConstants(Machine(Team))==(?);
  External_List_HiddenConstants(Machine(Team))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Team))==(btrue);
  Context_List_Properties(Machine(Team))==(btrue);
  Inherited_List_Properties(Machine(Team))==(btrue);
  List_Properties(Machine(Team))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Team),substitute)==(?);
  List_ANY_Var(Machine(Team),query)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Team)) == (ANSWER,in,out | ? | team | ? | substitute,query | ? | ? | ? | Team);
  List_Of_HiddenCst_Ids(Machine(Team)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Team)) == (?);
  List_Of_VisibleVar_Ids(Machine(Team)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Team)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Team)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Team)) == (Type(in) == Cst(etype(ANSWER,0,1));Type(out) == Cst(etype(ANSWER,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Team)) == (Type(team) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Team)) == (Type(query) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(substitute) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Team)) == (Type(query) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?)))
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
