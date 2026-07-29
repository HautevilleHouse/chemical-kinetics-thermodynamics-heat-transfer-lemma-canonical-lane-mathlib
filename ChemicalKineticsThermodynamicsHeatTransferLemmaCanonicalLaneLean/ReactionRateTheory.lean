import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ReactionRateTheoryPackage (C : ChemicalKineticsThermodynamicsHeatTransferPackage) where
  lawOfMassAction : Prop
  transitionStateTheory : Prop
  collisionTheory : Prop
  elementaryReactionSteps : Prop
  detailedBalancing : Prop

structure ReactionRateTheoryEvidence {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (R : ReactionRateTheoryPackage C) where
  lawOfMassActionClosed : R.lawOfMassAction
  transitionStateTheoryClosed : R.transitionStateTheory
  collisionTheoryClosed : R.collisionTheory
  elementaryReactionStepsClosed : R.elementaryReactionSteps
  detailedBalancingClosed : R.detailedBalancing

def ReactionRateTheoryClosed {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (R : ReactionRateTheoryPackage C) : Prop :=
  R.lawOfMassAction ∧ R.transitionStateTheory ∧ R.collisionTheory ∧ R.elementaryReactionSteps ∧ R.detailedBalancing

theorem reaction_rate_theory_closed_from_evidence
    {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (R : ReactionRateTheoryPackage C) (E : ReactionRateTheoryEvidence R) :
    ReactionRateTheoryClosed R := by
  exact And.intro E.lawOfMassActionClosed
    (And.intro E.transitionStateTheoryClosed
      (And.intro E.collisionTheoryClosed
        (And.intro E.elementaryReactionStepsClosed E.detailedBalancingClosed)))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse