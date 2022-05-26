Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(sport_non_determinism))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(sport_non_determinism))==(Machine(sport_non_determinism));
  Level(Machine(sport_non_determinism))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(sport_non_determinism)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(sport_non_determinism))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(sport_non_determinism))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(sport_non_determinism))==(?);
  List_Includes(Machine(sport_non_determinism))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(sport_non_determinism))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(sport_non_determinism))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(sport_non_determinism))==(?);
  Context_List_Variables(Machine(sport_non_determinism))==(?);
  Abstract_List_Variables(Machine(sport_non_determinism))==(?);
  Local_List_Variables(Machine(sport_non_determinism))==(squash_p,croquet_p,tennis_p,members);
  List_Variables(Machine(sport_non_determinism))==(squash_p,croquet_p,tennis_p,members);
  External_List_Variables(Machine(sport_non_determinism))==(squash_p,croquet_p,tennis_p,members)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(sport_non_determinism))==(?);
  Abstract_List_VisibleVariables(Machine(sport_non_determinism))==(?);
  External_List_VisibleVariables(Machine(sport_non_determinism))==(?);
  Expanded_List_VisibleVariables(Machine(sport_non_determinism))==(?);
  List_VisibleVariables(Machine(sport_non_determinism))==(?);
  Internal_List_VisibleVariables(Machine(sport_non_determinism))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(sport_non_determinism))==(btrue);
  Gluing_List_Invariant(Machine(sport_non_determinism))==(btrue);
  Expanded_List_Invariant(Machine(sport_non_determinism))==(btrue);
  Abstract_List_Invariant(Machine(sport_non_determinism))==(btrue);
  Context_List_Invariant(Machine(sport_non_determinism))==(btrue);
  List_Invariant(Machine(sport_non_determinism))==(members <: NAME & tennis_p <: members & croquet_p <: members & squash_p <: members)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(sport_non_determinism))==(btrue);
  Abstract_List_Assertions(Machine(sport_non_determinism))==(btrue);
  Context_List_Assertions(Machine(sport_non_determinism))==(btrue);
  List_Assertions(Machine(sport_non_determinism))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(sport_non_determinism))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(sport_non_determinism))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(sport_non_determinism))==(members,tennis_p,croquet_p,squash_p:={},{},{},{});
  Context_List_Initialisation(Machine(sport_non_determinism))==(skip);
  List_Initialisation(Machine(sport_non_determinism))==(members,tennis_p,croquet_p,squash_p:={},{},{},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(sport_non_determinism))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(sport_non_determinism))==(btrue);
  List_Constraints(Machine(sport_non_determinism))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(sport_non_determinism))==(add_member,add_sport,sports);
  List_Operations(Machine(sport_non_determinism))==(add_member,add_sport,sports)
END
&
THEORY ListInputX IS
  List_Input(Machine(sport_non_determinism),add_member)==(mm);
  List_Input(Machine(sport_non_determinism),add_sport)==(mm,ss);
  List_Input(Machine(sport_non_determinism),sports)==(mm)
END
&
THEORY ListOutputX IS
  List_Output(Machine(sport_non_determinism),add_member)==(?);
  List_Output(Machine(sport_non_determinism),add_sport)==(?);
  List_Output(Machine(sport_non_determinism),sports)==(rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(sport_non_determinism),add_member)==(add_member(mm));
  List_Header(Machine(sport_non_determinism),add_sport)==(add_sport(mm,ss));
  List_Header(Machine(sport_non_determinism),sports)==(rr <-- sports(mm))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(sport_non_determinism),add_member)==(mm: NAME);
  List_Precondition(Machine(sport_non_determinism),add_sport)==(mm: members & ss: STATUS);
  List_Precondition(Machine(sport_non_determinism),sports)==(mm: members)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(sport_non_determinism),sports)==(mm: members | mm: tennis_p ==> rr:=tennis [] mm: croquet_p ==> rr:=croquet [] mm: squash_p ==> rr:=squash [] not(mm: tennis_p) & not(mm: croquet_p) & not(mm: squash_p) ==> rr:=none);
  Expanded_List_Substitution(Machine(sport_non_determinism),add_sport)==(mm: members & ss: STATUS | not(ss = squash) & not(ss = croquet) & ss = tennis ==> tennis_p:=tennis_p\/{mm} [] not(ss = tennis) & not(ss = squash) & ss = croquet ==> croquet_p:=croquet_p\/{mm} [] not(ss = tennis) & not(ss = croquet) & ss = squash ==> squash_p:=squash_p\/{mm} [] not(ss = tennis) & not(ss = croquet) & not(ss = squash) ==> skip);
  Expanded_List_Substitution(Machine(sport_non_determinism),add_member)==(mm: NAME | members:=members\/{mm});
  List_Substitution(Machine(sport_non_determinism),add_member)==(members:=members\/{mm});
  List_Substitution(Machine(sport_non_determinism),add_sport)==(CASE ss OF EITHER tennis THEN tennis_p:=tennis_p\/{mm} OR croquet THEN croquet_p:=croquet_p\/{mm} OR squash THEN squash_p:=squash_p\/{mm} ELSE skip END END);
  List_Substitution(Machine(sport_non_determinism),sports)==(SELECT mm: tennis_p THEN rr:=tennis WHEN mm: croquet_p THEN rr:=croquet WHEN mm: squash_p THEN rr:=squash ELSE rr:=none END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(sport_non_determinism))==(?);
  Inherited_List_Constants(Machine(sport_non_determinism))==(?);
  List_Constants(Machine(sport_non_determinism))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(sport_non_determinism),NAME)==(?);
  Context_List_Enumerated(Machine(sport_non_determinism))==(?);
  Context_List_Defered(Machine(sport_non_determinism))==(?);
  Context_List_Sets(Machine(sport_non_determinism))==(?);
  List_Valuable_Sets(Machine(sport_non_determinism))==(NAME);
  Inherited_List_Enumerated(Machine(sport_non_determinism))==(?);
  Inherited_List_Defered(Machine(sport_non_determinism))==(?);
  Inherited_List_Sets(Machine(sport_non_determinism))==(?);
  List_Enumerated(Machine(sport_non_determinism))==(STATUS);
  List_Defered(Machine(sport_non_determinism))==(NAME);
  List_Sets(Machine(sport_non_determinism))==(NAME,STATUS);
  Set_Definition(Machine(sport_non_determinism),STATUS)==({tennis,croquet,squash,none})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(sport_non_determinism))==(?);
  Expanded_List_HiddenConstants(Machine(sport_non_determinism))==(?);
  List_HiddenConstants(Machine(sport_non_determinism))==(?);
  External_List_HiddenConstants(Machine(sport_non_determinism))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(sport_non_determinism))==(btrue);
  Context_List_Properties(Machine(sport_non_determinism))==(btrue);
  Inherited_List_Properties(Machine(sport_non_determinism))==(btrue);
  List_Properties(Machine(sport_non_determinism))==(NAME: FIN(INTEGER) & not(NAME = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(sport_non_determinism),add_member)==(?);
  List_ANY_Var(Machine(sport_non_determinism),add_sport)==(?);
  List_ANY_Var(Machine(sport_non_determinism),sports)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(sport_non_determinism)) == (NAME,STATUS,tennis,croquet,squash,none | ? | squash_p,croquet_p,tennis_p,members | ? | add_member,add_sport,sports | ? | ? | ? | sport_non_determinism);
  List_Of_HiddenCst_Ids(Machine(sport_non_determinism)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(sport_non_determinism)) == (?);
  List_Of_VisibleVar_Ids(Machine(sport_non_determinism)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(sport_non_determinism)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(sport_non_determinism)) == (Type(NAME) == Cst(SetOf(atype(NAME,"[NAME","]NAME")));Type(STATUS) == Cst(SetOf(etype(STATUS,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(sport_non_determinism)) == (Type(tennis) == Cst(etype(STATUS,0,3));Type(croquet) == Cst(etype(STATUS,0,3));Type(squash) == Cst(etype(STATUS,0,3));Type(none) == Cst(etype(STATUS,0,3)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(sport_non_determinism)) == (Type(squash_p) == Mvl(SetOf(atype(NAME,?,?)));Type(croquet_p) == Mvl(SetOf(atype(NAME,?,?)));Type(tennis_p) == Mvl(SetOf(atype(NAME,?,?)));Type(members) == Mvl(SetOf(atype(NAME,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(sport_non_determinism)) == (Type(sports) == Cst(etype(STATUS,?,?),atype(NAME,?,?));Type(add_sport) == Cst(No_type,atype(NAME,?,?)*etype(STATUS,?,?));Type(add_member) == Cst(No_type,atype(NAME,?,?)));
  Observers(Machine(sport_non_determinism)) == (Type(sports) == Cst(etype(STATUS,?,?),atype(NAME,?,?)))
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
