import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure PseudorandomnessPackage (n : ℕ) where
  hardness : Prop
  indistinguishability : Prop
  pseudorandomnessClosed : Prop

structure PseudorandomnessEvidence (n : ℕ) (P : PseudorandomnessPackage n) where
  hardnessClosed : P.hardness
  indistinguishabilityClosed : P.indistinguishability

def PseudorandomnessClosed (n : ℕ) (P : PseudorandomnessPackage n) : Prop :=
  P.hardness ∧ P.indistinguishability

theorem pseudorandomness_closed_from_evidence (n : ℕ) (P : PseudorandomnessPackage n) (E : PseudorandomnessEvidence n P) :
    PseudorandomnessClosed n P := by
  exact And.intro E.hardnessClosed E.indistinguishabilityClosed

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse