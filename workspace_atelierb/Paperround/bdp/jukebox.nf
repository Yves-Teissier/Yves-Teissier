Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(jukebox))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(jukebox))==(Machine(jukebox));
  Level(Machine(jukebox))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(jukebox)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(jukebox))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(jukebox))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(jukebox))==(?);
  List_Includes(Machine(jukebox))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(jukebox))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(jukebox))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(jukebox))==(?);
  Context_List_Variables(Machine(jukebox))==(?);
  Abstract_List_Variables(Machine(jukebox))==(?);
  Local_List_Variables(Machine(jukebox))==(playset,credit);
  List_Variables(Machine(jukebox))==(playset,credit);
  External_List_Variables(Machine(jukebox))==(playset,credit)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(jukebox))==(?);
  Abstract_List_VisibleVariables(Machine(jukebox))==(?);
  External_List_VisibleVariables(Machine(jukebox))==(?);
  Expanded_List_VisibleVariables(Machine(jukebox))==(?);
  List_VisibleVariables(Machine(jukebox))==(?);
  Internal_List_VisibleVariables(Machine(jukebox))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(jukebox))==(btrue);
  Gluing_List_Invariant(Machine(jukebox))==(btrue);
  Expanded_List_Invariant(Machine(jukebox))==(btrue);
  Abstract_List_Invariant(Machine(jukebox))==(btrue);
  Context_List_Invariant(Machine(jukebox))==(btrue);
  List_Invariant(Machine(jukebox))==(credit: NATURAL & credit<=limit & playset <: TRACK)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(jukebox))==(btrue);
  Abstract_List_Assertions(Machine(jukebox))==(btrue);
  Context_List_Assertions(Machine(jukebox))==(btrue);
  List_Assertions(Machine(jukebox))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(jukebox))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(jukebox))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(jukebox))==(credit,playset:=0,{});
  Context_List_Initialisation(Machine(jukebox))==(skip);
  List_Initialisation(Machine(jukebox))==(credit:=0 || playset:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(jukebox))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(jukebox))==(btrue);
  List_Constraints(Machine(jukebox))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(jukebox))==(pay,select,play,penalty);
  List_Operations(Machine(jukebox))==(pay,select,play,penalty)
END
&
THEORY ListInputX IS
  List_Input(Machine(jukebox),pay)==(cc);
  List_Input(Machine(jukebox),select)==(tt);
  List_Input(Machine(jukebox),play)==(?);
  List_Input(Machine(jukebox),penalty)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(jukebox),pay)==(?);
  List_Output(Machine(jukebox),select)==(?);
  List_Output(Machine(jukebox),play)==(tt);
  List_Output(Machine(jukebox),penalty)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(jukebox),pay)==(pay(cc));
  List_Header(Machine(jukebox),select)==(select(tt));
  List_Header(Machine(jukebox),play)==(tt <-- play);
  List_Header(Machine(jukebox),penalty)==(penalty)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(jukebox),pay)==(cc: NATURAL1);
  List_Precondition(Machine(jukebox),select)==(credit>0 & tt: TRACK);
  List_Precondition(Machine(jukebox),play)==(playset/={});
  List_Precondition(Machine(jukebox),penalty)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(jukebox),penalty)==(btrue | credit>0 ==> credit:=credit-1 [] playset/={} ==> @pp.(pp: playset ==> playset:=playset-{pp}) [] not(credit>0) & not(playset/={}) ==> skip);
  Expanded_List_Substitution(Machine(jukebox),play)==(playset/={} | @tr.(tr: playset ==> tt,playset:=tr,playset-{tr}));
  Expanded_List_Substitution(Machine(jukebox),select)==(credit>0 & tt: TRACK | credit,playset:=credit-1,playset\/{tt} [] playset:=playset\/{tt});
  Expanded_List_Substitution(Machine(jukebox),pay)==(cc: NATURAL1 | credit:=min({credit+cc,limit}));
  List_Substitution(Machine(jukebox),pay)==(credit:=min({credit+cc,limit}));
  List_Substitution(Machine(jukebox),select)==(CHOICE credit:=credit-1 || playset:=playset\/{tt} OR playset:=playset\/{tt} END);
  List_Substitution(Machine(jukebox),play)==(ANY tr WHERE tr: playset THEN tt:=tr || playset:=playset-{tr} END);
  List_Substitution(Machine(jukebox),penalty)==(SELECT credit>0 THEN credit:=credit-1 WHEN playset/={} THEN ANY pp WHERE pp: playset THEN playset:=playset-{pp} END ELSE skip END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(jukebox))==(limit);
  Inherited_List_Constants(Machine(jukebox))==(?);
  List_Constants(Machine(jukebox))==(limit)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(jukebox),TRACK)==(?);
  Context_List_Enumerated(Machine(jukebox))==(?);
  Context_List_Defered(Machine(jukebox))==(?);
  Context_List_Sets(Machine(jukebox))==(?);
  List_Valuable_Sets(Machine(jukebox))==(TRACK);
  Inherited_List_Enumerated(Machine(jukebox))==(?);
  Inherited_List_Defered(Machine(jukebox))==(?);
  Inherited_List_Sets(Machine(jukebox))==(?);
  List_Enumerated(Machine(jukebox))==(?);
  List_Defered(Machine(jukebox))==(TRACK);
  List_Sets(Machine(jukebox))==(TRACK)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(jukebox))==(?);
  Expanded_List_HiddenConstants(Machine(jukebox))==(?);
  List_HiddenConstants(Machine(jukebox))==(?);
  External_List_HiddenConstants(Machine(jukebox))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(jukebox))==(btrue);
  Context_List_Properties(Machine(jukebox))==(btrue);
  Inherited_List_Properties(Machine(jukebox))==(btrue);
  List_Properties(Machine(jukebox))==(limit: NATURAL1 & TRACK: FIN(INTEGER) & not(TRACK = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(jukebox),pay)==(?);
  List_ANY_Var(Machine(jukebox),select)==(?);
  List_ANY_Var(Machine(jukebox),play)==(Var(tr) == atype(TRACK,?,?));
  List_ANY_Var(Machine(jukebox),penalty)==(Var(pp) == atype(TRACK,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(jukebox)) == (limit,TRACK | ? | playset,credit | ? | pay,select,play,penalty | ? | ? | ? | jukebox);
  List_Of_HiddenCst_Ids(Machine(jukebox)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(jukebox)) == (limit);
  List_Of_VisibleVar_Ids(Machine(jukebox)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(jukebox)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(jukebox)) == (Type(TRACK) == Cst(SetOf(atype(TRACK,"[TRACK","]TRACK"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(jukebox)) == (Type(limit) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(jukebox)) == (Type(playset) == Mvl(SetOf(atype(TRACK,?,?)));Type(credit) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(jukebox)) == (Type(penalty) == Cst(No_type,No_type);Type(play) == Cst(atype(TRACK,?,?),No_type);Type(select) == Cst(No_type,atype(TRACK,?,?));Type(pay) == Cst(No_type,btype(INTEGER,?,?)))
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
