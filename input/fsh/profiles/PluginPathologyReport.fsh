Alias: $nl-core-TextResult = http://nictiz.nl/fhir/StructureDefinition/nl-core-TextResult
// Alias: $ = http://www.palga.nl/professionals/profession/protocollen
Alias: $palga-procedure-request = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-procedure-request
Alias: $palga-patient = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-patient
Alias: $palga-laboratory = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-laboratory
Alias: $palga-specimen = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-specimen
Alias: $palga-sample-observation = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-sample-observation

Profile: PluginPathologyReport
Parent: $nl-core-TextResult
Id: plugin-pathologyreport
Title: "DiagnosticReport - Pathology"
Description: """DiagnosticReport as used within PLUGIN for Pathology.

This profile is based on the [PalgaDiagnosticReport](https://simplifier.net/iknl-palga-r4/palgadiagnosticreport)
profile.

**TODO:**
- Voorstel voor selectie PA-verslagen via codes `CP` en `SP` uit http://terminology.hl7.org/CodeSystem/v2-0074.

"""
* ^status = #draft
* basedOn ..1

* category 1..
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Code die pathologieverslagen onderscheid van OK-verslagen, radiologieverslagen, etc."
* category.coding contains serviceCode 1..1
* category.coding[serviceCode].system 1..1
* category.coding[serviceCode].system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category.coding[serviceCode].code 1..
* category.coding[serviceCode].code from PluginPathologyReportCodes

* code.text 1..
* subject 1..
* subject only Reference(Patient or nl-core-Patient or PluginPatient)
* performer 1..1
* specimen 1..1
* conclusion 1..
* conclusionCode 1..
* conclusionCode.coding ^slicing.discriminator.type = #value
* conclusionCode.coding ^slicing.discriminator.path = "system"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains snomedCodes 1..1
* conclusionCode.coding[snomedCodes].system 1..

// SNOMED_PALGA refers to a (very) old version of snomed.
* conclusionCode.coding[snomedCodes].system = $SNOMED_PALGA
* conclusionCode.coding[snomedCodes].code 1..
* conclusionCode.coding[snomedCodes].display 1..

// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
ValueSet: PluginPathologyReportCodes
Id: plugin-pa-report-codes-vs
Title: "Pathology Report codes"
Description: "Waardelijst met codes die een pathologieverslag identificeren."
* $HL7_DX_SERVICE#CP "Cytopathology"
* $HL7_DX_SERVICE#SP "Surgical Pathology"



// Mapping: zib-textresult-v4.4-2020EN
// Id: zib-textresult-v4.4-2020EN
// Title: "zib TextResult-v4.4(2020EN)"
// Source: PalgaDiagnosticReport
// Target: "https://zibs.nl/wiki/TextResult-v4.4(2020EN)"

// Mapping: iknl-palga
// Id: iknl-palga
// Source: PalgaDiagnosticReport
// Target: "http://fhir.iknl.nl/fhir/iknl-palga"
// * extension[protocol-version] -> "pversie"
// * code.text -> "protocolnaam"
// * conclusion -> "conclusie"
// * conclusionCode.coding[snomedCodes].code -> "diagp.codes" "codes voor diagnoseregel p"
// * conclusionCode.coding[snomedCodes].display -> "diagp" "diagnoseregel p"
