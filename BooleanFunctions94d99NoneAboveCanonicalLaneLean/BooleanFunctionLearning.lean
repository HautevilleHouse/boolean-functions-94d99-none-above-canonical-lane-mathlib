import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure LearningPackage where
  conceptClass : Type u
  sampleComplexity : Prop
  learnabilityBound : Prop
  dimensionMeasure : Prop

structure LearningEvidence (L : LearningPackage) where
  sampleComplexityClosed : L.sampleComplexity
  learnabilityBoundClosed : L.learnabilityBound
  dimensionMeasureClosed : L.dimensionMeasure

def LearningClosed (L : LearningPackage) : Prop :=
  L.sampleComplexity ∧ L.learnabilityBound ∧ L.dimensionMeasure

theorem learning_closed_from_evidence (L : LearningPackage) (E : LearningEvidence L) :
    LearningClosed L := by
  exact And.intro E.sampleComplexityClosed (And.intro E.learnabilityBoundClosed E.dimensionMeasureClosed)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse