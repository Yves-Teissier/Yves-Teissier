Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exam))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exam))==(Machine(Exam));
  Level(Machine(Exam))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exam)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exam))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exam))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exam))==(?);
  List_Includes(Machine(Exam))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exam))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exam))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exam))==(?);
  Context_List_Variables(Machine(Exam))==(?);
  Abstract_List_Variables(Machine(Exam))==(?);
  Local_List_Variables(Machine(Exam))==(marks);
  List_Variables(Machine(Exam))==(marks);
  External_List_Variables(Machine(Exam))==(marks)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exam))==(?);
  Abstract_List_VisibleVariables(Machine(Exam))==(?);
  External_List_VisibleVariables(Machine(Exam))==(?);
  Expanded_List_VisibleVariables(Machine(Exam))==(?);
  List_VisibleVariables(Machine(Exam))==(?);
  Internal_List_VisibleVariables(Machine(Exam))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exam))==(btrue);
  Gluing_List_Invariant(Machine(Exam))==(btrue);
  Expanded_List_Invariant(Machine(Exam))==(btrue);
  Abstract_List_Invariant(Machine(Exam))==(btrue);
  Context_List_Invariant(Machine(Exam))==(btrue);
  List_Invariant(Machine(Exam))==(marks: CANDIDATE +-> 0..100)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exam))==(btrue);
  Abstract_List_Assertions(Machine(Exam))==(btrue);
  Context_List_Assertions(Machine(Exam))==(btrue);
  List_Assertions(Machine(Exam))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exam))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exam))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exam))==(marks:={});
  Context_List_Initialisation(Machine(Exam))==(skip);
  List_Initialisation(Machine(Exam))==(marks:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exam))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exam))==(btrue);
  List_Constraints(Machine(Exam))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exam))==(enter,average,number);
  List_Operations(Machine(Exam))==(enter,average,number)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exam),enter)==(cc,nn);
  List_Input(Machine(Exam),average)==(?);
  List_Input(Machine(Exam),number)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exam),enter)==(?);
  List_Output(Machine(Exam),average)==(aa);
  List_Output(Machine(Exam),number)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exam),enter)==(enter(cc,nn));
  List_Header(Machine(Exam),average)==(aa <-- average);
  List_Header(Machine(Exam),number)==(nn <-- number)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exam),enter)==(cc: CANDIDATE & cc/:dom(marks) & nn: 0..100);
  List_Precondition(Machine(Exam),average)==(marks/={});
  List_Precondition(Machine(Exam),number)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exam),number)==(btrue | nn:=card(dom(marks)));
  Expanded_List_Substitution(Machine(Exam),average)==(marks/={} | aa:=SIGMA(zz).(zz: dom(marks) | marks(zz))/card(dom(marks)));
  Expanded_List_Substitution(Machine(Exam),enter)==(cc: CANDIDATE & cc/:dom(marks) & nn: 0..100 | marks:=marks<+{cc|->nn});
  List_Substitution(Machine(Exam),enter)==(marks(cc):=nn);
  List_Substitution(Machine(Exam),average)==(aa:=SIGMA(zz).(zz: dom(marks) | marks(zz))/card(dom(marks)));
  List_Substitution(Machine(Exam),number)==(nn:=card(dom(marks)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exam))==(?);
  Inherited_List_Constants(Machine(Exam))==(?);
  List_Constants(Machine(Exam))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Exam),CANDIDATE)==(?);
  Context_List_Enumerated(Machine(Exam))==(?);
  Context_List_Defered(Machine(Exam))==(?);
  Context_List_Sets(Machine(Exam))==(?);
  List_Valuable_Sets(Machine(Exam))==(CANDIDATE);
  Inherited_List_Enumerated(Machine(Exam))==(?);
  Inherited_List_Defered(Machine(Exam))==(?);
  Inherited_List_Sets(Machine(Exam))==(?);
  List_Enumerated(Machine(Exam))==(?);
  List_Defered(Machine(Exam))==(CANDIDATE);
  List_Sets(Machine(Exam))==(CANDIDATE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exam))==(?);
  Expanded_List_HiddenConstants(Machine(Exam))==(?);
  List_HiddenConstants(Machine(Exam))==(?);
  External_List_HiddenConstants(Machine(Exam))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exam))==(btrue);
  Context_List_Properties(Machine(Exam))==(btrue);
  Inherited_List_Properties(Machine(Exam))==(btrue);
  List_Properties(Machine(Exam))==(CANDIDATE: FIN(INTEGER) & not(CANDIDATE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exam),enter)==(?);
  List_ANY_Var(Machine(Exam),average)==(?);
  List_ANY_Var(Machine(Exam),number)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exam)) == (CANDIDATE | ? | marks | ? | enter,average,number | ? | ? | ? | Exam);
  List_Of_HiddenCst_Ids(Machine(Exam)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exam)) == (?);
  List_Of_VisibleVar_Ids(Machine(Exam)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exam)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Exam)) == (Type(CANDIDATE) == Cst(SetOf(atype(CANDIDATE,"[CANDIDATE","]CANDIDATE"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exam)) == (Type(marks) == Mvl(SetOf(atype(CANDIDATE,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exam)) == (Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(average) == Cst(btype(INTEGER,?,?),No_type);Type(enter) == Cst(No_type,atype(CANDIDATE,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Exam)) == (Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(average) == Cst(btype(INTEGER,?,?),No_type))
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
