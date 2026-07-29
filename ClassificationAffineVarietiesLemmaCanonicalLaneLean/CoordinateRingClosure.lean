import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure CoordinateRingPackage where
  baseField : Type u
  ring : Type v
  integralDomain : Prop
  finitelyGenerated : Prop
  coordinateFunctions : Type w

structure CoordinateRingEvidence (C : CoordinateRingPackage) where
  integralDomainClosed : C.integralDomain
  finitelyGeneratedClosed : C.finitelyGenerated

def CoordinateRingClosed (C : CoordinateRingPackage) : Prop :=
  C.integralDomain ∧ C.finitelyGenerated

theorem coordinate_ring_closed_from_evidence (C : CoordinateRingPackage)
  (E : CoordinateRingEvidence C) : CoordinateRingClosed C := by
  exact And.intro E.integralDomainClosed E.finitelyGeneratedClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse