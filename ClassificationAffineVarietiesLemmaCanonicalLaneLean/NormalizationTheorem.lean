import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure NormalizationTheoremPackage where
  variety : AffineVarietyPackage
  normalizationMap : MorphismSheafPackage
  finiteMorphism : Prop
  integralClosure : Prop

structure NormalizationTheoremEvidence (N : NormalizationTheoremPackage) where
  finiteMorphismClosed : N.finiteMorphism
  integralClosureClosed : N.integralClosure

def NormalizationTheoremClosed (N : NormalizationTheoremPackage) : Prop :=
  N.finiteMorphism ∧ N.integralClosure

theorem normalization_theorem_closed_from_evidence (N : NormalizationTheoremPackage) (E : NormalizationTheoremEvidence N) : NormalizationTheoremClosed N := by
  exact And.intro E.finiteMorphismClosed E.integralClosureClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
