import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure ReactionRateKineticsPackage where
  rateConstant : Type
  temperatureDependence : Prop
  activationEnergy : Prop
  arrheniusLaw : Prop
  elementaryReactionStep : Prop
  forwardRate : Prop
  backwardRate : Prop
  equilibriumConstant : Prop

structure ReactionRateKineticsEvidence (R : ReactionRateKineticsPackage) where
  temperatureDependenceClosed : R.temperatureDependence
  activationEnergyClosed : R.activationEnergy
  arrheniusLawClosed : R.arrheniusLaw
  elementaryReactionStepClosed : R.elementaryReactionStep
  forwardRateClosed : R.forwardRate
  backwardRateClosed : R.backwardRate
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionRateKineticsClosed (R : ReactionRateKineticsPackage) : Prop :=
  R.temperatureDependence ∧ R.activationEnergy ∧ R.arrheniusLaw ∧
  R.elementaryReactionStep ∧ R.forwardRate ∧ R.backwardRate ∧ R.equilibriumConstant

theorem reaction_rate_kinetics_closed_from_evidence (R : ReactionRateKineticsPackage)
    (E : ReactionRateKineticsEvidence R) : ReactionRateKineticsClosed R := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.arrheniusLawClosed
        (And.intro E.elementaryReactionStepClosed
          (And.intro E.forwardRateClosed
            (And.intro E.backwardRateClosed E.equilibriumConstantClosed)))))

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse