Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(access_example))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(access_example))==(Machine(access_example));
  Level(Machine(access_example))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(access_example)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(access_example))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(access_example))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(access_example))==(access);
  List_Includes(Machine(access_example))==(access)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(access_example))==(add,remove,optionquery)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(access_example))==(access)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(access_example))==(?);
  Context_List_Variables(Machine(access_example))==(?);
  Abstract_List_Variables(Machine(access_example))==(?);
  Local_List_Variables(Machine(access_example))==(?);
  List_Variables(Machine(access_example))==(options);
  External_List_Variables(Machine(access_example))==(options)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(access_example))==(?);
  Abstract_List_VisibleVariables(Machine(access_example))==(?);
  External_List_VisibleVariables(Machine(access_example))==(?);
  Expanded_List_VisibleVariables(Machine(access_example))==(?);
  List_VisibleVariables(Machine(access_example))==(?);
  Internal_List_VisibleVariables(Machine(access_example))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(access_example))==(btrue);
  Gluing_List_Invariant(Machine(access_example))==(btrue);
  Abstract_List_Invariant(Machine(access_example))==(btrue);
  Expanded_List_Invariant(Machine(access_example))==(options: PRINTER <-> OPTION);
  Context_List_Invariant(Machine(access_example))==(btrue);
  List_Invariant(Machine(access_example))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(access_example))==(btrue);
  Expanded_List_Assertions(Machine(access_example))==(btrue);
  Context_List_Assertions(Machine(access_example))==(btrue);
  List_Assertions(Machine(access_example))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(access_example))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(access_example))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(access_example))==(options:={});
  Context_List_Initialisation(Machine(access_example))==(skip);
  List_Initialisation(Machine(access_example))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(access_example))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(access_example),Machine(access))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(access_example),Machine(access))==(btrue);
  List_Context_Constraints(Machine(access_example))==(btrue);
  List_Constraints(Machine(access_example))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(access_example))==(add,remove,optionquery);
  List_Operations(Machine(access_example))==(add,remove,optionquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(access_example),optionquery)==(pp,oo);
  List_Input(Machine(access_example),remove)==(pp,oo);
  List_Input(Machine(access_example),add)==(pp,oo)
END
&
THEORY ListOutputX IS
  List_Output(Machine(access_example),optionquery)==(ans);
  List_Output(Machine(access_example),remove)==(?);
  List_Output(Machine(access_example),add)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(access_example),optionquery)==(ans <-- optionquery(pp,oo));
  List_Header(Machine(access_example),remove)==(remove(pp,oo));
  List_Header(Machine(access_example),add)==(add(pp,oo))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(access_example),optionquery)==(pp: PRINTER & oo: OPTION);
  List_Precondition(Machine(access_example),optionquery)==(pp: PRINTER & oo: OPTION);
  Own_Precondition(Machine(access_example),remove)==(pp: PRINTER & oo: OPTION);
  List_Precondition(Machine(access_example),remove)==(pp: PRINTER & oo: OPTION);
  Own_Precondition(Machine(access_example),add)==(pp: PRINTER & oo: OPTION);
  List_Precondition(Machine(access_example),add)==(pp: PRINTER & oo: OPTION)
END
&
THEORY ListSubstitutionX IS
  List_Substitution(Machine(access_example),optionquery)==(IF pp|->oo: options THEN ans:=ok ELSE ans:=no END);
  Expanded_List_Substitution(Machine(access_example),optionquery)==(pp: PRINTER & oo: OPTION | pp|->oo: options ==> ans:=ok [] not(pp|->oo: options) ==> ans:=no);
  List_Substitution(Machine(access_example),remove)==(options:=options-{pp|->oo});
  Expanded_List_Substitution(Machine(access_example),remove)==(pp: PRINTER & oo: OPTION | options:=options-{pp|->oo});
  List_Substitution(Machine(access_example),add)==(options:=options\/{pp|->oo});
  Expanded_List_Substitution(Machine(access_example),add)==(pp: PRINTER & oo: OPTION | options:=options\/{pp|->oo})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(access_example))==(brother,hp,lexmak,rectoverso,couleur,ppp100);
  Inherited_List_Constants(Machine(access_example))==(?);
  List_Constants(Machine(access_example))==(brother,hp,lexmak,rectoverso,couleur,ppp100)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(access_example),PERMISSION)==({ok,no});
  Context_List_Enumerated(Machine(access_example))==(?);
  Context_List_Defered(Machine(access_example))==(?);
  Context_List_Sets(Machine(access_example))==(?);
  List_Valuable_Sets(Machine(access_example))==(PRINTER,OPTION);
  Inherited_List_Enumerated(Machine(access_example))==(PERMISSION);
  Inherited_List_Defered(Machine(access_example))==(PRINTER,OPTION);
  Inherited_List_Sets(Machine(access_example))==(PRINTER,OPTION,PERMISSION);
  List_Enumerated(Machine(access_example))==(?);
  List_Defered(Machine(access_example))==(?);
  List_Sets(Machine(access_example))==(?);
  Set_Definition(Machine(access_example),OPTION)==(?);
  Set_Definition(Machine(access_example),PRINTER)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(access_example))==(?);
  Expanded_List_HiddenConstants(Machine(access_example))==(?);
  List_HiddenConstants(Machine(access_example))==(?);
  External_List_HiddenConstants(Machine(access_example))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(access_example))==(btrue);
  Context_List_Properties(Machine(access_example))==(btrue);
  Inherited_List_Properties(Machine(access_example))==(PRINTER: FIN(INTEGER) & not(PRINTER = {}) & OPTION: FIN(INTEGER) & not(OPTION = {}) & PERMISSION: FIN(INTEGER) & not(PERMISSION = {}));
  List_Properties(Machine(access_example))==(brother: PRINTER & hp: PRINTER & lexmak: PRINTER & rectoverso: OPTION & couleur: OPTION & ppp100: OPTION & PRINTER = {brother,hp,lexmak} & card(PRINTER) = 2 & OPTION = {rectoverso,couleur,ppp100} & card(OPTION) = 3)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(access_example),optionquery)==(?);
  List_ANY_Var(Machine(access_example),remove)==(?);
  List_ANY_Var(Machine(access_example),add)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(access_example)) == (brother,hp,lexmak,rectoverso,couleur,ppp100 | PRINTER,OPTION,PERMISSION,ok,no | ? | V,options | ? | add,remove,optionquery | included(Machine(access)) | ? | access_example);
  List_Of_HiddenCst_Ids(Machine(access_example)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(access_example)) == (brother,hp,lexmak,rectoverso,couleur,ppp100);
  List_Of_VisibleVar_Ids(Machine(access_example)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(access_example)) == (?: ?);
  List_Of_Ids(Machine(access)) == (PRINTER,OPTION,PERMISSION,ok,no | ? | options | ? | add,remove,optionquery | ? | ? | ? | access);
  List_Of_HiddenCst_Ids(Machine(access)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(access)) == (?);
  List_Of_VisibleVar_Ids(Machine(access)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(access)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(access_example)) == (Type(PERMISSION) == Cst(SetOf(etype(PERMISSION,0,1)));Type(OPTION) == Cst(SetOf(atype(OPTION,"[OPTION","]OPTION")));Type(PRINTER) == Cst(SetOf(atype(PRINTER,"[PRINTER","]PRINTER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(access_example)) == (Type(no) == Cst(etype(PERMISSION,0,1));Type(ok) == Cst(etype(PERMISSION,0,1));Type(brother) == Cst(atype(PRINTER,?,?));Type(hp) == Cst(atype(PRINTER,?,?));Type(lexmak) == Cst(atype(PRINTER,?,?));Type(rectoverso) == Cst(atype(OPTION,?,?));Type(couleur) == Cst(atype(OPTION,?,?));Type(ppp100) == Cst(atype(OPTION,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(access_example)) == (Type(options) == Mvl(SetOf(atype(PRINTER,?,?)*atype(OPTION,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(access_example)) == (Type(add) == Cst(No_type,atype(PRINTER,?,?)*atype(OPTION,?,?));Type(remove) == Cst(No_type,atype(PRINTER,?,?)*atype(OPTION,?,?));Type(optionquery) == Cst(etype(PERMISSION,?,?),atype(PRINTER,?,?)*atype(OPTION,?,?)));
  Observers(Machine(access_example)) == (Type(optionquery) == Cst(etype(PERMISSION,?,?),atype(PRINTER,?,?)*atype(OPTION,?,?)))
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
