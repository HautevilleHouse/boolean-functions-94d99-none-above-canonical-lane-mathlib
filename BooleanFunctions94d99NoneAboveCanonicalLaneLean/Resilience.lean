import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure ResiliencePackage (n : ℕ) where
  outputType : Type
  noiseTolerance : Prop
  stability : Prop
  resilienceClosed : Prop

structure ResilienceEvidence (n : ℕ) (R : ResiliencePackage n) where
  noiseToleranceClosed : R.noiseTolerance
  stabilityClosed : R.stability

def ResilienceClosed (n : ℕ) (R : ResiliencePackage n) : Prop :=
  R.noiseTolerance ∧ R.stability

theorem resilience_closed_from_evidence (n : ℕ) (R : ResiliencePackage n) (E : ResilienceEvidence n R) :
    ResilienceClosed n R := by
  exact And.intro E.noiseToleranceClosed E.stabilityClosed

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse