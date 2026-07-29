import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanFunctions94d99NoneAboveCanonicalLaneLean.BooleanFunctionAlgebra

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure JuntasAndDictatorships {B : BooleanFunctionAlgebra} where
  isJunta : Bool
  juntaSize : Nat
  isDictatorship : Bool
  dictatorVariable : Option (Fin B.variableCount)
  consistencyJunta : isJunta → juntaSize ≤ B.variableCount
  consistencyDictatorship : isDictatorship → ∃ v : Fin B.variableCount, dictatorVariable = some v

def JuntasAndDictatorshipsClosed {B : BooleanFunctionAlgebra} (J : JuntasAndDictatorships B) : Prop :=
  (¬J.isJunta ∨ J.juntaSize ≤ B.variableCount) ∧ (¬J.isDictatorship ∨ ∃ v, J.dictatorVariable = some v)

theorem juntas_and_dictatorships_consistent {B : BooleanFunctionAlgebra} (J : JuntasAndDictatorships B) : JuntasAndDictatorshipsClosed J := by
  constructor
  · intro hJunta
    exact J.consistencyJunta hJunta
  · intro hDict
    exact Exists.fst (J.consistencyDictatorship hDict)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse