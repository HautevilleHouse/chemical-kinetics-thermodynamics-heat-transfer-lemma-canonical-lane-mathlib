import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Type v
  leChatelierPrinciple : Prop
  vanHoffEquation : Prop
  phaseRule : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  leChatelierPrincipleClosed : T.leChatelierPrinciple
  vanHoffEquationClosed : T.vanHoffEquation
  phaseRuleClosed : T.phaseRule

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.leChatelierPrinciple ∧ T.vanHoffEquation ∧ T.phaseRule

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.leChatelierPrincipleClosed
    (And.intro E.vanHoffEquationClosed E.phaseRuleClosed)

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse