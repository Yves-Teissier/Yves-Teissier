Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(access))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(access))==(Machine(access));
  Level(Machine(access))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(access)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(access))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(access))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(access))==(?);
  List_Includes(Machine(access))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(access))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(access))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(access))==(?);
  Context_List_Variables(Machine(access))==(?);
  Abstract_List_Variables(Machine(access))==(?);
  Local_List_Variables(Machine(access))==(options);
  List_Variables(Machine(access))==(options);
  External_List_Variables(Machine(access))==(options)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(access))==(?);
  Abstract_List_VisibleVariables(Machine(access))==(?);
  External_List_VisibleVariables(Machine(access))==(?);
  Expanded_List_VisibleVariables(Machine(access))==(?);
  List_VisibleVariables(Machine(access))==(?);
  Internal_List_VisibleVariables(Machine(access))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(access))==(btrue);
  Gluing_List_Invariant(Machine(access))==(btrue);
  Expanded_List_Invariant(Machine(access))==(btrue);
  Abstract_List_Invariant(Machine(access))==(btrue);
  Context_List_Invariant(Machine(access))==(btrue);
  List_Invariant(Machine(access))==(options: PRINTER <-> OPTION)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(access))==(btrue);
  Abstract_List_Assertions(Machine(access))==(btrue);
  Context_List_Assertions(Machine(access))==(btrue);
  List_Assertions(Machine(access))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(access))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(access))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(access))==(options:={});
  Context_List_Initialisation(Machine(access))==(skip);
  List_Initialisation(Machine(access))==(options:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(access))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(access))==(btrue);
  List_Constraints(Machine(access))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(access))==(add,remove,optionquery);
  List_Operations(Machine(access))==(add,remove,optionquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(access),add)==(pp,oo);
  List_Input(Machine(access),remove)==(pp,oo);
  List_Input(Machine(access),optionquery)==(pp,oo)
END
&
THEORY ListOutputX IS
  List_Output(Machine(access),add)==(?);
  List_Output(Machine(access),remove)==(?);
  List_Output(Machine(access),optionquery)==(ans)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(access),add)==(add(pp,oo));
  List_Header(Machine(access),remove)==(remove(pp,oo));
  List_Header(Machine(access),optionquery)==(ans <-- optionquery(pp,oo))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(access),add)==(pp: PRINTER & oo: OPTION);
  List_Precondition(Machine(access),remove)==(pp: PRINTER & oo: OPTION);
  List_Precondition(Machine(access),optionquery)==(pp: PRINTER & oo: OPTION)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(access),optionquery)==(pp: PRINTER & oo: OPTION | pp|->oo: options ==> ans:=ok [] not(pp|->oo: options) ==> ans:=no);
  Expanded_List_Substitution(Machine(access),remove)==(pp: PRINTER & oo: OPTION | options:=options-{pp|->oo});
  Expanded_List_Substitution(Machine(access),add)==(pp: PRINTER & oo: OPTION | options:=options\/{pp|->oo});
  List_Substitution(Machine(access),add)==(options:=options\/{pp|->oo});
  List_Substitution(Machine(access),remove)==(options:=options-{pp|->oo});
  List_Substitution(Machine(access),optionquery)==(IF pp|->oo: options THEN ans:=ok ELSE ans:=no END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(access))==(?);
  Inherited_List_Constants(Machine(access))==(?);
  List_Constants(Machine(access))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(access),PRINTER)==(?);
  Context_List_Enumerated(Machine(access))==(?);
  Context_List_Defered(Machine(access))==(?);
  Context_List_Sets(Machine(access))==(?);
  List_Valuable_Sets(Machine(access))==(PRINTER,OPTION);
  Inherited_List_Enumerated(Machine(access))==(?);
  Inherited_List_Defered(Machine(access))==(?);
  Inherited_List_Sets(Machine(access))==(?);
  List_Enumerated(Machine(access))==(PERMISSION);
  List_Defered(Machine(access))==(PRINTER,OPTION);
  List_Sets(Machine(access))==(PRINTER,OPTION,PERMISSION);
  Set_Definition(Machine(access),OPTION)==(?);
  Set_Definition(Machine(access),PERMISSION)==({ok,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(access))==(?);
  Expanded_List_HiddenConstants(Machine(access))==(?);
  List_HiddenConstants(Machine(access))==(?);
  External_List_HiddenConstants(Machine(access))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(access))==(btrue);
  Context_List_Properties(Machine(access))==(btrue);
  Inherited_List_Properties(Machine(access))==(btrue);
  List_Properties(Machine(access))==(PRINTER: FIN(INTEGER) & not(PRINTER = {}) & OPTION: FIN(INTEGER) & not(OPTION = {}) & PERMISSION: FIN(INTEGER) & not(PERMISSION = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(access),add)==(?);
  List_ANY_Var(Machine(access),remove)==(?);
  List_ANY_Var(Machine(access),optionquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(access)) == (PRINTER,OPTION,PERMISSION,ok,no | ? | options | ? | add,remove,optionquery | ? | ? | ? | access);
  List_Of_HiddenCst_Ids(Machine(access)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(access)) == (?);
  List_Of_VisibleVar_Ids(Machine(access)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(access)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(access)) == (Type(PRINTER) == Cst(SetOf(atype(PRINTER,"[PRINTER","]PRINTER")));Type(OPTION) == Cst(SetOf(atype(OPTION,"[OPTION","]OPTION")));Type(PERMISSION) == Cst(SetOf(etype(PERMISSION,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(access)) == (Type(ok) == Cst(etype(PERMISSION,0,1));Type(no) == Cst(etype(PERMISSION,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(access)) == (Type(options) == Mvl(SetOf(atype(PRINTER,?,?)*atype(OPTION,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(access)) == (Type(optionquery) == Cst(etype(PERMISSION,?,?),atype(PRINTER,?,?)*atype(OPTION,?,?));Type(remove) == Cst(No_type,atype(PRINTER,?,?)*atype(OPTION,?,?));Type(add) == Cst(No_type,atype(PRINTER,?,?)*atype(OPTION,?,?)));
  Observers(Machine(access)) == (Type(optionquery) == Cst(etype(PERMISSION,?,?),atype(PRINTER,?,?)*atype(OPTION,?,?)))
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
