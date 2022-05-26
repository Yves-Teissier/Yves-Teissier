Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BooksV1_ProB))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BooksV1_ProB))==(Machine(BooksV1_ProB));
  Level(Machine(BooksV1_ProB))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BooksV1_ProB)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BooksV1_ProB))==(BooksV1);
  List_Includes(Machine(BooksV1_ProB))==(BooksV1)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BooksV1_ProB))==(newbook)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BooksV1_ProB))==(BooksV1)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BooksV1_ProB))==(?);
  Context_List_Variables(Machine(BooksV1_ProB))==(?);
  Abstract_List_Variables(Machine(BooksV1_ProB))==(?);
  Local_List_Variables(Machine(BooksV1_ProB))==(?);
  List_Variables(Machine(BooksV1_ProB))==(read);
  External_List_Variables(Machine(BooksV1_ProB))==(read)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BooksV1_ProB))==(?);
  Abstract_List_VisibleVariables(Machine(BooksV1_ProB))==(?);
  External_List_VisibleVariables(Machine(BooksV1_ProB))==(?);
  Expanded_List_VisibleVariables(Machine(BooksV1_ProB))==(?);
  List_VisibleVariables(Machine(BooksV1_ProB))==(?);
  Internal_List_VisibleVariables(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BooksV1_ProB))==(btrue);
  Gluing_List_Invariant(Machine(BooksV1_ProB))==(btrue);
  Abstract_List_Invariant(Machine(BooksV1_ProB))==(btrue);
  Expanded_List_Invariant(Machine(BooksV1_ProB))==(read <: BOOK);
  Context_List_Invariant(Machine(BooksV1_ProB))==(btrue);
  List_Invariant(Machine(BooksV1_ProB))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(BooksV1_ProB))==(btrue);
  Expanded_List_Assertions(Machine(BooksV1_ProB))==(btrue);
  Context_List_Assertions(Machine(BooksV1_ProB))==(btrue);
  List_Assertions(Machine(BooksV1_ProB))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(BooksV1_ProB))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(BooksV1_ProB))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BooksV1_ProB))==(read:={});
  Context_List_Initialisation(Machine(BooksV1_ProB))==(skip);
  List_Initialisation(Machine(BooksV1_ProB))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(BooksV1_ProB),Machine(BooksV1))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(BooksV1_ProB),Machine(BooksV1))==(btrue);
  List_Context_Constraints(Machine(BooksV1_ProB))==(btrue);
  List_Constraints(Machine(BooksV1_ProB))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BooksV1_ProB))==(newbook);
  List_Operations(Machine(BooksV1_ProB))==(newbook)
END
&
THEORY ListInputX IS
  List_Input(Machine(BooksV1_ProB),newbook)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BooksV1_ProB),newbook)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BooksV1_ProB),newbook)==(bb <-- newbook)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(BooksV1_ProB),newbook)==(read/=BOOK);
  List_Precondition(Machine(BooksV1_ProB),newbook)==(read/=BOOK)
END
&
THEORY ListSubstitutionX IS
  List_Substitution(Machine(BooksV1_ProB),newbook)==(ANY tt WHERE tt: BOOK-read THEN bb:=tt || read:=read\/{tt} END);
  Expanded_List_Substitution(Machine(BooksV1_ProB),newbook)==(read/=BOOK | @tt.(tt: BOOK-read ==> bb,read:=tt,read\/{tt}))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BooksV1_ProB))==(DOM_QUIXOTE,ULYSSES,THE_ODISSEY,HAMLET,THE_DIVINE_COMEDY);
  Inherited_List_Constants(Machine(BooksV1_ProB))==(?);
  List_Constants(Machine(BooksV1_ProB))==(DOM_QUIXOTE,ULYSSES,THE_ODISSEY,HAMLET,THE_DIVINE_COMEDY)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(BooksV1_ProB),BOOK)==(?);
  Context_List_Enumerated(Machine(BooksV1_ProB))==(?);
  Context_List_Defered(Machine(BooksV1_ProB))==(?);
  Context_List_Sets(Machine(BooksV1_ProB))==(?);
  List_Valuable_Sets(Machine(BooksV1_ProB))==(BOOK);
  Inherited_List_Enumerated(Machine(BooksV1_ProB))==(?);
  Inherited_List_Defered(Machine(BooksV1_ProB))==(BOOK);
  Inherited_List_Sets(Machine(BooksV1_ProB))==(BOOK);
  List_Enumerated(Machine(BooksV1_ProB))==(?);
  List_Defered(Machine(BooksV1_ProB))==(?);
  List_Sets(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BooksV1_ProB))==(?);
  Expanded_List_HiddenConstants(Machine(BooksV1_ProB))==(?);
  List_HiddenConstants(Machine(BooksV1_ProB))==(?);
  External_List_HiddenConstants(Machine(BooksV1_ProB))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BooksV1_ProB))==(btrue);
  Context_List_Properties(Machine(BooksV1_ProB))==(btrue);
  Inherited_List_Properties(Machine(BooksV1_ProB))==(BOOK: FIN(INTEGER) & not(BOOK = {}));
  List_Properties(Machine(BooksV1_ProB))==(DOM_QUIXOTE: BOOK & ULYSSES: BOOK & THE_ODISSEY: BOOK & HAMLET: BOOK & THE_DIVINE_COMEDY: BOOK & BOOK = {DOM_QUIXOTE,ULYSSES,THE_ODISSEY,HAMLET,THE_DIVINE_COMEDY} & card(BOOK) = 5)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BooksV1_ProB),newbook)==(Var(tt) == atype(BOOK,?,?))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BooksV1_ProB)) == (DOM_QUIXOTE,ULYSSES,THE_ODISSEY,HAMLET,THE_DIVINE_COMEDY | BOOK | ? | V,read | ? | newbook | included(Machine(BooksV1)) | ? | BooksV1_ProB);
  List_Of_HiddenCst_Ids(Machine(BooksV1_ProB)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BooksV1_ProB)) == (DOM_QUIXOTE,ULYSSES,THE_ODISSEY,HAMLET,THE_DIVINE_COMEDY);
  List_Of_VisibleVar_Ids(Machine(BooksV1_ProB)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BooksV1_ProB)) == (?: ?);
  List_Of_Ids(Machine(BooksV1)) == (BOOK | ? | read | ? | newbook | ? | ? | ? | BooksV1);
  List_Of_HiddenCst_Ids(Machine(BooksV1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BooksV1)) == (?);
  List_Of_VisibleVar_Ids(Machine(BooksV1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BooksV1)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(BooksV1_ProB)) == (Type(BOOK) == Cst(SetOf(atype(BOOK,"[BOOK","]BOOK"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(BooksV1_ProB)) == (Type(DOM_QUIXOTE) == Cst(atype(BOOK,?,?));Type(ULYSSES) == Cst(atype(BOOK,?,?));Type(THE_ODISSEY) == Cst(atype(BOOK,?,?));Type(HAMLET) == Cst(atype(BOOK,?,?));Type(THE_DIVINE_COMEDY) == Cst(atype(BOOK,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BooksV1_ProB)) == (Type(read) == Mvl(SetOf(atype(BOOK,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BooksV1_ProB)) == (Type(newbook) == Cst(atype(BOOK,?,?),No_type))
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
