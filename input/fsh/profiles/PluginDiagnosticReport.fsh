// Profile: PluginPathologyReport
// Parent: http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-diagnostic-report
// Id: plugin-DiagnosticReport
// Description: "DiagnosticReport as used within PLUGIN for Pathology."


Alias: $nl-core-TextResult = http://nictiz.nl/fhir/StructureDefinition/nl-core-TextResult
Alias: $ = http://www.palga.nl/professionals/profession/protocollen
Alias: $palga-procedure-request = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-procedure-request
Alias: $palga-patient = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-patient
Alias: $palga-laboratory = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-laboratory
Alias: $palga-specimen = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-specimen
Alias: $palga-sample-observation = http://fhir.iknl.nl/fhir/iknl-palga-r4/StructureDefinition/palga-sample-observation

Profile: PluginPathologyReport
Parent: $nl-core-TextResult
Id: plugin-PathologyReport
Description: "DiagnosticReport as used within PLUGIN for Pathology."
* ^status = #draft
// * extension contains $ named protocol-version 0..1
* basedOn ..1
// * basedOn only Reference($palga-procedure-request)
* basedOn ^type.aggregation = #contained

// TODO:
//   We should make sure category allows for explicit selection of PATHOLOGY
//   reports. This might include cytology.
// * categegory 1..

* code.text 1..
* subject 1..
// * subject only Reference($palga-patient)
* subject ^type.aggregation = #bundled
* performer 1..1
// * performer only Reference($palga-laboratory)
* performer ^type.aggregation = #bundled
* specimen 1..1
// * specimen only Reference($palga-specimen)
* specimen ^type.aggregation = #contained
// * result only Reference($palga-sample-observation)
* result ^type.aggregation = #contained
* conclusion 1..
* conclusionCode 1..
* conclusionCode.coding ^slicing.discriminator.type = #value
* conclusionCode.coding ^slicing.discriminator.path = "system"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains snomedCodes 1..1
* conclusionCode.coding[snomedCodes].system 1..
// * conclusionCode.coding[snomedCodes].system = "urn:oid:2.16.840.1.113883.2.4.3.23.5.2"
* conclusionCode.coding[snomedCodes].system = $SNOMED
* conclusionCode.coding[snomedCodes].code 1..
* conclusionCode.coding[snomedCodes].display 1..

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
