import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

-- Influence of variable i on function f
definition Influence (f : (Fin n → Bool) → Bool) (i : Fin n) : ℝ :=
  ℙ_{x}[f x ≠ f (x with i := ¬ x i)]

-- Noise stability
definition NoiseStability (f : (Fin n → Bool) → Bool) (ρ : ℝ) : ℝ :=
  𝔼_{x,y correlated with correlation ρ}[f x = f y]

-- Relation between influence and noise stability via Fourier coefficients
theorem FourierInfluence (f : (Fin n → Bool) → Bool) (i : Fin n) :
    Influence f i = ∑ S : Finset (Fin n), (FourierCoefficient f S)^2 * (if i ∈ S then 1 else 0) :=
  by
    unfold Influence
    rw [influence_eq_sum_fourier_sq]
    simp

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse