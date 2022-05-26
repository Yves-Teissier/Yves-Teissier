Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(jukebox_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(jukebox_r))==(Machine(jukebox));
  Level(Refinement(jukebox_r))==(1);
  Upper_Level(Refinement(jukebox_r))==(Machine(jukebox))
END
&
THEORY LoadedStructureX IS
  Refinement(jukebox_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(jukebox_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(jukebox_r))==(?);
  List_Includes(Refinement(jukebox_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(jukebox_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(jukebox_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(jukebox_r))==(?);
  Context_List_Variables(Refinement(jukebox_r))==(?);
  Abstract_List_Variables(Refinement(jukebox_r))==(playset,credit);
  Local_List_Variables(Refinement(jukebox_r))==(free,playlist,creditr);
  List_Variables(Refinement(jukebox_r))==(free,playlist,creditr);
  External_List_Variables(Refinement(jukebox_r))==(free,playlist,creditr)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(jukebox_r))==(?);
  Abstract_List_VisibleVariables(Refinement(jukebox_r))==(?);
  External_List_VisibleVariables(Refinement(jukebox_r))==(?);
  Expanded_List_VisibleVariables(Refinement(jukebox_r))==(?);
  List_VisibleVariables(Refinement(jukebox_r))==(?);
  Internal_List_VisibleVariables(Refinement(jukebox_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(jukebox_r))==(free,playlist,creditr)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(jukebox_r))==(btrue);
  Expanded_List_Invariant(Refinement(jukebox_r))==(btrue);
  Abstract_List_Invariant(Refinement(jukebox_r))==(credit: NATURAL & credit<=limit & playset <: TRACK);
  Context_List_Invariant(Refinement(jukebox_r))==(btrue);
  List_Invariant(Refinement(jukebox_r))==(creditr: NAT & creditr = credit & playlist: iseq(TRACK) & ran(playlist) = playset & free: 0..freefreq)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(jukebox_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(jukebox_r))==(btrue);
  Abstract_List_Assertions(Refinement(jukebox_r))==(btrue);
  Context_List_Assertions(Refinement(jukebox_r))==(btrue);
  List_Assertions(Refinement(jukebox_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(jukebox_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(jukebox_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(jukebox_r))==(creditr:=0;playlist:=<>;free:=0);
  Context_List_Initialisation(Refinement(jukebox_r))==(skip);
  List_Initialisation(Refinement(jukebox_r))==(creditr:=0;playlist:=<>;free:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(jukebox_r))==(pay,select,play,penalty);
  List_Operations(Refinement(jukebox_r))==(pay,select,play,penalty)
END
&
THEORY ListInputX IS
  List_Input(Refinement(jukebox_r),pay)==(cc);
  List_Input(Refinement(jukebox_r),select)==(tt);
  List_Input(Refinement(jukebox_r),play)==(?);
  List_Input(Refinement(jukebox_r),penalty)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(jukebox_r),pay)==(?);
  List_Output(Refinement(jukebox_r),select)==(?);
  List_Output(Refinement(jukebox_r),play)==(tt);
  List_Output(Refinement(jukebox_r),penalty)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(jukebox_r),pay)==(pay(cc));
  List_Header(Refinement(jukebox_r),select)==(select(tt));
  List_Header(Refinement(jukebox_r),play)==(tt <-- play);
  List_Header(Refinement(jukebox_r),penalty)==(penalty)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(jukebox_r),pay)==(btrue);
  List_Precondition(Refinement(jukebox_r),pay)==(cc: NATURAL1);
  Own_Precondition(Refinement(jukebox_r),select)==(creditr>0 & tt: TRACK);
  List_Precondition(Refinement(jukebox_r),select)==(creditr>0 & tt: TRACK & credit>0 & tt: TRACK);
  Own_Precondition(Refinement(jukebox_r),play)==(size(playlist)>0);
  List_Precondition(Refinement(jukebox_r),play)==(size(playlist)>0 & playset/={});
  Own_Precondition(Refinement(jukebox_r),penalty)==(btrue);
  List_Precondition(Refinement(jukebox_r),penalty)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(jukebox_r),penalty)==(btrue | playlist/=<> ==> playlist:=tail(playlist) [] not(playlist/=<>) ==> (creditr>0 ==> creditr:=creditr-1 [] not(creditr>0) ==> skip));
  Expanded_List_Substitution(Refinement(jukebox_r),play)==(size(playlist)>0 & playset/={} | tt:=first(playlist);playlist:=tail(playlist));
  Expanded_List_Substitution(Refinement(jukebox_r),select)==(creditr>0 & tt: TRACK & credit>0 & tt: TRACK | tt/:ran(playlist) ==> playlist:=playlist<-tt [] not(tt/:ran(playlist)) ==> skip;(free = freefreq ==> (free:=0 [] creditr:=creditr-1) [] not(free = freefreq) ==> (free:=free+1;creditr:=creditr-1)));
  Expanded_List_Substitution(Refinement(jukebox_r),pay)==(cc: NATURAL1 | creditr:=min({creditr+cc,limit}));
  List_Substitution(Refinement(jukebox_r),pay)==(creditr:=min({creditr+cc,limit}));
  List_Substitution(Refinement(jukebox_r),select)==(BEGIN IF tt/:ran(playlist) THEN playlist:=playlist<-tt END;IF free = freefreq THEN CHOICE free:=0 OR creditr:=creditr-1 END ELSE free:=free+1;creditr:=creditr-1 END END);
  List_Substitution(Refinement(jukebox_r),play)==(BEGIN tt:=first(playlist);playlist:=tail(playlist) END);
  List_Substitution(Refinement(jukebox_r),penalty)==(IF playlist/=<> THEN playlist:=tail(playlist) ELSIF creditr>0 THEN creditr:=creditr-1 END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(jukebox_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(jukebox_r))==(btrue);
  List_Context_Constraints(Refinement(jukebox_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(jukebox_r))==(limit,freefreq);
  Inherited_List_Constants(Refinement(jukebox_r))==(limit);
  List_Constants(Refinement(jukebox_r))==(freefreq)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(jukebox_r),TRACK)==(?);
  Context_List_Enumerated(Refinement(jukebox_r))==(?);
  Context_List_Defered(Refinement(jukebox_r))==(?);
  Context_List_Sets(Refinement(jukebox_r))==(?);
  List_Valuable_Sets(Refinement(jukebox_r))==(TRACK);
  Inherited_List_Enumerated(Refinement(jukebox_r))==(?);
  Inherited_List_Defered(Refinement(jukebox_r))==(TRACK);
  Inherited_List_Sets(Refinement(jukebox_r))==(TRACK);
  List_Enumerated(Refinement(jukebox_r))==(?);
  List_Defered(Refinement(jukebox_r))==(?);
  List_Sets(Refinement(jukebox_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(jukebox_r))==(?);
  Expanded_List_HiddenConstants(Refinement(jukebox_r))==(?);
  List_HiddenConstants(Refinement(jukebox_r))==(?);
  External_List_HiddenConstants(Refinement(jukebox_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(jukebox_r))==(limit: NATURAL1 & TRACK: FIN(INTEGER) & not(TRACK = {}));
  Context_List_Properties(Refinement(jukebox_r))==(btrue);
  Inherited_List_Properties(Refinement(jukebox_r))==(btrue);
  List_Properties(Refinement(jukebox_r))==(freefreq: NAT1)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(jukebox_r),pay)==(?);
  List_ANY_Var(Refinement(jukebox_r),select)==(?);
  List_ANY_Var(Refinement(jukebox_r),play)==(?);
  List_ANY_Var(Refinement(jukebox_r),penalty)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(jukebox_r)) == (freefreq | ? | free,playlist,creditr | ? | pay,select,play,penalty | ? | ? | ? | jukebox_r);
  List_Of_HiddenCst_Ids(Refinement(jukebox_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(jukebox_r)) == (freefreq);
  List_Of_VisibleVar_Ids(Refinement(jukebox_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(jukebox_r)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(jukebox_r)) == (Type(TRACK) == Cst(SetOf(atype(TRACK,"[TRACK","]TRACK"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(jukebox_r)) == (Type(freefreq) == Cst(btype(INTEGER,?,?));Type(limit) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(jukebox_r)) == (Type(free) == Mvl(btype(INTEGER,?,?));Type(playlist) == Mvl(SetOf(btype(INTEGER,?,?)*atype(TRACK,?,?)));Type(creditr) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(jukebox_r)) == (Type(penalty) == Cst(No_type,No_type);Type(play) == Cst(atype(TRACK,?,?),No_type);Type(select) == Cst(No_type,atype(TRACK,?,?));Type(pay) == Cst(No_type,btype(INTEGER,?,?)))
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
