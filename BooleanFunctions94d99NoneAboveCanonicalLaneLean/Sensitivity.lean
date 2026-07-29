import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure SensitivityPackage (n : ℕ) where
  blockSensitivity : Type
  degree : Type
  sensitivityClosed : Prop
  degreeClosed : Prop

structure SensitivityEvidence (n : ℕ) (S : SensitivityPackage n) where
  sensitivityClosedTerm : S.sensitivityClosed
  degreeClosedTerm : S.degreeClosed

def SensitivityClosed (n : ℕ) (S : SensitivityPackage n) : Prop :=
  S.sensitivityClosed ∧ S.degreeClosed

theorem sensitivity_closed_from_evidence (n : ℕ) (S : SensitivityPackage n) (E : SensitivityEvidence n S) :
    SensitivityClosed n S := by
  exact And.intro E.sensitivityClosedTerm E.degreeClosedTerm

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse