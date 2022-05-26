Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(httpServer_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(httpServer_i))==(Machine(httpServer));
  Level(Implementation(httpServer_i))==(1);
  Upper_Level(Implementation(httpServer_i))==(Machine(httpServer))
END
&
THEORY LoadedStructureX IS
  Implementation(httpServer_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(httpServer_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(httpServer_i))==(?);
  Inherited_List_Includes(Implementation(httpServer_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(httpServer_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(httpServer_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(httpServer_i))==(?);
  Context_List_Variables(Implementation(httpServer_i))==(?);
  Abstract_List_Variables(Implementation(httpServer_i))==(?);
  Local_List_Variables(Implementation(httpServer_i))==(?);
  List_Variables(Implementation(httpServer_i))==(?);
  External_List_Variables(Implementation(httpServer_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(httpServer_i))==(?);
  Abstract_List_VisibleVariables(Implementation(httpServer_i))==(?);
  External_List_VisibleVariables(Implementation(httpServer_i))==(?);
  Expanded_List_VisibleVariables(Implementation(httpServer_i))==(?);
  List_VisibleVariables(Implementation(httpServer_i))==(?);
  Internal_List_VisibleVariables(Implementation(httpServer_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(httpServer_i))==(btrue);
  Expanded_List_Invariant(Implementation(httpServer_i))==(btrue);
  Abstract_List_Invariant(Implementation(httpServer_i))==(btrue);
  Context_List_Invariant(Implementation(httpServer_i))==(btrue);
  List_Invariant(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(httpServer_i))==(btrue);
  Abstract_List_Assertions(Implementation(httpServer_i))==(btrue);
  Context_List_Assertions(Implementation(httpServer_i))==(btrue);
  List_Assertions(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(httpServer_i))==(skip);
  Context_List_Initialisation(Implementation(httpServer_i))==(skip);
  List_Initialisation(Implementation(httpServer_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(httpServer_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(httpServer_i))==(btrue);
  List_Context_Constraints(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(httpServer_i))==(handleRequest,httpServer_get_debut_request);
  List_Operations(Implementation(httpServer_i))==(handleRequest,httpServer_get_debut_request)
END
&
THEORY ListInputX IS
  List_Input(Implementation(httpServer_i),handleRequest)==(?);
  List_Input(Implementation(httpServer_i),httpServer_get_debut_request)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(httpServer_i),handleRequest)==(?);
  List_Output(Implementation(httpServer_i),httpServer_get_debut_request)==(debutRequest)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(httpServer_i),handleRequest)==(handleRequest);
  List_Header(Implementation(httpServer_i),httpServer_get_debut_request)==(debutRequest <-- httpServer_get_debut_request)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(httpServer_i),handleRequest)==(btrue);
  List_Precondition(Implementation(httpServer_i),handleRequest)==(btrue);
  Own_Precondition(Implementation(httpServer_i),httpServer_get_debut_request)==(btrue);
  List_Precondition(Implementation(httpServer_i),httpServer_get_debut_request)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(httpServer_i),httpServer_get_debut_request)==(btrue & 0: INT | debutRequest:=0);
  Expanded_List_Substitution(Implementation(httpServer_i),handleRequest)==(btrue | skip);
  List_Substitution(Implementation(httpServer_i),handleRequest)==(skip);
  List_Substitution(Implementation(httpServer_i),httpServer_get_debut_request)==(debutRequest:=0)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(httpServer_i))==(?);
  Inherited_List_Constants(Implementation(httpServer_i))==(?);
  List_Constants(Implementation(httpServer_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(httpServer_i))==(?);
  Context_List_Defered(Implementation(httpServer_i))==(?);
  Context_List_Sets(Implementation(httpServer_i))==(?);
  List_Own_Enumerated(Implementation(httpServer_i))==(?);
  List_Valuable_Sets(Implementation(httpServer_i))==(?);
  Inherited_List_Enumerated(Implementation(httpServer_i))==(?);
  Inherited_List_Defered(Implementation(httpServer_i))==(?);
  Inherited_List_Sets(Implementation(httpServer_i))==(?);
  List_Enumerated(Implementation(httpServer_i))==(?);
  List_Defered(Implementation(httpServer_i))==(?);
  List_Sets(Implementation(httpServer_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(httpServer_i))==(?);
  Expanded_List_HiddenConstants(Implementation(httpServer_i))==(?);
  List_HiddenConstants(Implementation(httpServer_i))==(?);
  External_List_HiddenConstants(Implementation(httpServer_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(httpServer_i))==(btrue);
  Context_List_Properties(Implementation(httpServer_i))==(btrue);
  Inherited_List_Properties(Implementation(httpServer_i))==(btrue);
  List_Properties(Implementation(httpServer_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(httpServer_i))==(aa: aa);
  List_Values(Implementation(httpServer_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(httpServer_i))==(Type(httpServer_get_debut_request) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(handleRequest) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(httpServer_i)) == (? | ? | ? | ? | handleRequest,httpServer_get_debut_request | ? | ? | ? | httpServer_i);
  List_Of_HiddenCst_Ids(Implementation(httpServer_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(httpServer_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(httpServer_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(httpServer_i)) == (?: ?)
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(httpServer_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(httpServer_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
