import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94D99NoneAboveCanonicalLaneLean

def ConstrainedBooleanFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boolean_function_endgame (A : AdmissibleClass) :
  ConstrainedBooleanFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanFunctions94D99NoneAboveCanonicalLaneLean
end HautevilleHouse