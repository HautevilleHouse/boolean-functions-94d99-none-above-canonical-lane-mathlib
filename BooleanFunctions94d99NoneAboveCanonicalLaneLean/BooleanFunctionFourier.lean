import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure FourierCoefficientPackage where
  functionSpace : Type u
  fourierTransform : Type v
  expansionLaw : Prop
  convolutionLaw : Prop
  parsevalIdentity : Prop

structure FourierCoefficientEvidence (F : FourierCoefficientPackage) where
  expansionLawClosed : F.expansionLaw
  convolutionLawClosed : F.convolutionLaw
  parsevalIdentityClosed : F.parsevalIdentity

def FourierCoefficientClosed (F : FourierCoefficientPackage) : Prop :=
  F.expansionLaw ∧ F.convolutionLaw ∧ F.parsevalIdentity

theorem fourier_coefficient_closed_from_evidence (F : FourierCoefficientPackage)
    (E : FourierCoefficientEvidence F) : FourierCoefficientClosed F := by
  exact And.intro E.expansionLawClosed (And.intro E.convolutionLawClosed E.parsevalIdentityClosed)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse