import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94D99NoneAboveCanonicalLaneLean

structure BooleanFunctionAdmittedObject where
  n : ℕ
  representation : Type u
  representationEquivalence : Prop

def BooleanFunctionWitnessClosed (O : BooleanFunctionAdmittedObject) : Prop :=
  O.representationEquivalence

structure AdmissibleClass where
  object : BooleanFunctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BooleanFunctionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BooleanFunctions94D99NoneAboveCanonicalLaneLean
end HautevilleHouse