Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(readingBook))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(readingBook))==(Machine(readingBook));
  Level(Machine(readingBook))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(readingBook)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(readingBook))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(readingBook))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(readingBook))==(?);
  List_Includes(Machine(readingBook))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(readingBook))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(readingBook))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(readingBook))==(?);
  Context_List_Variables(Machine(readingBook))==(?);
  Abstract_List_Variables(Machine(readingBook))==(?);
  Local_List_Variables(Machine(readingBook))==(reading,hasread);
  List_Variables(Machine(readingBook))==(reading,hasread);
  External_List_Variables(Machine(readingBook))==(reading,hasread)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(readingBook))==(?);
  Abstract_List_VisibleVariables(Machine(readingBook))==(?);
  External_List_VisibleVariables(Machine(readingBook))==(?);
  Expanded_List_VisibleVariables(Machine(readingBook))==(?);
  List_VisibleVariables(Machine(readingBook))==(?);
  Internal_List_VisibleVariables(Machine(readingBook))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(readingBook))==(btrue);
  Gluing_List_Invariant(Machine(readingBook))==(btrue);
  Expanded_List_Invariant(Machine(readingBook))==(btrue);
  Abstract_List_Invariant(Machine(readingBook))==(btrue);
  Context_List_Invariant(Machine(readingBook))==(btrue);
  List_Invariant(Machine(readingBook))==(hasread: READER <-> BOOK & reading: READER >+> COPY & (reading;copyof)/\hasread = {})
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(readingBook))==(btrue);
  Abstract_List_Assertions(Machine(readingBook))==(btrue);
  Context_List_Assertions(Machine(readingBook))==(btrue);
  List_Assertions(Machine(readingBook))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(readingBook))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(readingBook))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(readingBook))==(hasread,reading:={},{});
  Context_List_Initialisation(Machine(readingBook))==(skip);
  List_Initialisation(Machine(readingBook))==(hasread:={} || reading:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(readingBook))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(readingBook))==(btrue);
  List_Constraints(Machine(readingBook))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(readingBook))==(start,finished,precurrentquery,currentquery,hasreadquery);
  List_Operations(Machine(readingBook))==(start,finished,precurrentquery,currentquery,hasreadquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(readingBook),start)==(rr,cc);
  List_Input(Machine(readingBook),finished)==(rr,cc);
  List_Input(Machine(readingBook),precurrentquery)==(rr);
  List_Input(Machine(readingBook),currentquery)==(rr);
  List_Input(Machine(readingBook),hasreadquery)==(rr,bb)
END
&
THEORY ListOutputX IS
  List_Output(Machine(readingBook),start)==(?);
  List_Output(Machine(readingBook),finished)==(?);
  List_Output(Machine(readingBook),precurrentquery)==(resp);
  List_Output(Machine(readingBook),currentquery)==(bb);
  List_Output(Machine(readingBook),hasreadquery)==(resp)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(readingBook),start)==(start(rr,cc));
  List_Header(Machine(readingBook),finished)==(finished(rr,cc));
  List_Header(Machine(readingBook),precurrentquery)==(resp <-- precurrentquery(rr));
  List_Header(Machine(readingBook),currentquery)==(bb <-- currentquery(rr));
  List_Header(Machine(readingBook),hasreadquery)==(resp <-- hasreadquery(rr,bb))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(readingBook),start)==(rr: READER & cc: COPY & copyof(cc)/:hasread[{rr}] & rr/:dom(reading) & cc/:ran(reading));
  List_Precondition(Machine(readingBook),finished)==(rr: READER & cc: COPY & rr: dom(reading) & cc = reading(rr));
  List_Precondition(Machine(readingBook),precurrentquery)==(rr: READER);
  List_Precondition(Machine(readingBook),currentquery)==(rr: READER & rr: dom(reading));
  List_Precondition(Machine(readingBook),hasreadquery)==(rr: READER & bb: BOOK)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(readingBook),hasreadquery)==(rr: READER & bb: BOOK | bb: hasread[{rr}] ==> resp:=yes [] not(bb: hasread[{rr}]) ==> resp:=no);
  Expanded_List_Substitution(Machine(readingBook),currentquery)==(rr: READER & rr: dom(reading) | bb:=copyof(reading(rr)));
  Expanded_List_Substitution(Machine(readingBook),precurrentquery)==(rr: READER | rr: dom(reading) ==> resp:=yes [] not(rr: dom(reading)) ==> resp:=no);
  Expanded_List_Substitution(Machine(readingBook),finished)==(rr: READER & cc: COPY & rr: dom(reading) & cc = reading(rr) | hasread,reading:=hasread\/{rr|->copyof(cc)},{rr}<<|reading);
  Expanded_List_Substitution(Machine(readingBook),start)==(rr: READER & cc: COPY & copyof(cc)/:hasread[{rr}] & rr/:dom(reading) & cc/:ran(reading) | reading:=reading\/{rr|->cc});
  List_Substitution(Machine(readingBook),start)==(reading:=reading\/{rr|->cc});
  List_Substitution(Machine(readingBook),finished)==(hasread:=hasread\/{rr|->copyof(cc)} || reading:={rr}<<|reading);
  List_Substitution(Machine(readingBook),precurrentquery)==(IF rr: dom(reading) THEN resp:=yes ELSE resp:=no END);
  List_Substitution(Machine(readingBook),currentquery)==(bb:=copyof(reading(rr)));
  List_Substitution(Machine(readingBook),hasreadquery)==(IF bb: hasread[{rr}] THEN resp:=yes ELSE resp:=no END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(readingBook))==(copyof);
  Inherited_List_Constants(Machine(readingBook))==(?);
  List_Constants(Machine(readingBook))==(copyof)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(readingBook),READER)==(?);
  Context_List_Enumerated(Machine(readingBook))==(?);
  Context_List_Defered(Machine(readingBook))==(?);
  Context_List_Sets(Machine(readingBook))==(?);
  List_Valuable_Sets(Machine(readingBook))==(READER,BOOK,COPY);
  Inherited_List_Enumerated(Machine(readingBook))==(?);
  Inherited_List_Defered(Machine(readingBook))==(?);
  Inherited_List_Sets(Machine(readingBook))==(?);
  List_Enumerated(Machine(readingBook))==(RESPONSE);
  List_Defered(Machine(readingBook))==(READER,BOOK,COPY);
  List_Sets(Machine(readingBook))==(READER,BOOK,COPY,RESPONSE);
  Set_Definition(Machine(readingBook),BOOK)==(?);
  Set_Definition(Machine(readingBook),COPY)==(?);
  Set_Definition(Machine(readingBook),RESPONSE)==({yes,no})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(readingBook))==(?);
  Expanded_List_HiddenConstants(Machine(readingBook))==(?);
  List_HiddenConstants(Machine(readingBook))==(?);
  External_List_HiddenConstants(Machine(readingBook))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(readingBook))==(btrue);
  Context_List_Properties(Machine(readingBook))==(btrue);
  Inherited_List_Properties(Machine(readingBook))==(btrue);
  List_Properties(Machine(readingBook))==(copyof: COPY -->> BOOK & READER: FIN(INTEGER) & not(READER = {}) & BOOK: FIN(INTEGER) & not(BOOK = {}) & COPY: FIN(INTEGER) & not(COPY = {}) & RESPONSE: FIN(INTEGER) & not(RESPONSE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(readingBook),start)==(?);
  List_ANY_Var(Machine(readingBook),finished)==(?);
  List_ANY_Var(Machine(readingBook),precurrentquery)==(?);
  List_ANY_Var(Machine(readingBook),currentquery)==(?);
  List_ANY_Var(Machine(readingBook),hasreadquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(readingBook)) == (copyof,READER,BOOK,COPY,RESPONSE,yes,no | ? | reading,hasread | ? | start,finished,precurrentquery,currentquery,hasreadquery | ? | ? | ? | readingBook);
  List_Of_HiddenCst_Ids(Machine(readingBook)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(readingBook)) == (copyof);
  List_Of_VisibleVar_Ids(Machine(readingBook)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(readingBook)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(readingBook)) == (Type(READER) == Cst(SetOf(atype(READER,"[READER","]READER")));Type(BOOK) == Cst(SetOf(atype(BOOK,"[BOOK","]BOOK")));Type(COPY) == Cst(SetOf(atype(COPY,"[COPY","]COPY")));Type(RESPONSE) == Cst(SetOf(etype(RESPONSE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(readingBook)) == (Type(yes) == Cst(etype(RESPONSE,0,1));Type(no) == Cst(etype(RESPONSE,0,1));Type(copyof) == Cst(SetOf(atype(COPY,"[COPY","]COPY")*atype(BOOK,"[BOOK","]BOOK"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(readingBook)) == (Type(reading) == Mvl(SetOf(atype(READER,?,?)*atype(COPY,?,?)));Type(hasread) == Mvl(SetOf(atype(READER,?,?)*atype(BOOK,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(readingBook)) == (Type(hasreadquery) == Cst(etype(RESPONSE,?,?),atype(READER,?,?)*atype(BOOK,?,?));Type(currentquery) == Cst(atype(BOOK,?,?),atype(READER,?,?));Type(precurrentquery) == Cst(etype(RESPONSE,?,?),atype(READER,?,?));Type(finished) == Cst(No_type,atype(READER,?,?)*atype(COPY,?,?));Type(start) == Cst(No_type,atype(READER,?,?)*atype(COPY,?,?)));
  Observers(Machine(readingBook)) == (Type(hasreadquery) == Cst(etype(RESPONSE,?,?),atype(READER,?,?)*atype(BOOK,?,?));Type(currentquery) == Cst(atype(BOOK,?,?),atype(READER,?,?));Type(precurrentquery) == Cst(etype(RESPONSE,?,?),atype(READER,?,?)))
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
