import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage (C : ChemicalKineticsThermodynamicsHeatTransferPackage) where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  thermodynamicConsistency : Prop

structure ThermodynamicsEquilibriumEvidence {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (T : ThermodynamicsEquilibriumPackage C) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  thermodynamicConsistencyClosed : T.thermodynamicConsistency

def ThermodynamicsEquilibriumClosed {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (T : ThermodynamicsEquilibriumPackage C) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.thermodynamicConsistency

theorem thermodynamics_equilibrium_closed_from_evidence
    {C : ChemicalKineticsThermodynamicsHeatTransferPackage}
    (T : ThermodynamicsEquilibriumPackage C) (E : ThermodynamicsEquilibriumEvidence T) :
    ThermodynamicsEquilibriumClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed
        (And.intro E.gibbsFreeEnergyClosed
          (And.intro E.equilibriumConstantClosed E.thermodynamicConsistencyClosed))))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse