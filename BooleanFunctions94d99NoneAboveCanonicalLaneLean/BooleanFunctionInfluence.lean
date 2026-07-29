import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure InfluencePackage where
  influenceOperator : Type u
  monotonicity : Prop
  poissonEquation : Prop
  stabilityUnderNoise : Prop

structure InfluenceEvidence (I : InfluencePackage) where
  monotonicityClosed : I.monotonicity
  poissonEquationClosed : I.poissonEquation
  stabilityUnderNoiseClosed : I.stabilityUnderNoise

def InfluenceClosed (I : InfluencePackage) : Prop :=
  I.monotonicity ∧ I.poissonEquation ∧ I.stabilityUnderNoise

theorem influence_closed_from_evidence (I : InfluencePackage) (E : InfluenceEvidence I) :
    InfluenceClosed I := by
  exact And.intro E.monotonicityClosed (And.intro E.poissonEquationClosed E.stabilityUnderNoiseClosed)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse