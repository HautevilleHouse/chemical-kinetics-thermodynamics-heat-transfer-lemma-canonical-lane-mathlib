import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ChemicalKineticsThermodynamicsHeatTransferPackage where
  systemState : Type u
  temperatureField : Type v
  speciesConcentration : Type w
  rateConstant : Type x
  activationEnergy : Type y
  enthalpyChange : Type z
  reactionRateEquation : Prop
  arrheniusLaw : Prop
  heatConductionEquation : Prop
  conservationLaws : Prop
  equilibriumCondition : Prop

structure ChemicalKineticsThermodynamicsHeatTransferEvidence (C : ChemicalKineticsThermodynamicsHeatTransferPackage) where
  reactionRateEquationClosed : C.reactionRateEquation
  arrheniusLawClosed : C.arrheniusLaw
  heatConductionEquationClosed : C.heatConductionEquation
  conservationLawsClosed : C.conservationLaws
  equilibriumConditionClosed : C.equilibriumCondition

def ChemicalKineticsThermodynamicsHeatTransferClosed (C : ChemicalKineticsThermodynamicsHeatTransferPackage) : Prop :=
  C.reactionRateEquation ∧ C.arrheniusLaw ∧ C.heatConductionEquation ∧ C.conservationLaws ∧ C.equilibriumCondition

theorem chem_kin_thermo_heat_transfer_closed_from_evidence
    (C : ChemicalKineticsThermodynamicsHeatTransferPackage)
    (E : ChemicalKineticsThermodynamicsHeatTransferEvidence C) :
    ChemicalKineticsThermodynamicsHeatTransferClosed C := by
  exact And.intro E.reactionRateEquationClosed
    (And.intro E.arrheniusLawClosed
      (And.intro E.heatConductionEquationClosed
        (And.intro E.conservationLawsClosed E.equilibriumConditionClosed)))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse