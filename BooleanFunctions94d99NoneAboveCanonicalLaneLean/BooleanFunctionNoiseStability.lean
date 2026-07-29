import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure NoiseStabilityPackage where
  noiseOperator : Type u
  stabilityParameter : Prop
  noiseStabilityLaw : Prop
  hypercontractivity : Prop

structure NoiseStabilityEvidence (N : NoiseStabilityPackage) where
  stabilityParameterClosed : N.stabilityParameter
  noiseStabilityLawClosed : N.noiseStabilityLaw
  hypercontractivityClosed : N.hypercontractivity

def NoiseStabilityClosed (N : NoiseStabilityPackage) : Prop :=
  N.stabilityParameter ∧ N.noiseStabilityLaw ∧ N.hypercontractivity

theorem noise_stability_closed_from_evidence (N : NoiseStabilityPackage)
    (E : NoiseStabilityEvidence N) : NoiseStabilityClosed N := by
  exact And.intro E.stabilityParameterClosed (And.intro E.noiseStabilityLawClosed E.hypercontractivityClosed)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse