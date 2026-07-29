import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure InfluenceNoisePackage (n : ℕ) where
  influence : Type
  noiseOperator : Type
  noiseStability : Prop
  influenceClosed : Prop
  noiseClosed : Prop

structure InfluenceNoiseEvidence (n : ℕ) (I : InfluenceNoisePackage n) where
  influenceClosedTerm : I.influenceClosed
  noiseClosedTerm : I.noiseClosed

def InfluenceNoiseClosed (n : ℕ) (I : InfluenceNoisePackage n) : Prop :=
  I.influenceClosed ∧ I.noiseClosed

theorem influence_noise_closed_from_evidence (n : ℕ) (I : InfluenceNoisePackage n) (E : InfluenceNoiseEvidence n I) :
    InfluenceNoiseClosed n I := by
  exact And.intro E.influenceClosedTerm E.noiseClosedTerm

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse