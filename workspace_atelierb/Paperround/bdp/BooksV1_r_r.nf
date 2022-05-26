Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(BooksV1_r_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(BooksV1_r_r))==(Machine(BooksV1));
  Level(Refinement(BooksV1_r_r))==(2);
  Upper_Level(Refinement(BooksV1_r_r))==(Refinement(BooksV1_r))
END
&
THEORY LoadedStructureX IS
  Refinement(BooksV1_r_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(BooksV1_r_r))==(?);
  List_Includes(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(BooksV1_r_r))==(?);
  Context_List_Variables(Refinement(BooksV1_r_r))==(?);
  Abstract_List_Variables(Refinement(BooksV1_r_r))==(scheme,read);
  Local_List_Variables(Refinement(BooksV1_r_r))==(counter);
  List_Variables(Refinement(BooksV1_r_r))==(counter);
  External_List_Variables(Refinement(BooksV1_r_r))==(counter)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(BooksV1_r_r))==(?);
  Abstract_List_VisibleVariables(Refinement(BooksV1_r_r))==(?);
  External_List_VisibleVariables(Refinement(BooksV1_r_r))==(?);
  Expanded_List_VisibleVariables(Refinement(BooksV1_r_r))==(?);
  List_VisibleVariables(Refinement(BooksV1_r_r))==(?);
  Internal_List_VisibleVariables(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(BooksV1_r_r))==(counter)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(BooksV1_r_r))==(btrue);
  Expanded_List_Invariant(Refinement(BooksV1_r_r))==(btrue);
  Abstract_List_Invariant(Refinement(BooksV1_r_r))==(scheme: iseq(BOOK) & ran(scheme) = BOOK-read & read <: BOOK);
  Context_List_Invariant(Refinement(BooksV1_r_r))==(btrue);
  List_Invariant(Refinement(BooksV1_r_r))==(counter: 0..card(BOOK) & %ii.(ii: 1..card(BOOK) | bookarr(ii-1)) = %ii.(ii: 1..counter | bookarr(ii-1))^scheme)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(BooksV1_r_r))==(0)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(BooksV1_r_r))==(btrue);
  Abstract_List_Assertions(Refinement(BooksV1_r_r))==(btrue);
  Context_List_Assertions(Refinement(BooksV1_r_r))==(btrue);
  List_Assertions(Refinement(BooksV1_r_r))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Refinement(BooksV1_r_r))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Refinement(BooksV1_r_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(BooksV1_r_r))==(counter:=0);
  Context_List_Initialisation(Refinement(BooksV1_r_r))==(skip);
  List_Initialisation(Refinement(BooksV1_r_r))==(counter:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(BooksV1_r_r))==(newbook);
  List_Operations(Refinement(BooksV1_r_r))==(newbook)
END
&
THEORY ListInputX IS
  List_Input(Refinement(BooksV1_r_r),newbook)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(BooksV1_r_r),newbook)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(BooksV1_r_r),newbook)==(bb <-- newbook)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(BooksV1_r_r),newbook)==(btrue);
  List_Precondition(Refinement(BooksV1_r_r),newbook)==(read/=BOOK)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(BooksV1_r_r),newbook)==(read/=BOOK | bb:=bookarr(counter);counter:=counter+1);
  List_Substitution(Refinement(BooksV1_r_r),newbook)==(bb:=bookarr(counter);counter:=counter+1)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(BooksV1_r_r))==(btrue);
  List_Context_Constraints(Refinement(BooksV1_r_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(BooksV1_r_r))==(bookarr);
  Inherited_List_Constants(Refinement(BooksV1_r_r))==(?);
  List_Constants(Refinement(BooksV1_r_r))==(bookarr)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(BooksV1_r_r),BOOK)==(?);
  Context_List_Enumerated(Refinement(BooksV1_r_r))==(?);
  Context_List_Defered(Refinement(BooksV1_r_r))==(?);
  Context_List_Sets(Refinement(BooksV1_r_r))==(?);
  List_Valuable_Sets(Refinement(BooksV1_r_r))==(BOOK);
  Inherited_List_Enumerated(Refinement(BooksV1_r_r))==(?);
  Inherited_List_Defered(Refinement(BooksV1_r_r))==(BOOK);
  Inherited_List_Sets(Refinement(BooksV1_r_r))==(BOOK);
  List_Enumerated(Refinement(BooksV1_r_r))==(?);
  List_Defered(Refinement(BooksV1_r_r))==(?);
  List_Sets(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(BooksV1_r_r))==(?);
  Expanded_List_HiddenConstants(Refinement(BooksV1_r_r))==(?);
  List_HiddenConstants(Refinement(BooksV1_r_r))==(?);
  External_List_HiddenConstants(Refinement(BooksV1_r_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(BooksV1_r_r))==(BOOK: FIN(INTEGER) & not(BOOK = {}));
  Context_List_Properties(Refinement(BooksV1_r_r))==(btrue);
  Inherited_List_Properties(Refinement(BooksV1_r_r))==(btrue);
  List_Properties(Refinement(BooksV1_r_r))==(bookarr: 0..card(BOOK)-1 >->> BOOK)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(BooksV1_r_r),newbook)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(BooksV1_r_r)) == (bookarr | ? | counter | ? | newbook | ? | ? | ? | BooksV1_r_r);
  List_Of_HiddenCst_Ids(Refinement(BooksV1_r_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(BooksV1_r_r)) == (bookarr);
  List_Of_VisibleVar_Ids(Refinement(BooksV1_r_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(BooksV1_r_r)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Refinement(BooksV1_r_r)) == (Type(BOOK) == Cst(SetOf(atype(BOOK,"[BOOK","]BOOK"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(BooksV1_r_r)) == (Type(bookarr) == Cst(SetOf(btype(INTEGER,0,card(BOOK)-1)*atype(BOOK,"[BOOK","]BOOK"))))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(BooksV1_r_r)) == (Type(counter) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(BooksV1_r_r)) == (Type(newbook) == Cst(atype(BOOK,?,?),No_type))
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
