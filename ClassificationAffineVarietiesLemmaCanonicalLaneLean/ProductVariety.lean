import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure ProductVarietyPackage {k : Type} [Field k] (V W : AffineVarietyPackage k) where
  productSet : Type u
  productTopology : TopologicalSpace productSet
  productCoordinateRing : CoordinateRingPackage k
  projectionsDefined : Prop

def ProductVarietyClosed {k : Type} [Field k] {V W : AffineVarietyPackage k} (P : ProductVarietyPackage V W) : Prop :=
  CoordinateRingClosed P.productCoordinateRing ∧ P.projectionsDefined

structure ProductVarietyEvidence {k : Type} [Field k] {V W : AffineVarietyPackage k} (P : ProductVarietyPackage V W) where
  productCoordinateRingClosed : CoordinateRingClosed P.productCoordinateRing
  projectionsDefinedClosed : P.projectionsDefined

theorem product_variety_closed_from_evidence {k : Type} [Field k] {V W : AffineVarietyPackage k} (P : ProductVarietyPackage V W) (E : ProductVarietyEvidence P) : ProductVarietyClosed P :=
  And.intro E.productCoordinateRingClosed E.projectionsDefinedClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse