Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(ExamR))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(ExamR))==(Machine(Exam));
  Level(Refinement(ExamR))==(1);
  Upper_Level(Refinement(ExamR))==(Machine(Exam))
END
&
THEORY LoadedStructureX IS
  Refinement(ExamR)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(ExamR))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(ExamR))==(?);
  List_Includes(Refinement(ExamR))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(ExamR))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(ExamR))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(ExamR))==(?);
  Context_List_Variables(Refinement(ExamR))==(?);
  Abstract_List_Variables(Refinement(ExamR))==(marks);
  Local_List_Variables(Refinement(ExamR))==(candidates,num,total);
  List_Variables(Refinement(ExamR))==(candidates,num,total);
  External_List_Variables(Refinement(ExamR))==(candidates,num,total)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(ExamR))==(?);
  Abstract_List_VisibleVariables(Refinement(ExamR))==(?);
  External_List_VisibleVariables(Refinement(ExamR))==(?);
  Expanded_List_VisibleVariables(Refinement(ExamR))==(?);
  List_VisibleVariables(Refinement(ExamR))==(?);
  Internal_List_VisibleVariables(Refinement(ExamR))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(ExamR))==(candidates,num,total)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(ExamR))==(btrue);
  Expanded_List_Invariant(Refinement(ExamR))==(btrue);
  Abstract_List_Invariant(Refinement(ExamR))==(marks: CANDIDATE +-> 0..100);
  Context_List_Invariant(Refinement(ExamR))==(btrue);
  List_Invariant(Refinement(ExamR))==(total = SIGMA(zz).(zz: dom(marks) | marks(zz)) & num = card(dom(marks)) & candidates = dom(marks))
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(ExamR))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(ExamR))==(btrue);
  Abstract_List_Assertions(Refinement(ExamR))==(btrue);
  Context_List_Assertions(Refinement(ExamR))==(btrue);
  List_Assertions(Refinement(ExamR))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(ExamR))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(ExamR))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(ExamR))==(total:=0;num:=0;candidates:={});
  Context_List_Initialisation(Refinement(ExamR))==(skip);
  List_Initialisation(Refinement(ExamR))==(total:=0;num:=0;candidates:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(ExamR))==(enter,average,number);
  List_Operations(Refinement(ExamR))==(enter,average,number)
END
&
THEORY ListInputX IS
  List_Input(Refinement(ExamR),enter)==(cc,nn);
  List_Input(Refinement(ExamR),average)==(?);
  List_Input(Refinement(ExamR),number)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(ExamR),enter)==(?);
  List_Output(Refinement(ExamR),average)==(aa);
  List_Output(Refinement(ExamR),number)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(ExamR),enter)==(enter(cc,nn));
  List_Header(Refinement(ExamR),average)==(aa <-- average);
  List_Header(Refinement(ExamR),number)==(nn <-- number)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(ExamR),enter)==(btrue);
  List_Precondition(Refinement(ExamR),enter)==(cc: CANDIDATE & cc/:dom(marks) & nn: 0..100);
  Own_Precondition(Refinement(ExamR),average)==(btrue);
  List_Precondition(Refinement(ExamR),average)==(marks/={});
  Own_Precondition(Refinement(ExamR),number)==(btrue);
  List_Precondition(Refinement(ExamR),number)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(ExamR),number)==(btrue | nn:=num);
  Expanded_List_Substitution(Refinement(ExamR),average)==(marks/={} | aa:=total/num);
  Expanded_List_Substitution(Refinement(ExamR),enter)==(cc: CANDIDATE & cc/:dom(marks) & nn: 0..100 | total,num,candidates:=total+nn,num+1,candidates\/{cc});
  List_Substitution(Refinement(ExamR),enter)==(total:=total+nn || num:=num+1 || candidates:=candidates\/{cc});
  List_Substitution(Refinement(ExamR),average)==(aa:=total/num);
  List_Substitution(Refinement(ExamR),number)==(nn:=num)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(ExamR))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(ExamR))==(btrue);
  List_Context_Constraints(Refinement(ExamR))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(ExamR))==(?);
  Inherited_List_Constants(Refinement(ExamR))==(?);
  List_Constants(Refinement(ExamR))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(ExamR),CANDIDATE)==(?);
  Context_List_Enumerated(Refinement(ExamR))==(?);
  Context_List_Defered(Refinement(ExamR))==(?);
  Context_List_Sets(Refinement(ExamR))==(?);
  List_Valuable_Sets(Refinement(ExamR))==(CANDIDATE);
  Inherited_List_Enumerated(Refinement(ExamR))==(?);
  Inherited_List_Defered(Refinement(ExamR))==(CANDIDATE);
  Inherited_List_Sets(Refinement(ExamR))==(CANDIDATE);
  List_Enumerated(Refinement(ExamR))==(?);
  List_Defered(Refinement(ExamR))==(?);
  List_Sets(Refinement(ExamR))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(ExamR))==(?);
  Expanded_List_HiddenConstants(Refinement(ExamR))==(?);
  List_HiddenConstants(Refinement(ExamR))==(?);
  External_List_HiddenConstants(Refinement(ExamR))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(ExamR))==(CANDIDATE: FIN(INTEGER) & not(CANDIDATE = {}));
  Context_List_Properties(Refinement(ExamR))==(btrue);
  Inherited_List_Properties(Refinement(ExamR))==(btrue);
  List_Properties(Refinement(ExamR))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(ExamR),enter)==(?);
  List_ANY_Var(Refinement(ExamR),average)==(?);
  List_ANY_Var(Refinement(ExamR),number)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(ExamR)) == (? | ? | candidates,num,total | ? | enter,average,number | ? | ? | ? | ExamR);
  List_Of_HiddenCst_Ids(Refinement(ExamR)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(ExamR)) == (?);
  List_Of_VisibleVar_Ids(Refinement(ExamR)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(ExamR)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(ExamR)) == (Type(CANDIDATE) == Cst(SetOf(atype(CANDIDATE,"[CANDIDATE","]CANDIDATE"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(ExamR)) == (Type(candidates) == Mvl(SetOf(atype(CANDIDATE,?,?)));Type(num) == Mvl(btype(INTEGER,?,?));Type(total) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(ExamR)) == (Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(average) == Cst(btype(INTEGER,?,?),No_type);Type(enter) == Cst(No_type,atype(CANDIDATE,?,?)*btype(INTEGER,?,?)))
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
