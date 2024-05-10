Profile: PluginCondition
Parent: Condition
Id: plugin-Condition
Description: """Condition as used within PLUGIN.
"""

* code 1..1 MS


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
* code.coding contains icd10coding 0..1
* code.coding[icd10coding].system = $ICD10NL
* code.coding[icd10coding].code 1..

// TODO: add a rule (or something else)

// Laterality extension from zibs2020
* bodySite.extension contains http://nictiz.nl/fhir/StructureDefinition/ext-AnatomicalLocation.Laterality named laterality 0..1 MS

* recordedDate 1..1 MS

// Apparently this is not allowed, since PluginPatient is not in the
// list of resources defined in the parent resource.
// * subject only Reference(PluginPatient)