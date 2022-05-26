Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(ArraySearch_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(ArraySearch_i))==(Machine(ArraySearch));
  Level(Implementation(ArraySearch_i))==(1);
  Upper_Level(Implementation(ArraySearch_i))==(Machine(ArraySearch))
END
&
THEORY LoadedStructureX IS
  Implementation(ArraySearch_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(ArraySearch_i))==(?);
  Inherited_List_Includes(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(ArraySearch_i))==(?);
  Context_List_Variables(Implementation(ArraySearch_i))==(?);
  Abstract_List_Variables(Implementation(ArraySearch_i))==(aa);
  Local_List_Variables(Implementation(ArraySearch_i))==(?);
  List_Variables(Implementation(ArraySearch_i))==(?);
  External_List_Variables(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(ArraySearch_i))==(?);
  Abstract_List_VisibleVariables(Implementation(ArraySearch_i))==(?);
  External_List_VisibleVariables(Implementation(ArraySearch_i))==(?);
  Expanded_List_VisibleVariables(Implementation(ArraySearch_i))==(?);
  List_VisibleVariables(Implementation(ArraySearch_i))==(aa);
  Internal_List_VisibleVariables(Implementation(ArraySearch_i))==(aa)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(ArraySearch_i))==(btrue);
  Expanded_List_Invariant(Implementation(ArraySearch_i))==(btrue);
  Abstract_List_Invariant(Implementation(ArraySearch_i))==(aa: 0..MAX --> NAT);
  Context_List_Invariant(Implementation(ArraySearch_i))==(btrue);
  List_Invariant(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(ArraySearch_i))==(btrue);
  Abstract_List_Assertions(Implementation(ArraySearch_i))==(btrue);
  Context_List_Assertions(Implementation(ArraySearch_i))==(btrue);
  List_Assertions(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(ArraySearch_i))==(@ii.(ii:=0;aa:=(0..MAX)*{0};WHILE ii<=MAX DO aa:=aa<+{ii|->ii};ii:=ii+1 INVARIANT aa: 0..MAX --> NAT & !jj.(jj: 0..ii-1 => aa(jj) = jj) & ii: 0..MAX+1 VARIANT MAX+1-ii END));
  Context_List_Initialisation(Implementation(ArraySearch_i))==(skip);
  List_Initialisation(Implementation(ArraySearch_i))==(VAR ii IN ii:=0;aa:=(0..MAX)*{0};WHILE ii<=MAX DO aa(ii):=ii;ii:=ii+1 INVARIANT aa: 0..MAX --> NAT & !jj.(jj: 0..ii-1 => aa(jj) = jj) & ii: 0..MAX+1 VARIANT MAX+1-ii END END)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(ArraySearch_i))==(btrue);
  List_Context_Constraints(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(ArraySearch_i))==(get,add,contains);
  List_Operations(Implementation(ArraySearch_i))==(get,add,contains)
END
&
THEORY ListInputX IS
  List_Input(Implementation(ArraySearch_i),get)==(xx);
  List_Input(Implementation(ArraySearch_i),add)==(ii,xx);
  List_Input(Implementation(ArraySearch_i),contains)==(xx)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(ArraySearch_i),get)==(ee);
  List_Output(Implementation(ArraySearch_i),add)==(?);
  List_Output(Implementation(ArraySearch_i),contains)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(ArraySearch_i),get)==(ee <-- get(xx));
  List_Header(Implementation(ArraySearch_i),add)==(add(ii,xx));
  List_Header(Implementation(ArraySearch_i),contains)==(bb <-- contains(xx))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(ArraySearch_i),get)==(btrue);
  List_Precondition(Implementation(ArraySearch_i),get)==(xx: 0..MAX);
  Own_Precondition(Implementation(ArraySearch_i),add)==(btrue);
  List_Precondition(Implementation(ArraySearch_i),add)==(ii: 0..MAX & xx: NAT);
  Own_Precondition(Implementation(ArraySearch_i),contains)==(btrue);
  List_Precondition(Implementation(ArraySearch_i),contains)==(xx: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(ArraySearch_i),contains)==(xx: NAT | @(rr,ii).(rr:=FALSE;ii:=0;WHILE ii<=MAX & rr = FALSE DO @ee.(ee:=aa(ii);ii:=ii+1;(ee = xx ==> rr:=TRUE [] not(ee = xx) ==> skip)) INVARIANT rr = bool(xx: ran(0..ii-1<|aa)) & ii: 0..MAX+1 VARIANT MAX+1-ii END;bb:=rr));
  Expanded_List_Substitution(Implementation(ArraySearch_i),add)==(ii: 0..MAX & xx: NAT | aa:=aa<+{ii|->xx});
  Expanded_List_Substitution(Implementation(ArraySearch_i),get)==(xx: 0..MAX | ee:=aa(xx));
  List_Substitution(Implementation(ArraySearch_i),get)==(ee:=aa(xx));
  List_Substitution(Implementation(ArraySearch_i),add)==(aa(ii):=xx);
  List_Substitution(Implementation(ArraySearch_i),contains)==(VAR rr,ii IN rr:=FALSE;ii:=0;WHILE ii<=MAX & rr = FALSE DO VAR ee IN ee:=aa(ii);ii:=ii+1;IF ee = xx THEN rr:=TRUE END END INVARIANT rr = bool(xx: ran(0..ii-1<|aa)) & ii: 0..MAX+1 VARIANT MAX+1-ii END;bb:=rr END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(ArraySearch_i))==(MAX);
  Inherited_List_Constants(Implementation(ArraySearch_i))==(MAX);
  List_Constants(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(ArraySearch_i))==(?);
  Context_List_Defered(Implementation(ArraySearch_i))==(?);
  Context_List_Sets(Implementation(ArraySearch_i))==(?);
  List_Own_Enumerated(Implementation(ArraySearch_i))==(?);
  List_Valuable_Sets(Implementation(ArraySearch_i))==(?);
  Inherited_List_Enumerated(Implementation(ArraySearch_i))==(?);
  Inherited_List_Defered(Implementation(ArraySearch_i))==(?);
  Inherited_List_Sets(Implementation(ArraySearch_i))==(?);
  List_Enumerated(Implementation(ArraySearch_i))==(?);
  List_Defered(Implementation(ArraySearch_i))==(?);
  List_Sets(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(ArraySearch_i))==(?);
  Expanded_List_HiddenConstants(Implementation(ArraySearch_i))==(?);
  List_HiddenConstants(Implementation(ArraySearch_i))==(?);
  External_List_HiddenConstants(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(ArraySearch_i))==(MAX: NAT);
  Context_List_Properties(Implementation(ArraySearch_i))==(btrue);
  Inherited_List_Properties(Implementation(ArraySearch_i))==(btrue);
  List_Properties(Implementation(ArraySearch_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(ArraySearch_i))==(btrue);
  Values_Subs(Implementation(ArraySearch_i))==(MAX: 9);
  List_Values(Implementation(ArraySearch_i))==(MAX = 9)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(ArraySearch_i))==(Type(aa) == Mvv(SetOf(btype(INTEGER,0,MAX)*btype(INTEGER,0,MAXINT))));
  Operations(Implementation(ArraySearch_i))==(Type(contains) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(add) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(get) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Constants(Implementation(ArraySearch_i))==(Type(MAX) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(ArraySearch_i)) == (? | ? | ? | ? | get,add,contains | ? | ? | ? | ArraySearch_i);
  List_Of_HiddenCst_Ids(Implementation(ArraySearch_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(ArraySearch_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(ArraySearch_i)) == (aa | ?);
  List_Of_Ids_SeenBNU(Implementation(ArraySearch_i)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(ArraySearch_i)) == (Type(MAX) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(ArraySearch_i)) == (Type(aa) == Mvv(SetOf(btype(INTEGER,0,MAX)*btype(INTEGER,0,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(ArraySearch_i),?, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(ArraySearch_i),contains, 2) == (Type(ee) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(ArraySearch_i),contains, 1) == (Type(rr) == Lvl(btype(BOOL,?,?));Type(ii) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == KO;
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(ArraySearch_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(ArraySearch_i))==(aa: POW(INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
