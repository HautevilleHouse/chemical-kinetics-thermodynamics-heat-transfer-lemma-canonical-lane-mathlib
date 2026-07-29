import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  basisSet : Type u
  hamiltonianMatrix : Type v
  overlapMatrix : Type w
  linearCombinationAtomicOrbitals : Prop
  variationalPrinciple : Prop
  hartreeFockMethod : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  linearCombinationAtomicOrbitalsClosed : M.linearCombinationAtomicOrbitals
  variationalPrincipleClosed : M.variationalPrinciple
  hartreeFockMethodClosed : M.hartreeFockMethod

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.linearCombinationAtomicOrbitals ∧ M.variationalPrinciple ∧ M.hartreeFockMethod

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.linearCombinationAtomicOrbitalsClosed
    (And.intro E.variationalPrincipleClosed E.hartreeFockMethodClosed)

end ChemicalKineticsThermodynamicsHeatTransferLemmaCanonicalLaneLean
end HautevilleHouse