Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(MySet_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(MySet_r))==(Machine(MySet));
  Level(Refinement(MySet_r))==(1);
  Upper_Level(Refinement(MySet_r))==(Machine(MySet))
END
&
THEORY LoadedStructureX IS
  Refinement(MySet_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(MySet_r))==(MySet_ctx)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(MySet_r))==(?);
  List_Includes(Refinement(MySet_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(MySet_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(MySet_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(MySet_r))==(?);
  Context_List_Variables(Refinement(MySet_r))==(?);
  Abstract_List_Variables(Refinement(MySet_r))==(ss);
  Local_List_Variables(Refinement(MySet_r))==(hwm,array);
  List_Variables(Refinement(MySet_r))==(hwm,array);
  External_List_Variables(Refinement(MySet_r))==(hwm,array)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(MySet_r))==(?);
  Abstract_List_VisibleVariables(Refinement(MySet_r))==(?);
  External_List_VisibleVariables(Refinement(MySet_r))==(?);
  Expanded_List_VisibleVariables(Refinement(MySet_r))==(?);
  List_VisibleVariables(Refinement(MySet_r))==(?);
  Internal_List_VisibleVariables(Refinement(MySet_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(MySet_r))==(hwm,array)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(MySet_r))==(btrue);
  Expanded_List_Invariant(Refinement(MySet_r))==(btrue);
  Abstract_List_Invariant(Refinement(MySet_r))==(ss <: VALUE & card(ss)<=MM);
  Context_List_Invariant(Refinement(MySet_r))==(btrue);
  List_Invariant(Refinement(MySet_r))==(array: 0..MM-1 --> VALUE & hwm: 0..MM & 0..hwm-1<|array: 0..hwm-1 >-> VALUE & hwm = card(ss) & ss = array[0..hwm-1])
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(MySet_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(MySet_r))==(btrue);
  Abstract_List_Assertions(Refinement(MySet_r))==(btrue);
  Context_List_Assertions(Refinement(MySet_r))==(btrue);
  List_Assertions(Refinement(MySet_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(MySet_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(MySet_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(MySet_r))==(@(array$0).(array$0: 0..MM-1 --> VALUE ==> array:=array$0) || hwm:=0);
  Context_List_Initialisation(Refinement(MySet_r))==(skip);
  List_Initialisation(Refinement(MySet_r))==(array:: 0..MM-1 --> VALUE || hwm:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(MySet_r))==(Add,Discard);
  List_Operations(Refinement(MySet_r))==(Add,Discard)
END
&
THEORY ListInputX IS
  List_Input(Refinement(MySet_r),Add)==(xx);
  List_Input(Refinement(MySet_r),Discard)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(MySet_r),Add)==(?);
  List_Output(Refinement(MySet_r),Discard)==(xx)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(MySet_r),Add)==(Add(xx));
  List_Header(Refinement(MySet_r),Discard)==(xx <-- Discard)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(MySet_r),Add)==(btrue);
  List_Precondition(Refinement(MySet_r),Add)==(xx: VALUE & xx/:ss & card(ss)<MM);
  Own_Precondition(Refinement(MySet_r),Discard)==(btrue);
  List_Precondition(Refinement(MySet_r),Discard)==(ss/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(MySet_r),Discard)==(ss/={} | hwm>0 ==> (hwm:=hwm-1;xx:=array(hwm)) [] not(hwm>0) ==> skip);
  Expanded_List_Substitution(Refinement(MySet_r),Add)==(xx: VALUE & xx/:ss & card(ss)<MM | hwm<MM & not(xx: array[0..hwm-1]) ==> (array:=array<+{hwm|->xx};hwm:=hwm+1) [] not(hwm<MM & not(xx: array[0..hwm-1])) ==> skip);
  List_Substitution(Refinement(MySet_r),Add)==(IF hwm<MM & not(xx: array[0..hwm-1]) THEN array(hwm):=xx;hwm:=hwm+1 END);
  List_Substitution(Refinement(MySet_r),Discard)==(IF hwm>0 THEN hwm:=hwm-1;xx:=array(hwm) END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(MySet_r))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Refinement(MySet_r),Machine(MySet_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(MySet_r))==(btrue);
  List_Context_Constraints(Refinement(MySet_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(MySet_r))==(?);
  Inherited_List_Constants(Refinement(MySet_r))==(?);
  List_Constants(Refinement(MySet_r))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Refinement(MySet_r))==(?);
  Context_List_Defered(Refinement(MySet_r))==(VALUE);
  Context_List_Sets(Refinement(MySet_r))==(VALUE);
  List_Valuable_Sets(Refinement(MySet_r))==(?);
  Inherited_List_Enumerated(Refinement(MySet_r))==(?);
  Inherited_List_Defered(Refinement(MySet_r))==(?);
  Inherited_List_Sets(Refinement(MySet_r))==(?);
  List_Enumerated(Refinement(MySet_r))==(?);
  List_Defered(Refinement(MySet_r))==(?);
  List_Sets(Refinement(MySet_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(MySet_r))==(?);
  Expanded_List_HiddenConstants(Refinement(MySet_r))==(?);
  List_HiddenConstants(Refinement(MySet_r))==(?);
  External_List_HiddenConstants(Refinement(MySet_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(MySet_r))==(btrue);
  Context_List_Properties(Refinement(MySet_r))==(MM: NAT & VALUE: FIN(INTEGER) & not(VALUE = {}));
  Inherited_List_Properties(Refinement(MySet_r))==(btrue);
  List_Properties(Refinement(MySet_r))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Refinement(MySet_r),Machine(MySet_ctx))==(?);
  Seen_Context_List_Enumerated(Refinement(MySet_r))==(?);
  Seen_Context_List_Invariant(Refinement(MySet_r))==(btrue);
  Seen_Context_List_Assertions(Refinement(MySet_r))==(btrue);
  Seen_Context_List_Properties(Refinement(MySet_r))==(btrue);
  Seen_List_Constraints(Refinement(MySet_r))==(btrue);
  Seen_List_Operations(Refinement(MySet_r),Machine(MySet_ctx))==(?);
  Seen_Expanded_List_Invariant(Refinement(MySet_r),Machine(MySet_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(MySet_r),Add)==(?);
  List_ANY_Var(Refinement(MySet_r),Discard)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(MySet_r)) == (? | ? | hwm,array | ? | Add,Discard | ? | seen(Machine(MySet_ctx)) | ? | MySet_r);
  List_Of_HiddenCst_Ids(Refinement(MySet_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(MySet_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(MySet_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(MySet_r)) == (?: ?);
  List_Of_Ids(Machine(MySet_ctx)) == (MM,VALUE | ? | ? | ? | ? | ? | ? | ? | MySet_ctx);
  List_Of_HiddenCst_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MySet_ctx)) == (MM);
  List_Of_VisibleVar_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MySet_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(MySet_r)) == (Type(hwm) == Mvl(btype(INTEGER,?,?));Type(array) == Mvl(SetOf(btype(INTEGER,0,MM-1)*atype(VALUE,"[VALUE","]VALUE"))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(MySet_r)) == (Type(Discard) == Cst(atype(VALUE,?,?),No_type);Type(Add) == Cst(No_type,atype(VALUE,?,?)))
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
