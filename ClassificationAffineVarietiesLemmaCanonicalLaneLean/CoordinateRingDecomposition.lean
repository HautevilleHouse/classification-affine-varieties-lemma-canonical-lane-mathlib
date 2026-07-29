import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure CoordinateRingDecompositionPackage where
  coordinateRing : CommRing
  decomposition : List (Ideal coordinateRing)
  radicalProperty : Prop

structure CoordinateRingDecompositionEvidence (D : CoordinateRingDecompositionPackage) where
  radicalPropertyClosed : D.radicalProperty

def CoordinateRingDecompositionClosed (D : CoordinateRingDecompositionPackage) : Prop :=
  D.radicalProperty

theorem coordinate_ring_decomposition_closed_from_evidence (D : CoordinateRingDecompositionPackage) (E : CoordinateRingDecompositionEvidence D) : CoordinateRingDecompositionClosed D := by
  exact E.radicalPropertyClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
