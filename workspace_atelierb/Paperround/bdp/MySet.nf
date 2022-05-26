Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MySet))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MySet))==(Machine(MySet));
  Level(Machine(MySet))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MySet)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MySet))==(MySet_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MySet))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MySet))==(?);
  List_Includes(Machine(MySet))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MySet))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MySet))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MySet))==(?);
  Context_List_Variables(Machine(MySet))==(?);
  Abstract_List_Variables(Machine(MySet))==(?);
  Local_List_Variables(Machine(MySet))==(ss);
  List_Variables(Machine(MySet))==(ss);
  External_List_Variables(Machine(MySet))==(ss)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MySet))==(?);
  Abstract_List_VisibleVariables(Machine(MySet))==(?);
  External_List_VisibleVariables(Machine(MySet))==(?);
  Expanded_List_VisibleVariables(Machine(MySet))==(?);
  List_VisibleVariables(Machine(MySet))==(?);
  Internal_List_VisibleVariables(Machine(MySet))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MySet))==(btrue);
  Gluing_List_Invariant(Machine(MySet))==(btrue);
  Expanded_List_Invariant(Machine(MySet))==(btrue);
  Abstract_List_Invariant(Machine(MySet))==(btrue);
  Context_List_Invariant(Machine(MySet))==(btrue);
  List_Invariant(Machine(MySet))==(ss <: VALUE & card(ss)<=MM)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MySet))==(btrue);
  Abstract_List_Assertions(Machine(MySet))==(btrue);
  Context_List_Assertions(Machine(MySet))==(btrue);
  List_Assertions(Machine(MySet))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MySet))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MySet))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MySet))==(ss:={});
  Context_List_Initialisation(Machine(MySet))==(skip);
  List_Initialisation(Machine(MySet))==(ss:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MySet))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(MySet),Machine(MySet_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MySet))==(btrue);
  List_Constraints(Machine(MySet))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MySet))==(Add,Discard);
  List_Operations(Machine(MySet))==(Add,Discard)
END
&
THEORY ListInputX IS
  List_Input(Machine(MySet),Add)==(xx);
  List_Input(Machine(MySet),Discard)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(MySet),Add)==(?);
  List_Output(Machine(MySet),Discard)==(xx)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(MySet),Add)==(Add(xx));
  List_Header(Machine(MySet),Discard)==(xx <-- Discard)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(MySet),Add)==(xx: VALUE & xx/:ss & card(ss)<MM);
  List_Precondition(Machine(MySet),Discard)==(ss/={})
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(MySet),Discard)==(ss/={} | @ee.(ee: ss ==> ss,xx:=ss-{ee},ee));
  Expanded_List_Substitution(Machine(MySet),Add)==(xx: VALUE & xx/:ss & card(ss)<MM | ss:=ss\/{xx});
  List_Substitution(Machine(MySet),Add)==(ss:=ss\/{xx});
  List_Substitution(Machine(MySet),Discard)==(ANY ee WHERE ee: ss THEN ss:=ss-{ee} || xx:=ee END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MySet))==(?);
  Inherited_List_Constants(Machine(MySet))==(?);
  List_Constants(Machine(MySet))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MySet))==(?);
  Context_List_Defered(Machine(MySet))==(VALUE);
  Context_List_Sets(Machine(MySet))==(VALUE);
  List_Valuable_Sets(Machine(MySet))==(?);
  Inherited_List_Enumerated(Machine(MySet))==(?);
  Inherited_List_Defered(Machine(MySet))==(?);
  Inherited_List_Sets(Machine(MySet))==(?);
  List_Enumerated(Machine(MySet))==(?);
  List_Defered(Machine(MySet))==(?);
  List_Sets(Machine(MySet))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MySet))==(?);
  Expanded_List_HiddenConstants(Machine(MySet))==(?);
  List_HiddenConstants(Machine(MySet))==(?);
  External_List_HiddenConstants(Machine(MySet))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MySet))==(btrue);
  Context_List_Properties(Machine(MySet))==(MM: NAT & VALUE: FIN(INTEGER) & not(VALUE = {}));
  Inherited_List_Properties(Machine(MySet))==(btrue);
  List_Properties(Machine(MySet))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(MySet),Machine(MySet_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(MySet))==(?);
  Seen_Context_List_Invariant(Machine(MySet))==(btrue);
  Seen_Context_List_Assertions(Machine(MySet))==(btrue);
  Seen_Context_List_Properties(Machine(MySet))==(btrue);
  Seen_List_Constraints(Machine(MySet))==(btrue);
  Seen_List_Operations(Machine(MySet),Machine(MySet_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(MySet),Machine(MySet_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(MySet),Add)==(?);
  List_ANY_Var(Machine(MySet),Discard)==(Var(ee) == atype(VALUE,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MySet)) == (? | ? | ss | ? | Add,Discard | ? | seen(Machine(MySet_ctx)) | ? | MySet);
  List_Of_HiddenCst_Ids(Machine(MySet)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MySet)) == (?);
  List_Of_VisibleVar_Ids(Machine(MySet)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MySet)) == (?: ?);
  List_Of_Ids(Machine(MySet_ctx)) == (MM,VALUE | ? | ? | ? | ? | ? | ? | ? | MySet_ctx);
  List_Of_HiddenCst_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MySet_ctx)) == (MM);
  List_Of_VisibleVar_Ids(Machine(MySet_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MySet_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(MySet)) == (Type(ss) == Mvl(SetOf(atype(VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(MySet)) == (Type(Discard) == Cst(atype(VALUE,?,?),No_type);Type(Add) == Cst(No_type,atype(VALUE,?,?)))
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
