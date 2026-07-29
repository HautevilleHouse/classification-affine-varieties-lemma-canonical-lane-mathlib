import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

def AffineVarietyWitnessClosed (O : AffineVarietyObject) : Prop :=
  O.isAffine ∧ O.isVariety

theorem affine_variety_witness_closed_from_object (O : AffineVarietyObject) :
    AffineVarietyWitnessClosed O := by
  exact O.conclusion

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse