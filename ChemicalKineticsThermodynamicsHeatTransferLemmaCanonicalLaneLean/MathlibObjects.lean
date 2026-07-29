import ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemicalSystem where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalKineticsAdmittedObject where
  system : ChemicalSystem
  reactionNetwork : Prop
  thermodynamicConsistency : Prop
  heatTransferModel : Type
  heatTransferTopology : TopologicalSpace heatTransferModel
  kineticsClosed : Prop
  conclusion : kineticsClosed

structure ChemicalKineticsEndgameState where
  object : ChemicalKineticsAdmittedObject

def ChemicalKineticsWitnessClosed (O : ChemicalKineticsAdmittedObject) : Prop :=
  O.kineticsClosed

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse