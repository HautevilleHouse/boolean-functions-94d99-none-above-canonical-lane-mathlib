import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctions94d99NoneAboveCanonicalLaneLean

structure JuntaPackage where
  functionSpace : Type u
  juntaStructure : Prop
  approximationTheorem : Prop
  juntaDegree : Prop

structure JuntaEvidence (J : JuntaPackage) where
  juntaStructureClosed : J.juntaStructure
  approximationTheoremClosed : J.approximationTheorem
  juntaDegreeClosed : J.juntaDegree

def JuntaClosed (J : JuntaPackage) : Prop :=
  J.juntaStructure ∧ J.approximationTheorem ∧ J.juntaDegree

theorem junta_closed_from_evidence (J : JuntaPackage) (E : JuntaEvidence J) :
    JuntaClosed J := by
  exact And.intro E.juntaStructureClosed (And.intro E.approximationTheoremClosed E.juntaDegreeClosed)

end BooleanFunctions94d99NoneAboveCanonicalLaneLean
end HautevilleHouse