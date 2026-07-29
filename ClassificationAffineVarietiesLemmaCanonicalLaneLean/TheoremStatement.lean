import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVarietiesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AffineVarietiesAdmittedObject where
  space : AffineVarietiesSpace
  affineVariety : Prop
  dimensionTwo : Prop
  classificationComplete : Prop
  conclusion : classificationComplete

structure AffineVarietiesEndgameState where
  object : AffineVarietiesAdmittedObject

def AffineVarietiesWitnessClosed (O : AffineVarietiesAdmittedObject) : Prop :=
  O.classificationComplete

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse