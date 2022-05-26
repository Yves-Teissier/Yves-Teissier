Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(ArraySearch))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(ArraySearch))==(Machine(ArraySearch));
  Level(Machine(ArraySearch))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(ArraySearch)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(ArraySearch))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(ArraySearch))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(ArraySearch))==(?);
  List_Includes(Machine(ArraySearch))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(ArraySearch))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(ArraySearch))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(ArraySearch))==(?);
  Context_List_Variables(Machine(ArraySearch))==(?);
  Abstract_List_Variables(Machine(ArraySearch))==(?);
  Local_List_Variables(Machine(ArraySearch))==(aa);
  List_Variables(Machine(ArraySearch))==(aa);
  External_List_Variables(Machine(ArraySearch))==(aa)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(ArraySearch))==(?);
  Abstract_List_VisibleVariables(Machine(ArraySearch))==(?);
  External_List_VisibleVariables(Machine(ArraySearch))==(?);
  Expanded_List_VisibleVariables(Machine(ArraySearch))==(?);
  List_VisibleVariables(Machine(ArraySearch))==(?);
  Internal_List_VisibleVariables(Machine(ArraySearch))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(ArraySearch))==(btrue);
  Gluing_List_Invariant(Machine(ArraySearch))==(btrue);
  Expanded_List_Invariant(Machine(ArraySearch))==(btrue);
  Abstract_List_Invariant(Machine(ArraySearch))==(btrue);
  Context_List_Invariant(Machine(ArraySearch))==(btrue);
  List_Invariant(Machine(ArraySearch))==(aa: 0..MAX --> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(ArraySearch))==(btrue);
  Abstract_List_Assertions(Machine(ArraySearch))==(btrue);
  Context_List_Assertions(Machine(ArraySearch))==(btrue);
  List_Assertions(Machine(ArraySearch))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(ArraySearch))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(ArraySearch))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(ArraySearch))==(aa:=%ii.(ii: 0..MAX | ii));
  Context_List_Initialisation(Machine(ArraySearch))==(skip);
  List_Initialisation(Machine(ArraySearch))==(aa:=%ii.(ii: 0..MAX | ii))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(ArraySearch))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(ArraySearch))==(btrue);
  List_Constraints(Machine(ArraySearch))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(ArraySearch))==(get,add,contains);
  List_Operations(Machine(ArraySearch))==(get,add,contains)
END
&
THEORY ListInputX IS
  List_Input(Machine(ArraySearch),get)==(xx);
  List_Input(Machine(ArraySearch),add)==(ii,xx);
  List_Input(Machine(ArraySearch),contains)==(xx)
END
&
THEORY ListOutputX IS
  List_Output(Machine(ArraySearch),get)==(ee);
  List_Output(Machine(ArraySearch),add)==(?);
  List_Output(Machine(ArraySearch),contains)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(ArraySearch),get)==(ee <-- get(xx));
  List_Header(Machine(ArraySearch),add)==(add(ii,xx));
  List_Header(Machine(ArraySearch),contains)==(bb <-- contains(xx))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(ArraySearch),get)==(xx: 0..MAX);
  List_Precondition(Machine(ArraySearch),add)==(ii: 0..MAX & xx: NAT);
  List_Precondition(Machine(ArraySearch),contains)==(xx: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(ArraySearch),contains)==(xx: NAT | bb:=bool(xx: ran(aa)));
  Expanded_List_Substitution(Machine(ArraySearch),add)==(ii: 0..MAX & xx: NAT | aa:=aa<+{ii|->xx});
  Expanded_List_Substitution(Machine(ArraySearch),get)==(xx: 0..MAX | ee:=aa(xx));
  List_Substitution(Machine(ArraySearch),get)==(ee:=aa(xx));
  List_Substitution(Machine(ArraySearch),add)==(aa(ii):=xx);
  List_Substitution(Machine(ArraySearch),contains)==(bb:=bool(xx: ran(aa)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(ArraySearch))==(MAX);
  Inherited_List_Constants(Machine(ArraySearch))==(?);
  List_Constants(Machine(ArraySearch))==(MAX)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(ArraySearch))==(?);
  Context_List_Defered(Machine(ArraySearch))==(?);
  Context_List_Sets(Machine(ArraySearch))==(?);
  List_Valuable_Sets(Machine(ArraySearch))==(?);
  Inherited_List_Enumerated(Machine(ArraySearch))==(?);
  Inherited_List_Defered(Machine(ArraySearch))==(?);
  Inherited_List_Sets(Machine(ArraySearch))==(?);
  List_Enumerated(Machine(ArraySearch))==(?);
  List_Defered(Machine(ArraySearch))==(?);
  List_Sets(Machine(ArraySearch))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(ArraySearch))==(?);
  Expanded_List_HiddenConstants(Machine(ArraySearch))==(?);
  List_HiddenConstants(Machine(ArraySearch))==(?);
  External_List_HiddenConstants(Machine(ArraySearch))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(ArraySearch))==(btrue);
  Context_List_Properties(Machine(ArraySearch))==(btrue);
  Inherited_List_Properties(Machine(ArraySearch))==(btrue);
  List_Properties(Machine(ArraySearch))==(MAX: NAT)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(ArraySearch),get)==(?);
  List_ANY_Var(Machine(ArraySearch),add)==(?);
  List_ANY_Var(Machine(ArraySearch),contains)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(ArraySearch)) == (MAX | ? | aa | ? | get,add,contains | ? | ? | ? | ArraySearch);
  List_Of_HiddenCst_Ids(Machine(ArraySearch)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ArraySearch)) == (MAX);
  List_Of_VisibleVar_Ids(Machine(ArraySearch)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ArraySearch)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(ArraySearch)) == (Type(MAX) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(ArraySearch)) == (Type(aa) == Mvl(SetOf(btype(INTEGER,0,MAX)*btype(INTEGER,0,MAXINT))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(ArraySearch)) == (Type(contains) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(add) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(get) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(ArraySearch)) == (Type(contains) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(get) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
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
)
