import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94D99NoneAboveCanonicalLaneLean

structure BooleanFunction (n : ℕ) where
  vars : Fin n → Bool → Bool
  truthTable : Fin (2 ^ n) → Bool
  varsConsistent : ∀ (x : Fin (2 ^ n)) (i : Fin n), truthTable x = vars (x / 2 ^ (i.val)) (x % 2 = 1)

structure BooleanFunctionProperties (B : BooleanFunction n) where
  linearity : Prop
  monotonicity : Prop
  symmetry : Prop
  linearityClosed : linearity
  monotonicityClosed : monotonicity
  symmetryClosed : symmetry

def BooleanFunctionPropertiesClosed (B : BooleanFunction n) (P : BooleanFunctionProperties B) : Prop :=
  P.linearity ∧ P.monotonicity ∧ P.symmetry

theorem boolean_function_properties_closed_from_properties (B : BooleanFunction n) (P : BooleanFunctionProperties B) :
  BooleanFunctionPropertiesClosed B P := by
  exact And.intro P.linearityClosed (And.intro P.monotonicityClosed P.symmetryClosed)

end BooleanFunctions94D99NoneAboveCanonicalLaneLean
end HautevilleHouse