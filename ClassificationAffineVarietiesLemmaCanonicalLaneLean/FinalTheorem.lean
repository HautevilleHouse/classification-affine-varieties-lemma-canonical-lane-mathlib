import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

def ConstrainedAffineVarietiesClosure (A : AdmissibleAffineObject) : Prop :=
  affineBridgeClosed A ∧ affineGateClosed A

theorem constrained_affine_varieties_endgame (A : AdmissibleAffineObject) :
    ConstrainedAffineVarietiesClosure A := by
  exact And.intro (affine_bridge_from_admissible A) (affine_gate_from_admissible A)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
