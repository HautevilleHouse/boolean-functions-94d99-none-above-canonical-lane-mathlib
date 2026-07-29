import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctions94d99NoneAboveCanonicalLaneLean.PropertyTesting

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure LearningTheoryPackage (D : BooleanFunctionDomain) where
  pacLearnable : Prop
  sampleComplexity : Prop
  agnosticLearning : Prop
  onlineLearning : Prop

structure LearningTheoryEvidence (D : BooleanFunctionDomain)
    (L : LearningTheoryPackage D) where
  pacLearnableClosed : L.pacLearnable
  sampleComplexityClosed : L.sampleComplexity
  agnosticLearningClosed : L.agnosticLearning
  onlineLearningClosed : L.onlineLearning

def LearningTheoryClosed (D : BooleanFunctionDomain)
    (L : LearningTheoryPackage D) : Prop :=
  L.pacLearnable ∧ L.sampleComplexity ∧ L.agnosticLearning ∧ L.onlineLearning

theorem learning_theory_closed_from_evidence (D : BooleanFunctionDomain)
    (L : LearningTheoryPackage D) (E : LearningTheoryEvidence D L) :
    LearningTheoryClosed D L := by
  exact And.intro E.pacLearnableClosed
    (And.intro E.sampleComplexityClosed
      (And.intro E.agnosticLearningClosed E.onlineLearningClosed))

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse