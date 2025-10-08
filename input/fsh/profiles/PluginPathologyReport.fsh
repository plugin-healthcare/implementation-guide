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
Description: """DiagnosticReport as used within PLUGIN for Pathology. Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginPathologyReport).
"""
* ^status = #draft
* basedOn ..1

// Service category: this defines the report as a pathology report.
* category 1.. 
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Code die pathologieverslagen onderscheidt van OK-verslagen, radiologieverslagen, etc."
* category.coding contains serviceCode 1..1 MS
* category.coding[serviceCode].system 1..1
* category.coding[serviceCode].system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category.coding[serviceCode].code 1..
* category.coding[serviceCode].code from PluginPathologyReportCodes

// Code van verrichting/bevinding/rapport. Palga gebruikt hier de protocolnaam.
* code.text 1..

// Patiënt
* subject 1.. MS
* subject only Reference(Patient or nl-core-Patient or PluginPatient)

// Nodig?
// * performer 1..1
// * specimen 1..1

// Conclusie van het verslag in vrije tekst
* conclusion 1.. MS

// Conclusie van het verslag gecodeerd. Is deze informatie beschikbaar 
// in een EPD?
* conclusionCode MS

// Palga-flavoured SNOMED
* conclusionCode.coding ^slicing.discriminator.type = #value
* conclusionCode.coding ^slicing.discriminator.path = "system"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains snomed_palga 0..1 MS
* conclusionCode.coding[snomed_palga].system 1.. 
// SNOMED_PALGA refers to a (very) old version of snomed.
* conclusionCode.coding[snomed_palga].system = $SNOMED_PALGA
* conclusionCode.coding[snomed_palga].code 1..
* conclusionCode.coding[snomed_palga].display 1..

// ICD-o-3
* conclusionCode.coding contains icdo3 0..1 MS
* conclusionCode.coding[icdo3].system 1.. 
* conclusionCode.coding[icdo3].system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* conclusionCode.coding[icdo3].code 1..
* conclusionCode.coding[icdo3].display 1..



// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
ValueSet: PluginPathologyReportCodes
Id: plugin-pa-report-codes-vs
Title: "Pathology Report codes"
Description: "Waardelijst met codes die een pathologieverslag identificeren."
* $HL7_DX_SERVICE#CP "Cytopathology"
* $HL7_DX_SERVICE#SP "Pathology (gross & histopath, not surgical"

// PAT is deprecated in HL7 v2.9
* $HL7_DX_SERVICE#PAT "Surgical Pathology"



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
