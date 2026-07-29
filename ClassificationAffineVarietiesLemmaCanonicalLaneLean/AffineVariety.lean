import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVarietyPackage (k : Type) [Field k] where
  coordinateRing : CoordinateRingPackage k
  underlyingSet : Type u
  zariskiTopology : TopologicalSpace underlyingSet
  irreducible : Prop

def AffineVarietyClosed {k : Type} [Field k] (V : AffineVarietyPackage k) : Prop :=
  CoordinateRingClosed V.coordinateRing ∧ V.irreducible

structure AffineVarietyEvidence {k : Type} [Field k] (V : AffineVarietyPackage k) where
  coordinateRingClosed : CoordinateRingClosed V.coordinateRing
  irreducibleClosed : V.irreducible

theorem affine_variety_closed_from_evidence {k : Type} [Field k] (V : AffineVarietyPackage k) (E : AffineVarietyEvidence V) : AffineVarietyClosed V :=
  And.intro E.coordinateRingClosed E.irreducibleClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse