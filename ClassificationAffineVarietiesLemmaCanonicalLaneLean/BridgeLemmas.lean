import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
