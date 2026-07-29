import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ThermochemicalCouplingPackage where
  reactionEnthalpy : Type
  heatCapacity : Type
  temperatureProfile : Type
  energyBalanceEquation : Prop
  temperatureReactionCoupling : Prop
  adiabaticFlameTemperature : Prop

structure ThermochemicalCouplingEvidence (T : ThermochemicalCouplingPackage) where
  energyBalanceEquationClosed : T.energyBalanceEquation
  temperatureReactionCouplingClosed : T.temperatureReactionCoupling
  adiabaticFlameTemperatureClosed : T.adiabaticFlameTemperature

def ThermochemicalCouplingClosed (T : ThermochemicalCouplingPackage) : Prop :=
  T.energyBalanceEquation ∧ T.temperatureReactionCoupling ∧ T.adiabaticFlameTemperature

theorem thermochemical_coupling_closed_from_evidence (T : ThermochemicalCouplingPackage)
    (E : ThermochemicalCouplingEvidence T) : ThermochemicalCouplingClosed T := by
  exact And.intro E.energyBalanceEquationClosed
    (And.intro E.temperatureReactionCouplingClosed E.adiabaticFlameTemperatureClosed)

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse