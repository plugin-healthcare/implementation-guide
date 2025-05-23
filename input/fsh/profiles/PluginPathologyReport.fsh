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

<!--
This profile is based on the [PalgaDiagnosticReport](https://simplifier.net/iknl-palga-r4/palgadiagnosticreport)
profile.
-->

**Vergelijking met Epic (@RUMC)**

__`DiagnosticReport.category`__

Epic stuurt 2 codes:
  - Pathologie (urn:oid:1.2.840.114350.1.13.357.2.7.10.798268.30)
  - LAB (https://terminology.hl7.org/6.0.2/CodeSystem-v2-0074.html)

De code `Pathologie` maakt gebruik van een codestelsel dat specifiek is voor Epic. Bij voorkeur wordt dit veranderd in `PAT` of `CP`.

De code `LAB` lijkt meer een overkoepelende term voor laboratoria.

__`DiagnosticReport.code`__

Epic stuurt 2 codes:
- 67307 (urn:oid:1.2.840.114350.1.13.357.2.7.2.696580)
- HISTOLOGIE (urn:oid:1.2.840.114350.1.13.357.2.7.5.737384.83)

Beide codes maken gebruik van een Epic-specifiek OID. De (internationale) FHIR IG benoemt de voorkeur voor LOINC. In Nederland worden (waarschijnlijk) PALGA-codes gebruikt [PALGA thesaurus](https://www.palga.nl/voor-pathologen/palga-on-line-thesaurus).

__`DiagnosticReport.result`__

`result` bevat momenteel 4 componenten (referenties naar Observations):
- Samenvatting
- Conclusie
- Macroscopie
- Microscopie

Deze componenten zijn (nog) niet gecodeerd.

**TODO:**
- Voorstel voor selectie PA-verslagen via codes `CP` en `SP` uit http://terminology.hl7.org/CodeSystem/v2-0074.




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
* conclusionCode 1.. 
* conclusionCode.coding ^slicing.discriminator.type = #value
* conclusionCode.coding ^slicing.discriminator.path = "system"
* conclusionCode.coding ^slicing.rules = #open
* conclusionCode.coding contains snomed_palga 1..1 MS
* conclusionCode.coding[snomed_palga].system 1.. 
// SNOMED_PALGA refers to a (very) old version of snomed.
* conclusionCode.coding[snomed_palga].system = $SNOMED_PALGA
* conclusionCode.coding[snomed_palga].code 1..
* conclusionCode.coding[snomed_palga].display 1..

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
