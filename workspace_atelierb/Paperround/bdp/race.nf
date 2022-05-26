Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(race))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(race))==(Machine(race));
  Level(Machine(race))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(race)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(race))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(race))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(race))==(?);
  List_Includes(Machine(race))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(race))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(race))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(race))==(?);
  Context_List_Variables(Machine(race))==(?);
  Abstract_List_Variables(Machine(race))==(?);
  Local_List_Variables(Machine(race))==(finish);
  List_Variables(Machine(race))==(finish);
  External_List_Variables(Machine(race))==(finish)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(race))==(?);
  Abstract_List_VisibleVariables(Machine(race))==(?);
  External_List_VisibleVariables(Machine(race))==(?);
  Expanded_List_VisibleVariables(Machine(race))==(?);
  List_VisibleVariables(Machine(race))==(?);
  Internal_List_VisibleVariables(Machine(race))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(race))==(btrue);
  Gluing_List_Invariant(Machine(race))==(btrue);
  Expanded_List_Invariant(Machine(race))==(btrue);
  Abstract_List_Invariant(Machine(race))==(btrue);
  Context_List_Invariant(Machine(race))==(btrue);
  List_Invariant(Machine(race))==(finish: iseq(CAR))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(race))==(btrue);
  Abstract_List_Assertions(Machine(race))==(btrue);
  Context_List_Assertions(Machine(race))==(btrue);
  List_Assertions(Machine(race))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(race))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(race))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(race))==(finish:=<>);
  Context_List_Initialisation(Machine(race))==(skip);
  List_Initialisation(Machine(race))==(finish:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(race))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(race))==(btrue);
  List_Constraints(Machine(race))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(race))==(finished,query,disquality,medals);
  List_Operations(Machine(race))==(finished,query,disquality,medals)
END
&
THEORY ListInputX IS
  List_Input(Machine(race),finished)==(rr);
  List_Input(Machine(race),query)==(pp);
  List_Input(Machine(race),disquality)==(pp);
  List_Input(Machine(race),medals)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(race),finished)==(?);
  List_Output(Machine(race),query)==(rr);
  List_Output(Machine(race),disquality)==(?);
  List_Output(Machine(race),medals)==(ss)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(race),finished)==(finished(rr));
  List_Header(Machine(race),query)==(rr <-- query(pp));
  List_Header(Machine(race),disquality)==(disquality(pp));
  List_Header(Machine(race),medals)==(ss <-- medals)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(race),finished)==(rr: CAR & rr/:ran(finish));
  List_Precondition(Machine(race),query)==(pp: NAT1 & pp<=size(finish));
  List_Precondition(Machine(race),disquality)==(pp: NAT1 & pp<=size(finish));
  List_Precondition(Machine(race),medals)==(size(finish)<=3)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(race),medals)==(size(finish)<=3 | ss:=finish/|\3);
  Expanded_List_Substitution(Machine(race),disquality)==(pp: NAT1 & pp<=size(finish) | finish:=finish/|\pp-1^(finish\|/pp));
  Expanded_List_Substitution(Machine(race),query)==(pp: NAT1 & pp<=size(finish) | rr:=finish(pp));
  Expanded_List_Substitution(Machine(race),finished)==(rr: CAR & rr/:ran(finish) | finish:=finish<-rr);
  List_Substitution(Machine(race),finished)==(finish:=finish<-rr);
  List_Substitution(Machine(race),query)==(rr:=finish(pp));
  List_Substitution(Machine(race),disquality)==(finish:=finish/|\pp-1^(finish\|/pp));
  List_Substitution(Machine(race),medals)==(ss:=finish/|\3)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(race))==(?);
  Inherited_List_Constants(Machine(race))==(?);
  List_Constants(Machine(race))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(race),CAR)==(?);
  Context_List_Enumerated(Machine(race))==(?);
  Context_List_Defered(Machine(race))==(?);
  Context_List_Sets(Machine(race))==(?);
  List_Valuable_Sets(Machine(race))==(CAR);
  Inherited_List_Enumerated(Machine(race))==(?);
  Inherited_List_Defered(Machine(race))==(?);
  Inherited_List_Sets(Machine(race))==(?);
  List_Enumerated(Machine(race))==(?);
  List_Defered(Machine(race))==(CAR);
  List_Sets(Machine(race))==(CAR)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(race))==(?);
  Expanded_List_HiddenConstants(Machine(race))==(?);
  List_HiddenConstants(Machine(race))==(?);
  External_List_HiddenConstants(Machine(race))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(race))==(btrue);
  Context_List_Properties(Machine(race))==(btrue);
  Inherited_List_Properties(Machine(race))==(btrue);
  List_Properties(Machine(race))==(CAR: FIN(INTEGER) & not(CAR = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(race),finished)==(?);
  List_ANY_Var(Machine(race),query)==(?);
  List_ANY_Var(Machine(race),disquality)==(?);
  List_ANY_Var(Machine(race),medals)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(race)) == (CAR | ? | finish | ? | finished,query,disquality,medals | ? | ? | ? | race);
  List_Of_HiddenCst_Ids(Machine(race)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(race)) == (?);
  List_Of_VisibleVar_Ids(Machine(race)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(race)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(race)) == (Type(CAR) == Cst(SetOf(atype(CAR,"[CAR","]CAR"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(race)) == (Type(finish) == Mvl(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(race)) == (Type(medals) == Cst(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?)),No_type);Type(disquality) == Cst(No_type,btype(INTEGER,?,?));Type(query) == Cst(atype(CAR,?,?),btype(INTEGER,?,?));Type(finished) == Cst(No_type,atype(CAR,?,?)));
  Observers(Machine(race)) == (Type(medals) == Cst(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?)),No_type);Type(query) == Cst(atype(CAR,?,?),btype(INTEGER,?,?)))
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
