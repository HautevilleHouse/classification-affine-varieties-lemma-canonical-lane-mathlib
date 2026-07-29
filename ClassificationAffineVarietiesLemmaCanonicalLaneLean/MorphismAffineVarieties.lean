import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure MorphismPackage {k : Type} [Field k] (V W : AffineVarietyPackage k) where
  map : V.underlyingSet → W.underlyingSet
  regular : Prop
  continuous : Prop

structure MorphismEvidence {k : Type} [Field k] {V W : AffineVarietyPackage k} (M : MorphismPackage V W) where
  regularClosed : M.regular
  continuousClosed : M.continuous

def MorphismClosed {k : Type} [Field k] {V W : AffineVarietyPackage k} (M : MorphismPackage V W) : Prop :=
  M.regular ∧ M.continuous

theorem morphism_closed_from_evidence {k : Type} [Field k] {V W : AffineVarietyPackage k} (M : MorphismPackage V W) (E : MorphismEvidence M) : MorphismClosed M :=
  And.intro E.regularClosed E.continuousClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse