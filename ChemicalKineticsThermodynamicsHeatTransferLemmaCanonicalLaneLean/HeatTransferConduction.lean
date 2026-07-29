import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemma

structure HeatTransferConductionPackage where
  thermalConductivity : ℝ
  temperatureGradient : ℝ → ℝ
  heatFlux : ℝ → ℝ
  fourierLawApplied : Prop
  oneDimensionalSteadyState : Prop
  energyConservationInControlVolume : Prop
  boundaryConditionsApplied : Prop

structure HeatTransferConductionEvidence (H : HeatTransferConductionPackage) where
  thermalConductivityPositive : H.thermalConductivity > 0
  fourierLawAppliedClosed : H.fourierLawApplied
  oneDimensionalSteadyStateClosed : H.oneDimensionalSteadyState
  energyConservationInControlVolumeClosed : H.energyConservationInControlVolume
  boundaryConditionsAppliedClosed : H.boundaryConditionsApplied

def HeatTransferConductionClosed (H : HeatTransferConductionPackage) : Prop :=
  H.thermalConductivity > 0 ∧ H.fourierLawApplied ∧ H.oneDimensionalSteadyState ∧ H.energyConservationInControlVolume ∧ H.boundaryConditionsApplied

theorem heat_transfer_conduction_closed_from_evidence (H : HeatTransferConductionPackage) (E : HeatTransferConductionEvidence H) :
    HeatTransferConductionClosed H := by
  exact And.intro E.thermalConductivityPositive (And.intro E.fourierLawAppliedClosed (And.intro E.oneDimensionalSteadyStateClosed (And.intro E.energyConservationInControlVolumeClosed E.boundaryConditionsAppliedClosed)))

end ChemicalKineticsThermodynamicsHeatTransferLemma
end HautevilleHouse