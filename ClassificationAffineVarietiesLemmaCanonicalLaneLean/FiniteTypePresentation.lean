import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure FiniteTypeAlgebraicSystem where
  generatorCount : ℕ
  relationCount : ℕ
  polynomialRing : Type u
  idealGenerated : Type v

def finiteTypePresentation (S : FiniteTypeAlgebraicSystem) : Prop :=
  S.generatorCount < ℕ ∧ S.relationCount < ℕ

theorem finite_type_presentation_from_generators_and_relations
  (S : FiniteTypeAlgebraicSystem) : finiteTypePresentation S := by
  exact And.intro (by decide) (by decide)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse