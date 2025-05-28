Alias: $nl-core-Procedure-event = http://nictiz.nl/fhir/StructureDefinition/nl-core-Procedure-event
Alias: $workflow-episodeOfCare = http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare

Profile: PluginProcedure
Parent: nl-core-Procedure-event
Id: plugin-procedure
Title: "Procedure"
Description: """Procedure as used within PLUGIN. Inherits from
[nl-core-Procedure-event](https://simplifier.net/nictiz-r4-zib2020/nlcoreprocedureevent). Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginProcedure).
"""
* ^status = #draft
* extension 1..
* extension contains $workflow-episodeOfCare named episodeOfCare 1..1
* extension[episodeOfCare] ^isModifier = false
// force episodeOfCare period start datetime to be present
// * extension[episodeOfCare].extension[period].extension[start] 1..1
* code 1..
// make sure ZA code is present
// * code ^binding.ValueSet = "http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.14.1.5--20200901000000"

* subject only Reference(Patient or nl-core-Patient or PluginPatient)
* reasonReference 1..
// * reasonReference only Reference(Condition or PluginCondition)
* bodySite.extension[laterality] ^sliceName = "laterality"
* bodySite.extension[laterality] ^mustSupport = true

// telt ook voor CAG/PCI, OK en scopie denk ik
* performer 1..1
// * report.TextResult 0..*
// * report.textResult.effective[x].effectiveDateTime 1..1