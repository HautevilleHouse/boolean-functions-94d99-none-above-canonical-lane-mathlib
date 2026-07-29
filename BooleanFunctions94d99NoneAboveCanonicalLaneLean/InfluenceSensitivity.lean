import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctions94d99NoneAboveCanonicalLaneLean.BooleanFunctionAlgebra

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure InfluenceSensitivity {B : BooleanFunctionAlgebra} where
  influence : (Fin B.variableCount → Bool) → ℝ → ℝ
  totalInfluence : ℝ
  noiseSensitivity : ℝ → ℝ
  noiseStability : ℝ → ℝ
  monotonicity : Prop

def InfluenceSensitivityClosed {B : BooleanFunctionAlgebra} (I : InfluenceSensitivity B) : Prop :=
  I.monotonicity ∧ I.totalInfluence ≥ 0

theorem influence_sensitivity_well_defined {B : BooleanFunctionAlgebra} (I : InfluenceSensitivity B) (h : I.totalInfluence ≥ 0) : InfluenceSensitivityClosed I := by
  exact And.intro I.monotonicity h

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse