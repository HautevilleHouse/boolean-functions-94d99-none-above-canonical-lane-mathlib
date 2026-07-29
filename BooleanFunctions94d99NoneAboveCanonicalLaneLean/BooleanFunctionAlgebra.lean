import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure BooleanFunctionAlgebra where
  variableCount : Nat
  variableCountPos : variableCount > 0
  domain : Set (Fin variableCount → Bool)
  isAlgebra : BooleanAlgebra (Fin variableCount → Bool)

def BooleanFunctionAlgebraClosed (B : BooleanFunctionAlgebra) : Prop :=
  B.variableCountPos ∧ B.isAlgebra.toLE.

theorem boolean_function_algebra_initialised (B : BooleanFunctionAlgebra) : BooleanFunctionAlgebraClosed B := by
  exact And.intro B.variableCountPos B.isAlgebra.

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse