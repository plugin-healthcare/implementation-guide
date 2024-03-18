Profile: PluginCondition
Parent: Condition
Id: plugin-Condition
Description: "Condition as used within PLUGIN."

* code 1..1 MS

// This works, but the constraint should be on code.coding?
// * code from $ICD10NL

// This works.
// * code.coding 1..* MS
// * code.coding from $ICD10NL

// This works too and might be more flexible. It defines that there should
// be _at least_ an ICD-10 code.
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains icd10coding 1..1
* code.coding[icd10coding].system = $ICD10NL
* code.coding[icd10coding].code 1..

// Laterality extension from zibs2020
* bodySite.extension contains http://nictiz.nl/fhir/StructureDefinition/ext-AnatomicalLocation.Laterality named laterality 0..1 MS

* recordedDate 1..1 MS

// Apparently this is not allowed, since PluginPatient is not in the
// list of resources defined in the parent resource.
// * subject only Reference(PluginPatient)