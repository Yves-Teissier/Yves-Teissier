Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MultRussian))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MultRussian))==(Machine(MultRussian));
  Level(Machine(MultRussian))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MultRussian)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MultRussian))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MultRussian))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MultRussian))==(?);
  List_Includes(Machine(MultRussian))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MultRussian))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MultRussian))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MultRussian))==(?);
  Context_List_Variables(Machine(MultRussian))==(?);
  Abstract_List_Variables(Machine(MultRussian))==(?);
  Local_List_Variables(Machine(MultRussian))==(?);
  List_Variables(Machine(MultRussian))==(?);
  External_List_Variables(Machine(MultRussian))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MultRussian))==(?);
  Abstract_List_VisibleVariables(Machine(MultRussian))==(?);
  External_List_VisibleVariables(Machine(MultRussian))==(?);
  Expanded_List_VisibleVariables(Machine(MultRussian))==(?);
  List_VisibleVariables(Machine(MultRussian))==(?);
  Internal_List_VisibleVariables(Machine(MultRussian))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MultRussian))==(btrue);
  Gluing_List_Invariant(Machine(MultRussian))==(btrue);
  Expanded_List_Invariant(Machine(MultRussian))==(btrue);
  Abstract_List_Invariant(Machine(MultRussian))==(btrue);
  Context_List_Invariant(Machine(MultRussian))==(btrue);
  List_Invariant(Machine(MultRussian))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MultRussian))==(btrue);
  Abstract_List_Assertions(Machine(MultRussian))==(btrue);
  Context_List_Assertions(Machine(MultRussian))==(btrue);
  List_Assertions(Machine(MultRussian))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MultRussian))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MultRussian))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MultRussian))==(skip);
  Context_List_Initialisation(Machine(MultRussian))==(skip);
  List_Initialisation(Machine(MultRussian))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MultRussian))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MultRussian))==(btrue);
  List_Constraints(Machine(MultRussian))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MultRussian))==(Mult);
  List_Operations(Machine(MultRussian))==(Mult)
END
&
THEORY ListInputX IS
  List_Input(Machine(MultRussian),Mult)==(aa,bb)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MultRussian),Mult)==(total)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MultRussian),Mult)==(total <-- Mult(aa,bb))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MultRussian),Mult)==(aa: NAT & bb: NAT & aa*bb: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MultRussian),Mult)==(aa: NAT & bb: NAT & aa*bb: NAT | total:=aa*bb);
  List_Substitution(Machine(MultRussian),Mult)==(total:=aa*bb)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MultRussian))==(?);
  Inherited_List_Constants(Machine(MultRussian))==(?);
  List_Constants(Machine(MultRussian))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MultRussian))==(?);
  Context_List_Defered(Machine(MultRussian))==(?);
  Context_List_Sets(Machine(MultRussian))==(?);
  List_Valuable_Sets(Machine(MultRussian))==(?);
  Inherited_List_Enumerated(Machine(MultRussian))==(?);
  Inherited_List_Defered(Machine(MultRussian))==(?);
  Inherited_List_Sets(Machine(MultRussian))==(?);
  List_Enumerated(Machine(MultRussian))==(?);
  List_Defered(Machine(MultRussian))==(?);
  List_Sets(Machine(MultRussian))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MultRussian))==(?);
  Expanded_List_HiddenConstants(Machine(MultRussian))==(?);
  List_HiddenConstants(Machine(MultRussian))==(?);
  External_List_HiddenConstants(Machine(MultRussian))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MultRussian))==(btrue);
  Context_List_Properties(Machine(MultRussian))==(btrue);
  Inherited_List_Properties(Machine(MultRussian))==(btrue);
  List_Properties(Machine(MultRussian))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MultRussian),Mult)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MultRussian)) == (? | ? | ? | ? | Mult | ? | ? | ? | MultRussian);
  List_Of_HiddenCst_Ids(Machine(MultRussian)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MultRussian)) == (?);
  List_Of_VisibleVar_Ids(Machine(MultRussian)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MultRussian)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MultRussian)) == (Type(Mult) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(MultRussian)) == (Type(Mult) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
