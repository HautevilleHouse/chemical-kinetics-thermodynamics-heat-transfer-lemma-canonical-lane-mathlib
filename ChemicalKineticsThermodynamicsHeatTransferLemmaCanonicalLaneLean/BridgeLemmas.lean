import ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalKineticsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse