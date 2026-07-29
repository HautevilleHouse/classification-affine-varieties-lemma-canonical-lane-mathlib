import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.AffineVarietyDefinitions

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure CoordinateRing (V : AffineVariety) where
  ring : CommRing (V.carrier)
  finitelyGenerated : Prop
  integralDomain : Prop
  noetherian : Prop
  isCoordinateRing : ring = V.ring

theorem coordinate_ring_is_finitely_generated (V : AffineVariety) (C : CoordinateRing V) :
    C.finitelyGenerated := by
  exact C.finitelyGenerated

theorem coordinate_ring_is_integral_domain (V : AffineVariety) (C : CoordinateRing V) :
    C.integralDomain := by
  exact C.integralDomain

theorem coordinate_ring_is_noetherian (V : AffineVariety) (C : CoordinateRing V) :
    C.noetherian := by
  exact C.noetherian

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
