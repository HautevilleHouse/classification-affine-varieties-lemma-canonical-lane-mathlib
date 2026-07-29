import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure CoordinateRingPackage where
  variety : AffineVariety
  ringType : Type u
  generators : List (ringType)
  relations : List (ringType × ringType)
  finitelyGenerated : Prop
  reducednessCondition : Prop
  integralityCondition : Prop

structure CoordinateRingEvidence (P : CoordinateRingPackage) where
  finitelyGeneratedClosed : P.finitelyGenerated
  reducednessConditionClosed : P.reducednessCondition
  integralityConditionClosed : P.integralityCondition

def CoordinateRingClosed (P : CoordinateRingPackage) : Prop :=
  P.finitelyGenerated ∧ P.reducednessCondition ∧ P.integralityCondition

theorem coordinate_ring_closed_from_evidence (P : CoordinateRingPackage)
    (E : CoordinateRingEvidence P) : CoordinateRingClosed P := by
  exact And.intro E.finitelyGeneratedClosed
    (And.intro E.reducednessConditionClosed E.integralityConditionClosed)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
