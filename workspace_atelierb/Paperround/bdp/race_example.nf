Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(race_example))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(race_example))==(Machine(race_example));
  Level(Machine(race_example))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(race_example)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(race_example))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(race_example))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(race_example))==(race);
  List_Includes(Machine(race_example))==(race)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(race_example))==(finished,query,disquality,medals)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(race_example))==(race)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(race_example))==(?);
  Context_List_Variables(Machine(race_example))==(?);
  Abstract_List_Variables(Machine(race_example))==(?);
  Local_List_Variables(Machine(race_example))==(?);
  List_Variables(Machine(race_example))==(finish);
  External_List_Variables(Machine(race_example))==(finish)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(race_example))==(?);
  Abstract_List_VisibleVariables(Machine(race_example))==(?);
  External_List_VisibleVariables(Machine(race_example))==(?);
  Expanded_List_VisibleVariables(Machine(race_example))==(?);
  List_VisibleVariables(Machine(race_example))==(?);
  Internal_List_VisibleVariables(Machine(race_example))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(race_example))==(btrue);
  Gluing_List_Invariant(Machine(race_example))==(btrue);
  Abstract_List_Invariant(Machine(race_example))==(btrue);
  Expanded_List_Invariant(Machine(race_example))==(finish: iseq(CAR));
  Context_List_Invariant(Machine(race_example))==(btrue);
  List_Invariant(Machine(race_example))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(race_example))==(btrue);
  Expanded_List_Assertions(Machine(race_example))==(btrue);
  Context_List_Assertions(Machine(race_example))==(btrue);
  List_Assertions(Machine(race_example))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(race_example))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(race_example))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(race_example))==(finish:=<>);
  Context_List_Initialisation(Machine(race_example))==(skip);
  List_Initialisation(Machine(race_example))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(race_example))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(race_example),Machine(race))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(race_example),Machine(race))==(btrue);
  List_Context_Constraints(Machine(race_example))==(btrue);
  List_Constraints(Machine(race_example))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(race_example))==(finished,query,disquality,medals);
  List_Operations(Machine(race_example))==(finished,query,disquality,medals)
END
&
THEORY ListInputX IS
  List_Input(Machine(race_example),medals)==(?);
  List_Input(Machine(race_example),disquality)==(pp);
  List_Input(Machine(race_example),query)==(pp);
  List_Input(Machine(race_example),finished)==(rr)
END
&
THEORY ListOutputX IS
  List_Output(Machine(race_example),medals)==(ss);
  List_Output(Machine(race_example),disquality)==(?);
  List_Output(Machine(race_example),query)==(rr);
  List_Output(Machine(race_example),finished)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(race_example),medals)==(ss <-- medals);
  List_Header(Machine(race_example),disquality)==(disquality(pp));
  List_Header(Machine(race_example),query)==(rr <-- query(pp));
  List_Header(Machine(race_example),finished)==(finished(rr))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(race_example),medals)==(size(finish)<=3);
  List_Precondition(Machine(race_example),medals)==(size(finish)<=3);
  Own_Precondition(Machine(race_example),disquality)==(pp: NAT1 & pp<=size(finish));
  List_Precondition(Machine(race_example),disquality)==(pp: NAT1 & pp<=size(finish));
  Own_Precondition(Machine(race_example),query)==(pp: NAT1 & pp<=size(finish));
  List_Precondition(Machine(race_example),query)==(pp: NAT1 & pp<=size(finish));
  Own_Precondition(Machine(race_example),finished)==(rr: CAR & rr/:ran(finish));
  List_Precondition(Machine(race_example),finished)==(rr: CAR & rr/:ran(finish))
END
&
THEORY ListSubstitutionX IS
  List_Substitution(Machine(race_example),medals)==(ss:=finish/|\3);
  Expanded_List_Substitution(Machine(race_example),medals)==(size(finish)<=3 | ss:=finish/|\3);
  List_Substitution(Machine(race_example),disquality)==(finish:=finish/|\pp-1^(finish\|/pp));
  Expanded_List_Substitution(Machine(race_example),disquality)==(pp: NAT1 & pp<=size(finish) | finish:=finish/|\pp-1^(finish\|/pp));
  List_Substitution(Machine(race_example),query)==(rr:=finish(pp));
  Expanded_List_Substitution(Machine(race_example),query)==(pp: NAT1 & pp<=size(finish) | rr:=finish(pp));
  List_Substitution(Machine(race_example),finished)==(finish:=finish<-rr);
  Expanded_List_Substitution(Machine(race_example),finished)==(rr: CAR & rr/:ran(finish) | finish:=finish<-rr)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(race_example))==(Ferrari,Mercedes,Williams,McLaren,Lotus);
  Inherited_List_Constants(Machine(race_example))==(?);
  List_Constants(Machine(race_example))==(Ferrari,Mercedes,Williams,McLaren,Lotus)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(race_example),CAR)==(?);
  Context_List_Enumerated(Machine(race_example))==(?);
  Context_List_Defered(Machine(race_example))==(?);
  Context_List_Sets(Machine(race_example))==(?);
  List_Valuable_Sets(Machine(race_example))==(CAR);
  Inherited_List_Enumerated(Machine(race_example))==(?);
  Inherited_List_Defered(Machine(race_example))==(CAR);
  Inherited_List_Sets(Machine(race_example))==(CAR);
  List_Enumerated(Machine(race_example))==(?);
  List_Defered(Machine(race_example))==(?);
  List_Sets(Machine(race_example))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(race_example))==(?);
  Expanded_List_HiddenConstants(Machine(race_example))==(?);
  List_HiddenConstants(Machine(race_example))==(?);
  External_List_HiddenConstants(Machine(race_example))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(race_example))==(btrue);
  Context_List_Properties(Machine(race_example))==(btrue);
  Inherited_List_Properties(Machine(race_example))==(CAR: FIN(INTEGER) & not(CAR = {}));
  List_Properties(Machine(race_example))==(Ferrari: CAR & Mercedes: CAR & Williams: CAR & McLaren: CAR & Lotus: CAR & CAR = {Ferrari,Mercedes,Williams,McLaren,Lotus} & card(CAR) = 5)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(race_example),medals)==(?);
  List_ANY_Var(Machine(race_example),disquality)==(?);
  List_ANY_Var(Machine(race_example),query)==(?);
  List_ANY_Var(Machine(race_example),finished)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(race_example)) == (Ferrari,Mercedes,Williams,McLaren,Lotus | CAR | ? | V,finish | ? | finished,query,disquality,medals | included(Machine(race)) | ? | race_example);
  List_Of_HiddenCst_Ids(Machine(race_example)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(race_example)) == (Ferrari,Mercedes,Williams,McLaren,Lotus);
  List_Of_VisibleVar_Ids(Machine(race_example)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(race_example)) == (?: ?);
  List_Of_Ids(Machine(race)) == (CAR | ? | finish | ? | finished,query,disquality,medals | ? | ? | ? | race);
  List_Of_HiddenCst_Ids(Machine(race)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(race)) == (?);
  List_Of_VisibleVar_Ids(Machine(race)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(race)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(race_example)) == (Type(CAR) == Cst(SetOf(atype(CAR,"[CAR","]CAR"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(race_example)) == (Type(Ferrari) == Cst(atype(CAR,?,?));Type(Mercedes) == Cst(atype(CAR,?,?));Type(Williams) == Cst(atype(CAR,?,?));Type(McLaren) == Cst(atype(CAR,?,?));Type(Lotus) == Cst(atype(CAR,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(race_example)) == (Type(finish) == Mvl(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(race_example)) == (Type(finished) == Cst(No_type,atype(CAR,?,?));Type(query) == Cst(atype(CAR,?,?),btype(INTEGER,?,?));Type(disquality) == Cst(No_type,btype(INTEGER,?,?));Type(medals) == Cst(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?)),No_type));
  Observers(Machine(race_example)) == (Type(query) == Cst(atype(CAR,?,?),btype(INTEGER,?,?));Type(medals) == Cst(SetOf(btype(INTEGER,?,?)*atype(CAR,?,?)),No_type))
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
