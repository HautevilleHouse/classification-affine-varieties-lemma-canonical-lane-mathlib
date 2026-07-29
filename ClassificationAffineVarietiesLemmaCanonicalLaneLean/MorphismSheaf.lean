import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure MorphismSheafPackage where
  sourceVariety : AffineVarietyPackage
  targetVariety : AffineVarietyPackage
  morphismMap : sourceVariety.underlyingSet → targetVariety.underlyingSet
  sheafCompatibility : Prop

structure MorphismSheafEvidence (M : MorphismSheafPackage) where
  sheafCompatibilityClosed : M.sheafCompatibility

def MorphismSheafClosed (M : MorphismSheafPackage) : Prop :=
  M.sheafCompatibility

theorem morphism_sheaf_closed_from_evidence (M : MorphismSheafPackage) (E : MorphismSheafEvidence M) : MorphismSheafClosed M := by
  exact E.sheafCompatibilityClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
