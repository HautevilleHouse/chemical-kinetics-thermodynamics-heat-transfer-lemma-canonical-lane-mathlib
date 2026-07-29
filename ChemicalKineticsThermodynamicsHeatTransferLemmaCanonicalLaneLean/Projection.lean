import ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def chemicalKineticsProjection : Projection ChemicalKineticsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem chemical_kinetics_projection_idempotent (x : ChemicalKineticsEndgameState) :
    chemicalKineticsProjection.toFun (chemicalKineticsProjection.toFun x) = chemicalKineticsProjection.toFun x := by
  exact chemicalKineticsProjection.idempotent x

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse