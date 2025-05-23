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
* code 1..
* subject only Reference(Patient or nl-core-Patient or PluginPatient)
* reasonReference 1..
// * reasonReference only Reference(Condition or PluginCondition)
* bodySite.extension[laterality] ^sliceName = "laterality"
* bodySite.extension[laterality] ^mustSupport = true