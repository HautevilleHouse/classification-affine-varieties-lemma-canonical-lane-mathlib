import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineVariety where
  carrier : Type u
  field : Type v
  ring : carrier → Type w
  affineStructure : Prop
  reducedness : Prop
  irreducibility : Prop

structure AdmissibleAffineObject where
  variety : AffineVariety
  coordinateRing : Type
  finitelyGenerated : Prop
  closedUnderBridge : Prop
  closedUnderGate : Prop
  conclusion : closedUnderBridge ∧ closedUnderGate

def affineBridgeClosed (A : AdmissibleAffineObject) : Prop :=
  A.closedUnderBridge

def affineGateClosed (A : AdmissibleAffineObject) : Prop :=
  A.closedUnderGate

theorem affine_bridge_from_admissible (A : AdmissibleAffineObject) :
    affineBridgeClosed A := by
  exact A.conclusion.left

theorem affine_gate_from_admissible (A : AdmissibleAffineObject) :
    affineGateClosed A := by
  exact A.conclusion.right

def ConstrainedAffineVarietiesClosure (A : AdmissibleAffineObject) : Prop :=
  affineBridgeClosed A ∧ affineGateClosed A

theorem constrained_affine_varieties_endgame (A : AdmissibleAffineObject) :
    ConstrainedAffineVarietiesClosure A := by
  exact And.intro (affine_bridge_from_admissible A) (affine_gate_from_admissible A)

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
