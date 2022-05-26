Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Allocate_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Allocate_r))==(Machine(Allocate));
  Level(Refinement(Allocate_r))==(1);
  Upper_Level(Refinement(Allocate_r))==(Machine(Allocate))
END
&
THEORY LoadedStructureX IS
  Refinement(Allocate_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Allocate_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Allocate_r))==(?);
  List_Includes(Refinement(Allocate_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Allocate_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Allocate_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Allocate_r))==(?);
  Context_List_Variables(Refinement(Allocate_r))==(?);
  Abstract_List_Variables(Refinement(Allocate_r))==(allocated);
  Local_List_Variables(Refinement(Allocate_r))==(allocated);
  List_Variables(Refinement(Allocate_r))==(allocated);
  External_List_Variables(Refinement(Allocate_r))==(allocated)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Allocate_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Allocate_r))==(?);
  External_List_VisibleVariables(Refinement(Allocate_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Allocate_r))==(?);
  List_VisibleVariables(Refinement(Allocate_r))==(?);
  Internal_List_VisibleVariables(Refinement(Allocate_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Allocate_r))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Allocate_r))==(btrue);
  Expanded_List_Invariant(Refinement(Allocate_r))==(btrue);
  Abstract_List_Invariant(Refinement(Allocate_r))==(allocated <: 1..100);
  Context_List_Invariant(Refinement(Allocate_r))==(btrue);
  List_Invariant(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Allocate_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Allocate_r))==(btrue);
  Abstract_List_Assertions(Refinement(Allocate_r))==(btrue);
  Context_List_Assertions(Refinement(Allocate_r))==(btrue);
  List_Assertions(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Allocate_r))==(allocated:={});
  Context_List_Initialisation(Refinement(Allocate_r))==(skip);
  List_Initialisation(Refinement(Allocate_r))==(allocated:={})
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Allocate_r))==(choose,query,allocate);
  List_Operations(Refinement(Allocate_r))==(choose,query,allocate)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Allocate_r),choose)==(nn);
  List_Input(Refinement(Allocate_r),query)==(nn);
  List_Input(Refinement(Allocate_r),allocate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Allocate_r),choose)==(?);
  List_Output(Refinement(Allocate_r),query)==(aa);
  List_Output(Refinement(Allocate_r),allocate)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Allocate_r),choose)==(choose(nn));
  List_Header(Refinement(Allocate_r),query)==(aa <-- query(nn));
  List_Header(Refinement(Allocate_r),allocate)==(nn <-- allocate)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Allocate_r),choose)==(btrue);
  List_Precondition(Refinement(Allocate_r),choose)==(nn: 1..100 & nn/:allocated);
  Own_Precondition(Refinement(Allocate_r),query)==(btrue);
  List_Precondition(Refinement(Allocate_r),query)==(nn: 1..100);
  Own_Precondition(Refinement(Allocate_r),allocate)==(btrue);
  List_Precondition(Refinement(Allocate_r),allocate)==((1..100)-allocated/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Allocate_r),allocate)==((1..100)-allocated/={} | nn:=min((1..100)-allocated);allocated:=allocated\/{nn});
  Expanded_List_Substitution(Refinement(Allocate_r),query)==(nn: 1..100 | nn: allocated ==> aa:=TRUE [] not(nn: allocated) ==> aa:=FALSE);
  Expanded_List_Substitution(Refinement(Allocate_r),choose)==(nn: 1..100 & nn/:allocated | allocated:=allocated\/{nn});
  List_Substitution(Refinement(Allocate_r),choose)==(allocated:=allocated\/{nn});
  List_Substitution(Refinement(Allocate_r),query)==(IF nn: allocated THEN aa:=TRUE ELSE aa:=FALSE END);
  List_Substitution(Refinement(Allocate_r),allocate)==(nn:=min((1..100)-allocated);allocated:=allocated\/{nn})
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Allocate_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Allocate_r))==(btrue);
  List_Context_Constraints(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Allocate_r))==(?);
  Inherited_List_Constants(Refinement(Allocate_r))==(?);
  List_Constants(Refinement(Allocate_r))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Refinement(Allocate_r))==(?);
  Context_List_Defered(Refinement(Allocate_r))==(?);
  Context_List_Sets(Refinement(Allocate_r))==(?);
  List_Valuable_Sets(Refinement(Allocate_r))==(?);
  Inherited_List_Enumerated(Refinement(Allocate_r))==(?);
  Inherited_List_Defered(Refinement(Allocate_r))==(?);
  Inherited_List_Sets(Refinement(Allocate_r))==(?);
  List_Enumerated(Refinement(Allocate_r))==(?);
  List_Defered(Refinement(Allocate_r))==(?);
  List_Sets(Refinement(Allocate_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Allocate_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Allocate_r))==(?);
  List_HiddenConstants(Refinement(Allocate_r))==(?);
  External_List_HiddenConstants(Refinement(Allocate_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Allocate_r))==(btrue);
  Context_List_Properties(Refinement(Allocate_r))==(btrue);
  Inherited_List_Properties(Refinement(Allocate_r))==(btrue);
  List_Properties(Refinement(Allocate_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Allocate_r),choose)==(?);
  List_ANY_Var(Refinement(Allocate_r),query)==(?);
  List_ANY_Var(Refinement(Allocate_r),allocate)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Allocate_r)) == (? | ? | allocated | ? | choose,query,allocate | ? | ? | ? | Allocate_r);
  List_Of_HiddenCst_Ids(Refinement(Allocate_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Allocate_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Allocate_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Allocate_r)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Allocate_r)) == (Type(allocated) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Allocate_r)) == (Type(allocate) == Cst(btype(INTEGER,?,?),No_type);Type(query) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(choose) == Cst(No_type,btype(INTEGER,?,?)))
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
