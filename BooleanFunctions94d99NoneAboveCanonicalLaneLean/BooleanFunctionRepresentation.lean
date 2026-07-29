import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94D99NoneAboveCanonicalLaneLean

structure BooleanFunction (n : ℕ) where
  vars : Fin n → Bool → Bool
  truthTable : Fin (2 ^ n) → Bool
  varsConsistent : ∀ (x : Fin (2 ^ n)) (i : Fin n), truthTable x = vars (x / 2 ^ (i.val)) (x % 2 = 1)

structure BooleanFunctionPackage (n : ℕ) where
  function : BooleanFunction n
  representation : Type u
  uniqueRepresentation : Prop
  representationClosed : representation

def BooleanFunctionRepresentationClosed (n : ℕ) (B : BooleanFunctionPackage n) : Prop :=
  B.uniqueRepresentation

theorem boolean_function_representation_closed_from_package (n : ℕ) (B : BooleanFunctionPackage n) :
  BooleanFunctionRepresentationClosed n B := by
  exact B.uniqueRepresentation

end BooleanFunctions94D99NoneAboveCanonicalLaneLean
end HautevilleHouse