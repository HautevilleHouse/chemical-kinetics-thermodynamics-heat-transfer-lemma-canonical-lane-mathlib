import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ThermodynamicStateVariablesPackage where
  internalEnergy : Type
  enthalpy : Type
  entropy : Type
  gibbsFreeEnergy : Type
  helmholtzFreeEnergy : Type
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  stateFunctionConsistency : Prop

structure ThermodynamicStateVariablesEvidence (T : ThermodynamicStateVariablesPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  stateFunctionConsistencyClosed : T.stateFunctionConsistency

def ThermodynamicStateVariablesClosed (T : ThermodynamicStateVariablesPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.stateFunctionConsistency

theorem thermodynamic_state_variables_closed_from_evidence
    (T : ThermodynamicStateVariablesPackage) (E : ThermodynamicStateVariablesEvidence T) :
    ThermodynamicStateVariablesClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed E.stateFunctionConsistencyClosed))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse