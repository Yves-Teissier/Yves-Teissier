﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(digicode_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(digicode_i))==(Machine(digicode));
  Level(Implementation(digicode_i))==(1);
  Upper_Level(Implementation(digicode_i))==(Machine(digicode))
END
&
THEORY LoadedStructureX IS
  Implementation(digicode_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(digicode_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(digicode_i))==(?);
  Inherited_List_Includes(Implementation(digicode_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(digicode_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(digicode_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(digicode_i))==(?);
  Context_List_Variables(Implementation(digicode_i))==(?);
  Abstract_List_Variables(Implementation(digicode_i))==(?);
  Local_List_Variables(Implementation(digicode_i))==(?);
  List_Variables(Implementation(digicode_i))==(?);
  External_List_Variables(Implementation(digicode_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(digicode_i))==(?);
  Abstract_List_VisibleVariables(Implementation(digicode_i))==(?);
  External_List_VisibleVariables(Implementation(digicode_i))==(?);
  Expanded_List_VisibleVariables(Implementation(digicode_i))==(?);
  List_VisibleVariables(Implementation(digicode_i))==(?);
  Internal_List_VisibleVariables(Implementation(digicode_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(digicode_i))==(btrue);
  Expanded_List_Invariant(Implementation(digicode_i))==(btrue);
  Abstract_List_Invariant(Implementation(digicode_i))==(btrue);
  Context_List_Invariant(Implementation(digicode_i))==(btrue);
  List_Invariant(Implementation(digicode_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(digicode_i))==(btrue);
  Abstract_List_Assertions(Implementation(digicode_i))==(btrue);
  Context_List_Assertions(Implementation(digicode_i))==(btrue);
  List_Assertions(Implementation(digicode_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(digicode_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(digicode_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(digicode_i))==(skip);
  Context_List_Initialisation(Implementation(digicode_i))==(skip);
  List_Initialisation(Implementation(digicode_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(digicode_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(digicode_i))==(btrue);
  List_Context_Constraints(Implementation(digicode_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(digicode_i))==(digi_getResponse);
  List_Operations(Implementation(digicode_i))==(digi_getResponse)
END
&
THEORY ListInputX IS
  List_Input(Implementation(digicode_i),digi_getResponse)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(digicode_i),digi_getResponse)==(response)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(digicode_i),digi_getResponse)==(response <-- digi_getResponse)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(digicode_i),digi_getResponse)==(btrue);
  List_Precondition(Implementation(digicode_i),digi_getResponse)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(digicode_i),digi_getResponse)==(btrue & 0: INT | response:=0);
  List_Substitution(Implementation(digicode_i),digi_getResponse)==(response:=0)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(digicode_i))==(?);
  Inherited_List_Constants(Implementation(digicode_i))==(?);
  List_Constants(Implementation(digicode_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(digicode_i))==(?);
  Context_List_Defered(Implementation(digicode_i))==(?);
  Context_List_Sets(Implementation(digicode_i))==(?);
  List_Own_Enumerated(Implementation(digicode_i))==(?);
  List_Valuable_Sets(Implementation(digicode_i))==(?);
  Inherited_List_Enumerated(Implementation(digicode_i))==(?);
  Inherited_List_Defered(Implementation(digicode_i))==(?);
  Inherited_List_Sets(Implementation(digicode_i))==(?);
  List_Enumerated(Implementation(digicode_i))==(?);
  List_Defered(Implementation(digicode_i))==(?);
  List_Sets(Implementation(digicode_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(digicode_i))==(?);
  Expanded_List_HiddenConstants(Implementation(digicode_i))==(?);
  List_HiddenConstants(Implementation(digicode_i))==(?);
  External_List_HiddenConstants(Implementation(digicode_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(digicode_i))==(btrue);
  Context_List_Properties(Implementation(digicode_i))==(btrue);
  Inherited_List_Properties(Implementation(digicode_i))==(btrue);
  List_Properties(Implementation(digicode_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(digicode_i))==(aa: aa);
  List_Values(Implementation(digicode_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(digicode_i))==(Type(digi_getResponse) == Cst(btype(INTEGER,0,MAXINT),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(digicode_i)) == (? | ? | ? | ? | digi_getResponse | ? | ? | ? | digicode_i);
  List_Of_HiddenCst_Ids(Implementation(digicode_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(digicode_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(digicode_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(digicode_i)) == (?: ?)
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
  List_Local_Operations(Implementation(digicode_i))==(?)
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
  TypingPredicate(Implementation(digicode_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
