import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

-- KKL theorem: there exists a variable with influence at least C * Var(f) * log n / n
theorem KKL (f : (Fin n → Bool) → Bool) (nonconst : ∃ x y, f x ≠ f y) :
    ∃ i : Fin n, Influence f i ≥ (1 / (2 * Real.log n)) * Var f :=
  by
    sorry

-- Example showing the constant is tight: the tribes function
definition TribesFunction (n : ℕ) (w : ℕ) : (Fin n → Bool) → Bool :=
  λ x =>
    let tribes := Finset.range (n / w) in
    Finset.any tribes (λ t =>
      Finset.all (Finset.Ico (t*w) ((t+1)*w)) (λ i => x i = true))

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse