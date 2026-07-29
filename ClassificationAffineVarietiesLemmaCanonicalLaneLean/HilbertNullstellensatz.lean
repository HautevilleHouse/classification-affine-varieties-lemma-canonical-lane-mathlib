import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure HilbertNullstellensatzPackage where
  fieldIsAlgebraicallyClosed : Prop
  idealRadicalCorrespondence : Prop
  vanishingSetBiwjection : Prop

structure HilbertNullstellensatzEvidence (H : HilbertNullstellensatzPackage) where
  fieldIsAlgebraicallyClosedClosed : H.fieldIsAlgebraicallyClosed
  idealRadicalCorrespondenceClosed : H.idealRadicalCorrespondence
  vanishingSetBiwjectionClosed : H.vanishingSetBiwjection

def HilbertNullstellensatzClosed (H : HilbertNullstellensatzPackage) : Prop :=
  H.fieldIsAlgebraicallyClosed ∧ H.idealRadicalCorrespondence ∧ H.vanishingSetBiwjection

theorem hilbert_nullstellensatz_closed_from_evidence (H : HilbertNullstellensatzPackage) (E : HilbertNullstellensatzEvidence H) :
    HilbertNullstellensatzClosed H := by
  exact And.intro E.fieldIsAlgebraicallyClosedClosed (And.intro E.idealRadicalCorrespondenceClosed E.vanishingSetBiwjectionClosed)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse