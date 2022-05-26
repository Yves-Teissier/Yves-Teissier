Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BooksV1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BooksV1))==(Machine(BooksV1));
  Level(Machine(BooksV1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BooksV1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BooksV1))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BooksV1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BooksV1))==(?);
  List_Includes(Machine(BooksV1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BooksV1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BooksV1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BooksV1))==(?);
  Context_List_Variables(Machine(BooksV1))==(?);
  Abstract_List_Variables(Machine(BooksV1))==(?);
  Local_List_Variables(Machine(BooksV1))==(read);
  List_Variables(Machine(BooksV1))==(read);
  External_List_Variables(Machine(BooksV1))==(read)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BooksV1))==(?);
  Abstract_List_VisibleVariables(Machine(BooksV1))==(?);
  External_List_VisibleVariables(Machine(BooksV1))==(?);
  Expanded_List_VisibleVariables(Machine(BooksV1))==(?);
  List_VisibleVariables(Machine(BooksV1))==(?);
  Internal_List_VisibleVariables(Machine(BooksV1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BooksV1))==(btrue);
  Gluing_List_Invariant(Machine(BooksV1))==(btrue);
  Expanded_List_Invariant(Machine(BooksV1))==(btrue);
  Abstract_List_Invariant(Machine(BooksV1))==(btrue);
  Context_List_Invariant(Machine(BooksV1))==(btrue);
  List_Invariant(Machine(BooksV1))==(read <: BOOK)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BooksV1))==(btrue);
  Abstract_List_Assertions(Machine(BooksV1))==(btrue);
  Context_List_Assertions(Machine(BooksV1))==(btrue);
  List_Assertions(Machine(BooksV1))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BooksV1))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BooksV1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BooksV1))==(read:={});
  Context_List_Initialisation(Machine(BooksV1))==(skip);
  List_Initialisation(Machine(BooksV1))==(read:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BooksV1))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BooksV1))==(btrue);
  List_Constraints(Machine(BooksV1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BooksV1))==(newbook);
  List_Operations(Machine(BooksV1))==(newbook)
END
&
THEORY ListInputX IS
  List_Input(Machine(BooksV1),newbook)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BooksV1),newbook)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BooksV1),newbook)==(bb <-- newbook)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BooksV1),newbook)==(read/=BOOK)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BooksV1),newbook)==(read/=BOOK | @tt.(tt: BOOK-read ==> bb,read:=tt,read\/{tt}));
  List_Substitution(Machine(BooksV1),newbook)==(ANY tt WHERE tt: BOOK-read THEN bb:=tt || read:=read\/{tt} END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BooksV1))==(?);
  Inherited_List_Constants(Machine(BooksV1))==(?);
  List_Constants(Machine(BooksV1))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BooksV1),BOOK)==(?);
  Context_List_Enumerated(Machine(BooksV1))==(?);
  Context_List_Defered(Machine(BooksV1))==(?);
  Context_List_Sets(Machine(BooksV1))==(?);
  List_Valuable_Sets(Machine(BooksV1))==(BOOK);
  Inherited_List_Enumerated(Machine(BooksV1))==(?);
  Inherited_List_Defered(Machine(BooksV1))==(?);
  Inherited_List_Sets(Machine(BooksV1))==(?);
  List_Enumerated(Machine(BooksV1))==(?);
  List_Defered(Machine(BooksV1))==(BOOK);
  List_Sets(Machine(BooksV1))==(BOOK)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BooksV1))==(?);
  Expanded_List_HiddenConstants(Machine(BooksV1))==(?);
  List_HiddenConstants(Machine(BooksV1))==(?);
  External_List_HiddenConstants(Machine(BooksV1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BooksV1))==(btrue);
  Context_List_Properties(Machine(BooksV1))==(btrue);
  Inherited_List_Properties(Machine(BooksV1))==(btrue);
  List_Properties(Machine(BooksV1))==(BOOK: FIN(INTEGER) & not(BOOK = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BooksV1),newbook)==(Var(tt) == atype(BOOK,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BooksV1)) == (BOOK | ? | read | ? | newbook | ? | ? | ? | BooksV1);
  List_Of_HiddenCst_Ids(Machine(BooksV1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BooksV1)) == (?);
  List_Of_VisibleVar_Ids(Machine(BooksV1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BooksV1)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BooksV1)) == (Type(BOOK) == Cst(SetOf(atype(BOOK,"[BOOK","]BOOK"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BooksV1)) == (Type(read) == Mvl(SetOf(atype(BOOK,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BooksV1)) == (Type(newbook) == Cst(atype(BOOK,?,?),No_type))
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
