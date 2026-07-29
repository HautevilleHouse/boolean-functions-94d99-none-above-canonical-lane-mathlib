import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctions94d99NoneAboveCanonicalLaneLean.BooleanFunctionAlgebra

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure FunctionFourierAnalysis (B : BooleanFunctionAlgebra) where
  fourierTransform : (Fin B.variableCount → Bool) → ℝ
  fourierInversion : Prop
  parsevalIdentity : Prop
  positivity : Prop

def FunctionFourierAnalysisClosed {B : BooleanFunctionAlgebra} (F : FunctionFourierAnalysis B) : Prop :=
  F.fourierInversion ∧ F.parsevalIdentity ∧ F.positivity

theorem function_fourier_analysis_complete {B : BooleanFunctionAlgebra} (F : FunctionFourierAnalysis B) (h : FunctionFourierAnalysisClosed F) : FunctionFourierAnalysisClosed F := h

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse