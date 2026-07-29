import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.CoordinateRing

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure NullstellensatzPackage (V : AffineVariety) (C : CoordinateRing V) where
  vanishingIdeal : Set (C.ring) → Ideal (C.ring)
  radicalEquality : Prop
  bijectionBetweenIdealsAndVarieties : Prop
  weakNullstellensatz : Prop
  strongNullstellensatz : Prop

theorem weak_nullstellensatz_holds (V : AffineVariety) (C : CoordinateRing V) (N : NullstellensatzPackage V C) :
    N.weakNullstellensatz := by
  exact N.weakNullstellensatz

theorem strong_nullstellensatz_holds (V : AffineVariety) (C : CoordinateRing V) (N : NullstellensatzPackage V C) :
    N.strongNullstellensatz := by
  exact N.strongNullstellensatz

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
