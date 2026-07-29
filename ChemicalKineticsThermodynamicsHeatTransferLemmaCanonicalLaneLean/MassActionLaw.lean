import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure MassActionLawPackage where
  reactionOrder : Type
  stoichiometricCoefficients : Type
  rateLawExpression : Prop
  elementaryReaction : Prop
  concentrationDependence : Prop
  rateDeterminingStep : Prop

structure MassActionLawEvidence (M : MassActionLawPackage) where
  rateLawExpressionClosed : M.rateLawExpression
  elementaryReactionClosed : M.elementaryReaction
  concentrationDependenceClosed : M.concentrationDependence
  rateDeterminingStepClosed : M.rateDeterminingStep

def MassActionLawClosed (M : MassActionLawPackage) : Prop :=
  M.rateLawExpression ∧ M.elementaryReaction ∧
  M.concentrationDependence ∧ M.rateDeterminingStep

theorem mass_action_law_closed_from_evidence (M : MassActionLawPackage)
    (E : MassActionLawEvidence M) : MassActionLawClosed M := by
  exact And.intro E.rateLawExpressionClosed
    (And.intro E.elementaryReactionClosed
      (And.intro E.concentrationDependenceClosed E.rateDeterminingStepClosed))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse