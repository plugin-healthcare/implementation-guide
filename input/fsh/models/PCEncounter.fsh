// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: PCEncounter
Id: PCEncounter
Title: "PC Encounter"
Description:  """Logical model for a hospital visit as used for the PLUGIN use-case Dashboard for Palliative Care.
Maturity Level: 0 Draft
"""

* identifier 1..* Identifier "Encounter identifier" """"""
* admissionDate 1..* dateTime "Date of admission." """"""
* dischargeDate 0..* dateTime "Date of discharge." """"""
* parent 0..1 Identifier "Reference to parent in case of sub-visit." """"""
* specialty 0..1 CodeableConcept "Responsible specialty." """"""
* unit 0..1 CodeableConcept "Responsible unit/location." """"""
