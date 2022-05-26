Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(TabInit_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(TabInit_i))==(Machine(TabInit));
  Level(Implementation(TabInit_i))==(1);
  Upper_Level(Implementation(TabInit_i))==(Machine(TabInit))
END
&
THEORY LoadedStructureX IS
  Implementation(TabInit_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(TabInit_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(TabInit_i))==(?);
  Inherited_List_Includes(Implementation(TabInit_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(TabInit_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(TabInit_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(TabInit_i))==(?);
  Context_List_Variables(Implementation(TabInit_i))==(?);
  Abstract_List_Variables(Implementation(TabInit_i))==(tab);
  Local_List_Variables(Implementation(TabInit_i))==(?);
  List_Variables(Implementation(TabInit_i))==(?);
  External_List_Variables(Implementation(TabInit_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(TabInit_i))==(?);
  Abstract_List_VisibleVariables(Implementation(TabInit_i))==(?);
  External_List_VisibleVariables(Implementation(TabInit_i))==(?);
  Expanded_List_VisibleVariables(Implementation(TabInit_i))==(?);
  List_VisibleVariables(Implementation(TabInit_i))==(tab);
  Internal_List_VisibleVariables(Implementation(TabInit_i))==(tab)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(TabInit_i))==(btrue);
  Expanded_List_Invariant(Implementation(TabInit_i))==(btrue);
  Abstract_List_Invariant(Implementation(TabInit_i))==(tab: 0..9 --> NAT);
  Context_List_Invariant(Implementation(TabInit_i))==(btrue);
  List_Invariant(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(TabInit_i))==(btrue);
  Abstract_List_Assertions(Implementation(TabInit_i))==(btrue);
  Context_List_Assertions(Implementation(TabInit_i))==(btrue);
  List_Assertions(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(TabInit_i))==(tab:=(0..9)*{0});
  Context_List_Initialisation(Implementation(TabInit_i))==(skip);
  List_Initialisation(Implementation(TabInit_i))==(tab:=(0..9)*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(TabInit_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(TabInit_i))==(btrue);
  List_Context_Constraints(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(TabInit_i))==(op);
  List_Operations(Implementation(TabInit_i))==(op)
END
&
THEORY ListInputX IS
  List_Input(Implementation(TabInit_i),op)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(TabInit_i),op)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(TabInit_i),op)==(op)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(TabInit_i),op)==(btrue);
  List_Precondition(Implementation(TabInit_i),op)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(TabInit_i),op)==(btrue | @ii.(ii:=0;WHILE ii<=9 DO tab:=tab<+{ii|->1};ii:=ii+1 INVARIANT tab: 0..9 --> NAT & ii: 0..10 & !xx.(xx: 0..ii-1 => tab(xx) = 1) VARIANT 10-ii END));
  List_Substitution(Implementation(TabInit_i),op)==(VAR ii IN ii:=0;WHILE ii<=9 DO tab(ii):=1;ii:=ii+1 INVARIANT tab: 0..9 --> NAT & ii: 0..10 & !xx.(xx: 0..ii-1 => tab(xx) = 1) VARIANT 10-ii END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(TabInit_i))==(?);
  Inherited_List_Constants(Implementation(TabInit_i))==(?);
  List_Constants(Implementation(TabInit_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(TabInit_i))==(?);
  Context_List_Defered(Implementation(TabInit_i))==(?);
  Context_List_Sets(Implementation(TabInit_i))==(?);
  List_Own_Enumerated(Implementation(TabInit_i))==(?);
  List_Valuable_Sets(Implementation(TabInit_i))==(?);
  Inherited_List_Enumerated(Implementation(TabInit_i))==(?);
  Inherited_List_Defered(Implementation(TabInit_i))==(?);
  Inherited_List_Sets(Implementation(TabInit_i))==(?);
  List_Enumerated(Implementation(TabInit_i))==(?);
  List_Defered(Implementation(TabInit_i))==(?);
  List_Sets(Implementation(TabInit_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(TabInit_i))==(?);
  Expanded_List_HiddenConstants(Implementation(TabInit_i))==(?);
  List_HiddenConstants(Implementation(TabInit_i))==(?);
  External_List_HiddenConstants(Implementation(TabInit_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(TabInit_i))==(btrue);
  Context_List_Properties(Implementation(TabInit_i))==(btrue);
  Inherited_List_Properties(Implementation(TabInit_i))==(btrue);
  List_Properties(Implementation(TabInit_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(TabInit_i))==(aa: aa);
  List_Values(Implementation(TabInit_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(TabInit_i))==(Type(tab) == Mvv(SetOf(btype(INTEGER,0,9)*btype(INTEGER,0,MAXINT))));
  Operations(Implementation(TabInit_i))==(Type(op) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(TabInit_i)) == (? | ? | ? | ? | op | ? | ? | ? | TabInit_i);
  List_Of_HiddenCst_Ids(Implementation(TabInit_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(TabInit_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(TabInit_i)) == (tab | ?);
  List_Of_Ids_SeenBNU(Implementation(TabInit_i)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(TabInit_i)) == (Type(tab) == Mvv(SetOf(btype(INTEGER,0,9)*btype(INTEGER,0,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(TabInit_i),op, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(TabInit_i))==(?)
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
  TypingPredicate(Implementation(TabInit_i))==(tab: POW(INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
