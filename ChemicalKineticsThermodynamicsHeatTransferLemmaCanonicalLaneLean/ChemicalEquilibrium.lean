import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactionQuotient : Type
  equilibriumConstant : Type
  leChatelierPrinciple : Prop
  gibbsFreeEnergyMinimization : Prop
  equilibriumCondition : Prop
  temperatureEffect : Prop
  pressureEffect : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : E.leChatelierPrinciple
  gibbsFreeEnergyMinimizationClosed : E.gibbsFreeEnergyMinimization
  equilibriumConditionClosed : E.equilibriumCondition
  temperatureEffectClosed : E.temperatureEffect
  pressureEffectClosed : E.pressureEffect

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.leChatelierPrinciple ∧ E.gibbsFreeEnergyMinimization ∧
  E.equilibriumCondition ∧ E.temperatureEffect ∧ E.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage)
    (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E := by
  exact And.intro Ev.leChatelierPrincipleClosed
    (And.intro Ev.gibbsFreeEnergyMinimizationClosed
      (And.intro Ev.equilibriumConditionClosed
        (And.intro Ev.temperatureEffectClosed Ev.pressureEffectClosed)))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse