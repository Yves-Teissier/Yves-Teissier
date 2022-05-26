Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Allocate))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Allocate))==(Machine(Allocate));
  Level(Machine(Allocate))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Allocate)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Allocate))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Allocate))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Allocate))==(?);
  List_Includes(Machine(Allocate))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Allocate))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Allocate))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Allocate))==(?);
  Context_List_Variables(Machine(Allocate))==(?);
  Abstract_List_Variables(Machine(Allocate))==(?);
  Local_List_Variables(Machine(Allocate))==(allocated);
  List_Variables(Machine(Allocate))==(allocated);
  External_List_Variables(Machine(Allocate))==(allocated)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Allocate))==(?);
  Abstract_List_VisibleVariables(Machine(Allocate))==(?);
  External_List_VisibleVariables(Machine(Allocate))==(?);
  Expanded_List_VisibleVariables(Machine(Allocate))==(?);
  List_VisibleVariables(Machine(Allocate))==(?);
  Internal_List_VisibleVariables(Machine(Allocate))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Allocate))==(btrue);
  Gluing_List_Invariant(Machine(Allocate))==(btrue);
  Expanded_List_Invariant(Machine(Allocate))==(btrue);
  Abstract_List_Invariant(Machine(Allocate))==(btrue);
  Context_List_Invariant(Machine(Allocate))==(btrue);
  List_Invariant(Machine(Allocate))==(allocated <: 1..100)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Allocate))==(btrue);
  Abstract_List_Assertions(Machine(Allocate))==(btrue);
  Context_List_Assertions(Machine(Allocate))==(btrue);
  List_Assertions(Machine(Allocate))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Allocate))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Allocate))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Allocate))==(allocated:={});
  Context_List_Initialisation(Machine(Allocate))==(skip);
  List_Initialisation(Machine(Allocate))==(allocated:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Allocate))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Allocate))==(btrue);
  List_Constraints(Machine(Allocate))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Allocate))==(choose,query,allocate);
  List_Operations(Machine(Allocate))==(choose,query,allocate)
END
&
THEORY ListInputX IS
  List_Input(Machine(Allocate),choose)==(nn);
  List_Input(Machine(Allocate),query)==(nn);
  List_Input(Machine(Allocate),allocate)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Allocate),choose)==(?);
  List_Output(Machine(Allocate),query)==(aa);
  List_Output(Machine(Allocate),allocate)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Allocate),choose)==(choose(nn));
  List_Header(Machine(Allocate),query)==(aa <-- query(nn));
  List_Header(Machine(Allocate),allocate)==(nn <-- allocate)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Allocate),choose)==(nn: 1..100 & nn/:allocated);
  List_Precondition(Machine(Allocate),query)==(nn: 1..100);
  List_Precondition(Machine(Allocate),allocate)==((1..100)-allocated/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Allocate),allocate)==((1..100)-allocated/={} | @mm.(mm: (1..100)-allocated ==> nn,allocated:=mm,allocated\/{mm}));
  Expanded_List_Substitution(Machine(Allocate),query)==(nn: 1..100 | nn: allocated ==> aa:=TRUE [] not(nn: allocated) ==> aa:=FALSE);
  Expanded_List_Substitution(Machine(Allocate),choose)==(nn: 1..100 & nn/:allocated | allocated:=allocated\/{nn});
  List_Substitution(Machine(Allocate),choose)==(allocated:=allocated\/{nn});
  List_Substitution(Machine(Allocate),query)==(IF nn: allocated THEN aa:=TRUE ELSE aa:=FALSE END);
  List_Substitution(Machine(Allocate),allocate)==(ANY mm WHERE mm: (1..100)-allocated THEN nn:=mm || allocated:=allocated\/{mm} END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Allocate))==(?);
  Inherited_List_Constants(Machine(Allocate))==(?);
  List_Constants(Machine(Allocate))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Allocate))==(?);
  Context_List_Defered(Machine(Allocate))==(?);
  Context_List_Sets(Machine(Allocate))==(?);
  List_Valuable_Sets(Machine(Allocate))==(?);
  Inherited_List_Enumerated(Machine(Allocate))==(?);
  Inherited_List_Defered(Machine(Allocate))==(?);
  Inherited_List_Sets(Machine(Allocate))==(?);
  List_Enumerated(Machine(Allocate))==(?);
  List_Defered(Machine(Allocate))==(?);
  List_Sets(Machine(Allocate))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Allocate))==(?);
  Expanded_List_HiddenConstants(Machine(Allocate))==(?);
  List_HiddenConstants(Machine(Allocate))==(?);
  External_List_HiddenConstants(Machine(Allocate))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Allocate))==(btrue);
  Context_List_Properties(Machine(Allocate))==(btrue);
  Inherited_List_Properties(Machine(Allocate))==(btrue);
  List_Properties(Machine(Allocate))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Allocate),choose)==(?);
  List_ANY_Var(Machine(Allocate),query)==(?);
  List_ANY_Var(Machine(Allocate),allocate)==(Var(mm) == btype(INTEGER,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Allocate)) == (? | ? | allocated | ? | choose,query,allocate | ? | ? | ? | Allocate);
  List_Of_HiddenCst_Ids(Machine(Allocate)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Allocate)) == (?);
  List_Of_VisibleVar_Ids(Machine(Allocate)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Allocate)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Allocate)) == (Type(allocated) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Allocate)) == (Type(allocate) == Cst(btype(INTEGER,?,?),No_type);Type(query) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(choose) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Allocate)) == (Type(query) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
