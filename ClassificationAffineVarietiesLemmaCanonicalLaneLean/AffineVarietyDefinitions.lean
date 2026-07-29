import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVariety where
  carrier : Type u
  ring : CommRing carrier
  coordinateAlgebra : Type v
  isAffine : Prop

def affineVarietyWitness (V : AffineVariety) : Prop :=
  V.isAffine

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
