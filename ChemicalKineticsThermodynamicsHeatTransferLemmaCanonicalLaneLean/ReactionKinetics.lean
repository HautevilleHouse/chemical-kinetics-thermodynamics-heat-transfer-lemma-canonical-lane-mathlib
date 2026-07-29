import ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean.RiemannianCurvature

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ReactionKineticsPackage (G : ChemicalSystemPackage) where
  reactionRates : Type u
  rateLaws : Prop
  equilibriumConstant : Prop
  activationEnergy : Prop
  rateConstants : Prop

structure ReactionKineticsEvidence {G : ChemicalSystemPackage}
    (R : ReactionKineticsPackage G) where
  rateLawsClosed : R.rateLaws
  equilibriumConstantClosed : R.equilibriumConstant
  activationEnergyClosed : R.activationEnergy
  rateConstantsClosed : R.rateConstants

def ReactionKineticsClosed {G : ChemicalSystemPackage}
    (R : ReactionKineticsPackage G) : Prop :=
  R.rateLaws ∧ R.equilibriumConstant ∧ R.activationEnergy ∧ R.rateConstants

theorem reaction_kinetics_closed_from_evidence
    {G : ChemicalSystemPackage} (R : ReactionKineticsPackage G)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawsClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.activationEnergyClosed E.rateConstantsClosed))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse