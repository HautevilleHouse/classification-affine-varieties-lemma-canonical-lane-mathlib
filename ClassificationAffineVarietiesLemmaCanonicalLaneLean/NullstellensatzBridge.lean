import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure NullstellensatzPackage where
  idealType : Type u
  radicalOfIdeal : idealType → idealType
  vanishingSet : idealType → Set (AffineVariety.carrier)
  idealOfVanishing : Set (AffineVariety.carrier) → idealType
  radicalIdealProperty : Prop
  closedCorrespondence : Prop

structure NullstellensatzEvidence (N : NullstellensatzPackage) where
  radicalIdealPropertyClosed : N.radicalIdealProperty
  closedCorrespondenceClosed : N.closedCorrespondence

def NullstellensatzClosed (N : NullstellensatzPackage) : Prop :=
  N.radicalIdealProperty ∧ N.closedCorrespondence

theorem nullstellensatz_closed_from_evidence (N : NullstellensatzPackage)
    (E : NullstellensatzEvidence N) : NullstellensatzClosed N := by
  exact And.intro E.radicalIdealPropertyClosed E.closedCorrespondenceClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
