Logical: NKREncounter
Id: NKREncounter
Title: "NKR Encounter"
Description:  """Logical model for a hospital visit as used for the PLUGIN use-case NCR-item.

The NKR registers patients' first hospital visit.

Maturity Level: 0 Draft
"""

* identifier 1..* Identifier "Encounter identifier" """"""
* patient 1..1 NKRPatient "Patient" """"""
* type 0..1 CodeableConcept "Encounter type" """Inpatient, outpatient, ..."""
* hospital 0..1 CodeableConcept "Hospital" """Hospital visited by the patient."""
* admissionDate 1..* dateTime "Date of admission." """"""
* dischargeDate 0..* dateTime "Date of discharge." """"""
* parent 0..1 Identifier "Reference to parent in case of sub-visit." """"""
* specialty 0..1 CodeableConcept "Responsible specialty." """"""
* unit 0..1 CodeableConcept "Responsible unit/location." """"""
