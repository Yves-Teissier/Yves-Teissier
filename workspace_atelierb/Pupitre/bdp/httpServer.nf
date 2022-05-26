Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(httpServer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(httpServer))==(Machine(httpServer));
  Level(Machine(httpServer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(httpServer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(httpServer))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(httpServer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(httpServer))==(?);
  List_Includes(Machine(httpServer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(httpServer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(httpServer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(httpServer))==(?);
  Context_List_Variables(Machine(httpServer))==(?);
  Abstract_List_Variables(Machine(httpServer))==(?);
  Local_List_Variables(Machine(httpServer))==(?);
  List_Variables(Machine(httpServer))==(?);
  External_List_Variables(Machine(httpServer))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(httpServer))==(?);
  Abstract_List_VisibleVariables(Machine(httpServer))==(?);
  External_List_VisibleVariables(Machine(httpServer))==(?);
  Expanded_List_VisibleVariables(Machine(httpServer))==(?);
  List_VisibleVariables(Machine(httpServer))==(?);
  Internal_List_VisibleVariables(Machine(httpServer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(httpServer))==(btrue);
  Gluing_List_Invariant(Machine(httpServer))==(btrue);
  Expanded_List_Invariant(Machine(httpServer))==(btrue);
  Abstract_List_Invariant(Machine(httpServer))==(btrue);
  Context_List_Invariant(Machine(httpServer))==(btrue);
  List_Invariant(Machine(httpServer))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(httpServer))==(btrue);
  Abstract_List_Assertions(Machine(httpServer))==(btrue);
  Context_List_Assertions(Machine(httpServer))==(btrue);
  List_Assertions(Machine(httpServer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(httpServer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(httpServer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(httpServer))==(skip);
  Context_List_Initialisation(Machine(httpServer))==(skip);
  List_Initialisation(Machine(httpServer))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(httpServer))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(httpServer))==(btrue);
  List_Constraints(Machine(httpServer))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(httpServer))==(handleRequest,httpServer_get_debut_request);
  List_Operations(Machine(httpServer))==(handleRequest,httpServer_get_debut_request)
END
&
THEORY ListInputX IS
  List_Input(Machine(httpServer),handleRequest)==(?);
  List_Input(Machine(httpServer),httpServer_get_debut_request)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(httpServer),handleRequest)==(?);
  List_Output(Machine(httpServer),httpServer_get_debut_request)==(debutRequest)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(httpServer),handleRequest)==(handleRequest);
  List_Header(Machine(httpServer),httpServer_get_debut_request)==(debutRequest <-- httpServer_get_debut_request)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(httpServer),handleRequest)==(btrue);
  List_Precondition(Machine(httpServer),httpServer_get_debut_request)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(httpServer),httpServer_get_debut_request)==(btrue | @(debutRequest$0).(debutRequest$0: NAT ==> debutRequest:=debutRequest$0));
  Expanded_List_Substitution(Machine(httpServer),handleRequest)==(btrue | skip);
  List_Substitution(Machine(httpServer),handleRequest)==(skip);
  List_Substitution(Machine(httpServer),httpServer_get_debut_request)==(debutRequest:: NAT)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(httpServer))==(?);
  Inherited_List_Constants(Machine(httpServer))==(?);
  List_Constants(Machine(httpServer))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(httpServer))==(?);
  Context_List_Defered(Machine(httpServer))==(?);
  Context_List_Sets(Machine(httpServer))==(?);
  List_Valuable_Sets(Machine(httpServer))==(?);
  Inherited_List_Enumerated(Machine(httpServer))==(?);
  Inherited_List_Defered(Machine(httpServer))==(?);
  Inherited_List_Sets(Machine(httpServer))==(?);
  List_Enumerated(Machine(httpServer))==(?);
  List_Defered(Machine(httpServer))==(?);
  List_Sets(Machine(httpServer))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(httpServer))==(?);
  Expanded_List_HiddenConstants(Machine(httpServer))==(?);
  List_HiddenConstants(Machine(httpServer))==(?);
  External_List_HiddenConstants(Machine(httpServer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(httpServer))==(btrue);
  Context_List_Properties(Machine(httpServer))==(btrue);
  Inherited_List_Properties(Machine(httpServer))==(btrue);
  List_Properties(Machine(httpServer))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(httpServer),handleRequest)==(?);
  List_ANY_Var(Machine(httpServer),httpServer_get_debut_request)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(httpServer)) == (? | ? | ? | ? | handleRequest,httpServer_get_debut_request | ? | ? | ? | httpServer);
  List_Of_HiddenCst_Ids(Machine(httpServer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(httpServer)) == (?);
  List_Of_VisibleVar_Ids(Machine(httpServer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(httpServer)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(httpServer)) == (Type(httpServer_get_debut_request) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(handleRequest) == Cst(No_type,No_type));
  Observers(Machine(httpServer)) == (Type(httpServer_get_debut_request) == Cst(btype(INTEGER,0,MAXINT),No_type);Type(handleRequest) == Cst(No_type,No_type))
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
