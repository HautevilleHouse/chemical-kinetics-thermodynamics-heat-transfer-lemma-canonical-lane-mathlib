import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ChemicalReactionDynamicsPackage where
  activationEnergy : Type u
  transitionState : Type v
  collisionTheory : Prop
  transitionStateTheory : Prop
  arrheniusEquation : Prop
  eyringEquation : Prop

structure ChemicalReactionDynamicsEvidence (C : ChemicalReactionDynamicsPackage) where
  collisionTheoryClosed : C.collisionTheory
  transitionStateTheoryClosed : C.transitionStateTheory
  arrheniusEquationClosed : C.arrheniusEquation
  eyringEquationClosed : C.eyringEquation

def ChemicalReactionDynamicsClosed (C : ChemicalReactionDynamicsPackage) : Prop :=
  C.collisionTheory ∧ C.transitionStateTheory ∧ C.arrheniusEquation ∧ C.eyringEquation

theorem chemical_reaction_dynamics_closed_from_evidence
    (C : ChemicalReactionDynamicsPackage) (E : ChemicalReactionDynamicsEvidence C) :
    ChemicalReactionDynamicsClosed C := by
  exact And.intro E.collisionTheoryClosed
    (And.intro E.transitionStateTheoryClosed
      (And.intro E.arrheniusEquationClosed E.eyringEquationClosed))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse