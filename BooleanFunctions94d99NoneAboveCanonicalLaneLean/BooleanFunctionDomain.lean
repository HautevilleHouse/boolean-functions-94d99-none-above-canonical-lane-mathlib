import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure BooleanVariable where
  index : Nat
  name : String

def BooleanVariableSet : Type := List BooleanVariable

structure BooleanFunctionDomain where
  inputVariables : BooleanVariableSet
  outputType : Type
  deterministic : Prop
  domainDefinitionClosed : Prop

def BooleanFunctionDomainClosed (D : BooleanFunctionDomain) : Prop :=
  D.deterministic ∧ D.domainDefinitionClosed

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse