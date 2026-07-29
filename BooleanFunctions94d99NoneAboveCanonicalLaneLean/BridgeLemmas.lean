import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94D99NoneAboveCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BooleanFunctionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
  bridgeClosed A := by
  exact A.object.representationEquivalence

end BooleanFunctions94D99NoneAboveCanonicalLaneLean
end HautevilleHouse