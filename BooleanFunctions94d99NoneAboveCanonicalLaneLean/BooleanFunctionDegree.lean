import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure BooleanFunctionDegree where
  variableCount : Nat
  variableCountPos : variableCount > 0
  degreeBound : Nat
  degreeBoundNonneg : degreeBound ≥ 0

def BooleanFunctionDegreeClosed (D : BooleanFunctionDegree) : Prop :=
  D.variableCountPos ∧ D.degreeBoundNonneg ∧ D.degreeBound ≤ D.variableCount

theorem boolean_function_degree_consistent (D : BooleanFunctionDegree) (h : D.degreeBound ≤ D.variableCount) : BooleanFunctionDegreeClosed D := by
  exact And.intro D.variableCountPos (And.intro D.degreeBoundNonneg h)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse