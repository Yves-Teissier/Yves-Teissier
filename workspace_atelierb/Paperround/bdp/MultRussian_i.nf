Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(MultRussian_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(MultRussian_i))==(Machine(MultRussian));
  Level(Implementation(MultRussian_i))==(1);
  Upper_Level(Implementation(MultRussian_i))==(Machine(MultRussian))
END
&
THEORY LoadedStructureX IS
  Implementation(MultRussian_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(MultRussian_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(MultRussian_i))==(?);
  Inherited_List_Includes(Implementation(MultRussian_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(MultRussian_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(MultRussian_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(MultRussian_i))==(?);
  Context_List_Variables(Implementation(MultRussian_i))==(?);
  Abstract_List_Variables(Implementation(MultRussian_i))==(?);
  Local_List_Variables(Implementation(MultRussian_i))==(?);
  List_Variables(Implementation(MultRussian_i))==(?);
  External_List_Variables(Implementation(MultRussian_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(MultRussian_i))==(?);
  Abstract_List_VisibleVariables(Implementation(MultRussian_i))==(?);
  External_List_VisibleVariables(Implementation(MultRussian_i))==(?);
  Expanded_List_VisibleVariables(Implementation(MultRussian_i))==(?);
  List_VisibleVariables(Implementation(MultRussian_i))==(?);
  Internal_List_VisibleVariables(Implementation(MultRussian_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(MultRussian_i))==(btrue);
  Expanded_List_Invariant(Implementation(MultRussian_i))==(btrue);
  Abstract_List_Invariant(Implementation(MultRussian_i))==(btrue);
  Context_List_Invariant(Implementation(MultRussian_i))==(btrue);
  List_Invariant(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(MultRussian_i))==(btrue);
  Abstract_List_Assertions(Implementation(MultRussian_i))==(btrue);
  Context_List_Assertions(Implementation(MultRussian_i))==(btrue);
  List_Assertions(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(MultRussian_i))==(skip);
  Context_List_Initialisation(Implementation(MultRussian_i))==(skip);
  List_Initialisation(Implementation(MultRussian_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(MultRussian_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(MultRussian_i))==(btrue);
  List_Context_Constraints(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(MultRussian_i))==(Mult);
  List_Operations(Implementation(MultRussian_i))==(Mult)
END
&
THEORY ListInputX IS
  List_Input(Implementation(MultRussian_i),Mult)==(aa,bb)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(MultRussian_i),Mult)==(total)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(MultRussian_i),Mult)==(total <-- Mult(aa,bb))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(MultRussian_i),Mult)==(btrue);
  List_Precondition(Implementation(MultRussian_i),Mult)==(aa: NAT & bb: NAT & aa*bb: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(MultRussian_i),Mult)==(aa: NAT & bb: NAT & aa*bb: NAT | @(xx,yy).(xx:=aa;yy:=bb;total:=0;WHILE xx/=0 DO @rest.(rest:=xx mod 2;(rest = 1 ==> total:=total+yy [] not(rest = 1) ==> skip));xx:=xx/2;yy:=yy*2 INVARIANT xx: NAT & total+xx*yy = aa*bb VARIANT xx END));
  List_Substitution(Implementation(MultRussian_i),Mult)==(VAR xx,yy IN xx:=aa;yy:=bb;total:=0;WHILE xx/=0 DO VAR rest IN rest:=xx mod 2;IF rest = 1 THEN total:=total+yy END END;xx:=xx/2;yy:=yy*2 INVARIANT xx: NAT & total+xx*yy = aa*bb VARIANT xx END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(MultRussian_i))==(?);
  Inherited_List_Constants(Implementation(MultRussian_i))==(?);
  List_Constants(Implementation(MultRussian_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(MultRussian_i))==(?);
  Context_List_Defered(Implementation(MultRussian_i))==(?);
  Context_List_Sets(Implementation(MultRussian_i))==(?);
  List_Own_Enumerated(Implementation(MultRussian_i))==(?);
  List_Valuable_Sets(Implementation(MultRussian_i))==(?);
  Inherited_List_Enumerated(Implementation(MultRussian_i))==(?);
  Inherited_List_Defered(Implementation(MultRussian_i))==(?);
  Inherited_List_Sets(Implementation(MultRussian_i))==(?);
  List_Enumerated(Implementation(MultRussian_i))==(?);
  List_Defered(Implementation(MultRussian_i))==(?);
  List_Sets(Implementation(MultRussian_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(MultRussian_i))==(?);
  Expanded_List_HiddenConstants(Implementation(MultRussian_i))==(?);
  List_HiddenConstants(Implementation(MultRussian_i))==(?);
  External_List_HiddenConstants(Implementation(MultRussian_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(MultRussian_i))==(btrue);
  Context_List_Properties(Implementation(MultRussian_i))==(btrue);
  Inherited_List_Properties(Implementation(MultRussian_i))==(btrue);
  List_Properties(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(MultRussian_i))==(aa: aa);
  List_Values(Implementation(MultRussian_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(MultRussian_i))==(Type(Mult) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(MultRussian_i)) == (? | ? | ? | ? | Mult | ? | ? | ? | MultRussian_i);
  List_Of_HiddenCst_Ids(Implementation(MultRussian_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(MultRussian_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(MultRussian_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(MultRussian_i)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(MultRussian_i),Mult, 2) == (Type(rest) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(MultRussian_i),Mult, 1) == (Type(xx) == Lvl(btype(INTEGER,?,?));Type(yy) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(MultRussian_i))==(?)
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
  TypingPredicate(Implementation(MultRussian_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
