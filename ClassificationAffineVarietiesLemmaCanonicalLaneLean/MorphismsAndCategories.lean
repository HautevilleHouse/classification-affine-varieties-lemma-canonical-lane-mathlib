import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVarietyMorphism where
  source : AffineVarietyObject
  target : AffineVarietyObject
  ringHomomorphism : source.coordinateRing → target.coordinateRing
  isAlgebraic : Prop
  respectsStructure : Prop

structure AffineVarietyCategory where
  objects : List AffineVarietyObject
  morphisms : List AffineVarietyMorphism
  compositionWellDefined : Prop
  identitiesExist : Prop

structure CategoryEvidence (C : AffineVarietyCategory) where
  compositionWellDefinedClosed : C.compositionWellDefined
  identitiesExistClosed : C.identitiesExist

def AffineVarietyCategoryClosed (C : AffineVarietyCategory) : Prop :=
  C.compositionWellDefined ∧ C.identitiesExist

theorem affine_variety_category_closed_from_evidence (C : AffineVarietyCategory) (E : CategoryEvidence C) :
    AffineVarietyCategoryClosed C := by
  exact And.intro E.compositionWellDefinedClosed E.identitiesExistClosed

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse