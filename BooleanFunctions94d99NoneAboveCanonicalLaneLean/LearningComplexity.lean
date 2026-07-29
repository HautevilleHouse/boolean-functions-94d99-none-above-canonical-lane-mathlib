import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure LearningComplexityPackage (n : ℕ) where
  agnosticPAC : Prop
  queryModel : Type
  sampleComplexity : Prop
  learnabilityClosed : Prop

structure LearningComplexityEvidence (n : ℕ) (L : LearningComplexityPackage n) where
  agnosticPACClosed : L.agnosticPAC
  sampleComplexityClosed : L.sampleComplexity

def LearningComplexityClosed (n : ℕ) (L : LearningComplexityPackage n) : Prop :=
  L.agnosticPAC ∧ L.sampleComplexity

theorem learning_complexity_closed_from_evidence (n : ℕ) (L : LearningComplexityPackage n) (E : LearningComplexityEvidence n L) :
    LearningComplexityClosed n L := by
  exact And.intro E.agnosticPACClosed E.sampleComplexityClosed

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse