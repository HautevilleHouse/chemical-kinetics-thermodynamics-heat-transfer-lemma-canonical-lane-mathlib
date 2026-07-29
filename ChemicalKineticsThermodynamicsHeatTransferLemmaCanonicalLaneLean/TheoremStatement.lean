import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure KineticsAdmittedObject where
  temperature : Type
  pressure : Type
  rateConstant : Type
  equilibriumConstant : Type
  heatTransferCoefficient : Type
  reactionRateLaw : Prop
  thermodynamicConsistency : Prop
  heatTransferConservation : Prop
  conclusion : reactionRateLaw ∧ thermodynamicConsistency ∧ heatTransferConservation

structure KineticsWitnessClosed (O : KineticsAdmittedObject) : Prop :=
  O.conclusion

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse