Profile: PluginCondition
Parent: nl-core-Problem
Id: plugin-condition
Title: "Condition"
Description: """Condition as used within PLUGIN. Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginCondition).
"""

* clinicalStatus MS
* verificationStatus MS
* verificationStatus from PluginActiveConditions
* code 1..1 MS

// At least 1 code should be present.
* code.coding 1..

// Define a slice for DHD diagnosethesaurus
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains dhd_dx_th 0..1
* code.coding[dhd_dx_th].system = $DHD_DX_TH
* code.coding[dhd_dx_th].code 1..

// Define a slice for icd10
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains icd10 0..1
* code.coding[icd10].system = $ICD10NL
* code.coding[icd10].code 1..

// Rule that defines (at least) one of icd10 or dxt should be present.
* code.coding obeys plugin-condition-1


// Laterality extension from zibs2020
* bodySite.extension contains http://nictiz.nl/fhir/StructureDefinition/ext-AnatomicalLocation.Laterality named laterality 0..1 MS

* encounter MS

* recordedDate 1..1 MS

// Probably need just 1 of these ..?
* recorder MS
* asserter MS

// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
Invariant: plugin-condition-1
Description: "code SHALL at least contain a code from ICD-10 or the DHD diagnosethesaurus"
Expression: "code.coding[dhd_dx_th].exists() or code.coding[icd10].exists()"
Severity: #error
XPath: "f:code.coding[dhd_dx_th] or f:code.coding[icd10]"


// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
ValueSet: PluginActiveConditions
Id: plugin-active-conditions-vs
Title: "Actieve diagnoses"
Description: "Subset van actieve diagnoses voor `Condition.verificationStatus`"
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-ver-status
* exclude http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* exclude http://terminology.hl7.org/CodeSystem/condition-ver-status#entered-in-error


