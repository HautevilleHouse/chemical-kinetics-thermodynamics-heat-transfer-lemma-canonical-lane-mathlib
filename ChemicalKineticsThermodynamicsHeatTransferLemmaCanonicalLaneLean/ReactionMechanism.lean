import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ReactionMechanismPackage where
  elementarySteps : Type u
  rateConstants : Type v
  steadyStateApproximation : Prop
  preEquilibrium : Prop
  rateDeterminingStep : Prop

structure ReactionMechanismEvidence (R : ReactionMechanismPackage) where
  steadyStateApproximationClosed : R.steadyStateApproximation
  preEquilibriumClosed : R.preEquilibrium
  rateDeterminingStepClosed : R.rateDeterminingStep

def ReactionMechanismClosed (R : ReactionMechanismPackage) : Prop :=
  R.steadyStateApproximation ∧ R.preEquilibrium ∧ R.rateDeterminingStep

theorem reaction_mechanism_closed_from_evidence
    (R : ReactionMechanismPackage) (E : ReactionMechanismEvidence R) :
    ReactionMechanismClosed R := by
  exact And.intro E.steadyStateApproximationClosed
    (And.intro E.preEquilibriumClosed E.rateDeterminingStepClosed)

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse