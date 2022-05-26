Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MovingParticle))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MovingParticle))==(Machine(MovingParticle));
  Level(Machine(MovingParticle))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MovingParticle)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MovingParticle))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MovingParticle))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MovingParticle))==(?);
  List_Includes(Machine(MovingParticle))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MovingParticle))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MovingParticle))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MovingParticle))==(?);
  Context_List_Variables(Machine(MovingParticle))==(?);
  Abstract_List_Variables(Machine(MovingParticle))==(?);
  Local_List_Variables(Machine(MovingParticle))==(?);
  List_Variables(Machine(MovingParticle))==(?);
  External_List_Variables(Machine(MovingParticle))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MovingParticle))==(?);
  Abstract_List_VisibleVariables(Machine(MovingParticle))==(?);
  External_List_VisibleVariables(Machine(MovingParticle))==(?);
  Expanded_List_VisibleVariables(Machine(MovingParticle))==(?);
  List_VisibleVariables(Machine(MovingParticle))==(?);
  Internal_List_VisibleVariables(Machine(MovingParticle))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MovingParticle))==(btrue);
  Gluing_List_Invariant(Machine(MovingParticle))==(btrue);
  Expanded_List_Invariant(Machine(MovingParticle))==(btrue);
  Abstract_List_Invariant(Machine(MovingParticle))==(btrue);
  Context_List_Invariant(Machine(MovingParticle))==(btrue);
  List_Invariant(Machine(MovingParticle))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MovingParticle))==(btrue);
  Abstract_List_Assertions(Machine(MovingParticle))==(btrue);
  Context_List_Assertions(Machine(MovingParticle))==(btrue);
  List_Assertions(Machine(MovingParticle))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MovingParticle))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MovingParticle))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MovingParticle))==(skip);
  Context_List_Initialisation(Machine(MovingParticle))==(skip);
  List_Initialisation(Machine(MovingParticle))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MovingParticle))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MovingParticle))==(btrue);
  List_Constraints(Machine(MovingParticle))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MovingParticle))==(?);
  List_Operations(Machine(MovingParticle))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(MovingParticle))==(?);
  Inherited_List_Constants(Machine(MovingParticle))==(?);
  List_Constants(Machine(MovingParticle))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MovingParticle))==(?);
  Context_List_Defered(Machine(MovingParticle))==(?);
  Context_List_Sets(Machine(MovingParticle))==(?);
  List_Valuable_Sets(Machine(MovingParticle))==(?);
  Inherited_List_Enumerated(Machine(MovingParticle))==(?);
  Inherited_List_Defered(Machine(MovingParticle))==(?);
  Inherited_List_Sets(Machine(MovingParticle))==(?);
  List_Enumerated(Machine(MovingParticle))==(?);
  List_Defered(Machine(MovingParticle))==(?);
  List_Sets(Machine(MovingParticle))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MovingParticle))==(?);
  Expanded_List_HiddenConstants(Machine(MovingParticle))==(?);
  List_HiddenConstants(Machine(MovingParticle))==(?);
  External_List_HiddenConstants(Machine(MovingParticle))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MovingParticle))==(btrue);
  Context_List_Properties(Machine(MovingParticle))==(btrue);
  Inherited_List_Properties(Machine(MovingParticle))==(btrue);
  List_Properties(Machine(MovingParticle))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MovingParticle)) == (? | ? | ? | ? | ? | ? | ? | ? | MovingParticle);
  List_Of_HiddenCst_Ids(Machine(MovingParticle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MovingParticle)) == (?);
  List_Of_VisibleVar_Ids(Machine(MovingParticle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MovingParticle)) == (?: ?)
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
