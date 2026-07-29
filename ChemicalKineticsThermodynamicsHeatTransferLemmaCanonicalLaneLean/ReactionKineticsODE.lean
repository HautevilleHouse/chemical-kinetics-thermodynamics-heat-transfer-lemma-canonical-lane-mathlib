import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemma

structure ReactionKineticsODEPackage where
  speciesCount : Nat
  rateCoefficients : List ℝ
  stoichiometricMatrix : List (List ℤ)
  initialConcentrations : List ℝ
  rateEquationsDefined : Prop
  massActionLawApplied : Prop
  wellMixedAssumption : Prop
  odeFormulationClosed : Prop

structure ReactionKineticsODEEvidence (R : ReactionKineticsODEPackage) where
  rateEquationsDefinedClosed : R.rateEquationsDefined
  massActionLawAppliedClosed : R.massActionLawApplied
  wellMixedAssumptionClosed : R.wellMixedAssumption
  odeFormulationClosedClosed : R.odeFormulationClosed

def ReactionKineticsODEClosed (R : ReactionKineticsODEPackage) : Prop :=
  R.rateEquationsDefined ∧ R.massActionLawApplied ∧ R.wellMixedAssumption ∧ R.odeFormulationClosed

theorem reaction_kinetics_ode_closed_from_evidence (R : ReactionKineticsODEPackage) (E : ReactionKineticsODEEvidence R) :
    ReactionKineticsODEClosed R := by
  exact And.intro E.rateEquationsDefinedClosed (And.intro E.massActionLawAppliedClosed (And.intro E.wellMixedAssumptionClosed E.odeFormulationClosedClosed))

end ChemicalKineticsThermodynamicsHeatTransferLemma
end HautevilleHouse