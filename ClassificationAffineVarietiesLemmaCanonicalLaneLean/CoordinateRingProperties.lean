import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure CoordinateRingPackage where
  ring : Type
  isReduced : Prop
  isFinitelyGenerated : Prop
  isIntegralDomain : Prop

structure CoordinateRingEvidence (R : CoordinateRingPackage) where
  isReducedClosed : R.isReduced
  isFinitelyGeneratedClosed : R.isFinitelyGenerated
  isIntegralDomainClosed : R.isIntegralDomain

def CoordinateRingClosed (R : CoordinateRingPackage) : Prop :=
  R.isReduced ∧ R.isFinitelyGenerated ∧ R.isIntegralDomain

theorem coordinate_ring_closed_from_evidence (R : CoordinateRingPackage) (E : CoordinateRingEvidence R) :
    CoordinateRingClosed R := by
  exact And.intro E.isReducedClosed (And.intro E.isFinitelyGeneratedClosed E.isIntegralDomainClosed)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse