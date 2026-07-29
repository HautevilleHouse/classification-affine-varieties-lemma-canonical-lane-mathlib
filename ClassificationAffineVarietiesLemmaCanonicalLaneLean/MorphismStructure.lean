import HautevilleHouse.ClassificationAffineVarietiesLemmaCanonicalLaneLean.Nullstellensatz

namespace HautevilleHouse
namespace ClassificationAffineVarietiesLemmaCanonicalLaneLean

structure AffineMorphism (V W : AffineVariety) (C_V : CoordinateRing V) (C_W : CoordinateRing W) where
  underlyingMap : V.carrier → W.carrier
  pullback : C_W.ring → C_V.ring
  isAlgebraHomomorphism : IsRingHom pullback
  compatibleWithStructure : Prop

def affineMorphismWitness (V W : AffineVariety) (C_V : CoordinateRing V) (C_W : CoordinateRing W) (f : AffineMorphism V W C_V C_W) : Prop :=
  f.compatibleWithStructure

theorem pullback_is_ring_hom (V W : AffineVariety) (C_V : CoordinateRing V) (C_W : CoordinateRing W) (f : AffineMorphism V W C_V C_W) :
    IsRingHom f.pullback := by
  exact f.isAlgebraHomomorphism

end ClassificationAffineVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
