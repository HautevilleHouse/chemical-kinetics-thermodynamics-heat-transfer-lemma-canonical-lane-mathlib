import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure HeatTransferMechanismsPackage (C : ChemicalKineticsThermodynamicsHeatTransferPackage) where
  conductionModel : Prop
  convectionModel : Prop
  radiationModel : Prop
  heatEquationWithSource : Prop
  heatTransferCoefficients : Prop
  boundaryConditions : Prop

structure HeatTransferMechanismsEvidence {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (H : HeatTransferMechanismsPackage C) where
  conductionModelClosed : H.conductionModel
  convectionModelClosed : H.convectionModel
  radiationModelClosed : H.radiationModel
  heatEquationWithSourceClosed : H.heatEquationWithSource
  heatTransferCoefficientsClosed : H.heatTransferCoefficients
  boundaryConditionsClosed : H.boundaryConditions

def HeatTransferMechanismsClosed {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (H : HeatTransferMechanismsPackage C) : Prop :=
  H.conductionModel ∧ H.convectionModel ∧ H.radiationModel ∧ H.heatEquationWithSource ∧ H.heatTransferCoefficients ∧ H.boundaryConditions

theorem heat_transfer_mechanisms_closed_from_evidence
    {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (H : HeatTransferMechanismsPackage C) (E : HeatTransferMechanismsEvidence H) :
    HeatTransferMechanismsClosed H := by
  exact And.intro E.conductionModelClosed
    (And.intro E.convectionModelClosed
      (And.intro E.radiationModelClosed
        (And.intro E.heatEquationWithSourceClosed
          (And.intro E.heatTransferCoefficientsClosed E.boundaryConditionsClosed))))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse