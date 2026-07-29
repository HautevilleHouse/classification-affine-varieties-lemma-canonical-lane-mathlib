import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVariety where
  coordinateRing : Type u
  topologicalSpace : TopologicalSpace coordinateRing
  structureSheaf : Type v
  irreducible : Prop
  reduced : Prop
  finiteType : Prop

def morphismOfAffineVarieties (X Y : AffineVariety) : Type _ :=
  { f : X.coordinateRing → Y.coordinateRing // IsRingHom f }

structure MorphismAffineEvidence (X Y : AffineVariety) where
  ringHomCompatible : Prop
  continuity : Prop
  sheafCompatible : Prop

def MorphismAffineClosed (X Y : AffineVariety) : Prop :=
  Nonempty (morphismOfAffineVarieties X Y)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse