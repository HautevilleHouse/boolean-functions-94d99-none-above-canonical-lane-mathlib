import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctions94d99NoneAboveCanonicalLaneLean.FourierAnalysis

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure PropertyTestingPackage (D : BooleanFunctionDomain) where
  testableProperty : Prop
  queryComplexity : Prop
  oneSidedError : Prop
  twoSidedError : Prop

structure PropertyTestingEvidence (D : BooleanFunctionDomain)
    (P : PropertyTestingPackage D) where
  testablePropertyClosed : P.testableProperty
  queryComplexityClosed : P.queryComplexity
  oneSidedErrorClosed : P.oneSidedError
  twoSidedErrorClosed : P.twoSidedError

def PropertyTestingClosed (D : BooleanFunctionDomain)
    (P : PropertyTestingPackage D) : Prop :=
  P.testableProperty ∧ P.queryComplexity ∧ P.oneSidedError ∧ P.twoSidedError

theorem property_testing_closed_from_evidence (D : BooleanFunctionDomain)
    (P : PropertyTestingPackage D) (E : PropertyTestingEvidence D P) :
    PropertyTestingClosed D P := by
  exact And.intro E.testablePropertyClosed
    (And.intro E.queryComplexityClosed
      (And.intro E.oneSidedErrorClosed E.twoSidedErrorClosed))

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse