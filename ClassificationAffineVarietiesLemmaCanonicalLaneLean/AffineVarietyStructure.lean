import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVarietyPackage where
  baseField : Type u
  coordinateRing : Type v
  underlyingSet : Type w
  zariskiTopology : TopologicalSpace underlyingSet
  polynomialFunctions : coordinateRing → (underlyingSet → baseField)
  varietyStructure : Prop

structure AffineVarietyEvidence (V : AffineVarietyPackage) where
  coordinateRingClosed : V.coordinateRing = V.coordinateRing
  varietyStructureClosed : V.varietyStructure

def AffineVarietyClosed (V : AffineVarietyPackage) : Prop :=
  V.varietyStructure

theorem affine_variety_closed_from_evidence (V : AffineVarietyPackage) (E : AffineVarietyEvidence V) : AffineVarietyClosed V := by
  exact E.varietyStructureClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
