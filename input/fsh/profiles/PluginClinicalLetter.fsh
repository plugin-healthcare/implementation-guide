// Alias: $IHE.MHD.Minimal.DocumentReference = http://nictiz.nl/fhir/StructureDefinition/IHE.MHD.Minimal.DocumentReference
Alias: $IHE.MHD.Minimal.DocumentReference = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference

Profile: PluginDocumentReference
Parent: $IHE.MHD.Minimal.DocumentReference
Id: plugin-documentreference
Title: "DocumentReference"
Description: """Profile for documents, such as clinical letters and (surgery) reports, 
as used within PLUGIN. Copied from the [ZorgViewer IG](https://implementatiegids.zorgviewer.nl/StructureDefinition-DocumentReference.html) 
(referencing was not technically possible since this IG uses R4)."""

* obeys plugin-cl-1
* status MS
* type MS
// * type ^binding.strength = #extensible
// * type ^binding.valueSet = "http://fhir.hl7.nl/zorgviewer/ValueSet/DocumentLOINCCodelist"
* category MS
* category ^binding.strength = #extensible
* category ^binding.valueSet = "http://fhir.hl7.nl/zorgviewer/ValueSet/DocumentLOINCCodelist"
* author MS
* author ^comment = "Expect the references Practitioner to have his Organization"
* description MS
* content.attachment MS
* content.attachment.contentType MS
* content.attachment.url 1.. MS
* context.period.start MS

Invariant: plugin-cl-1
Description: "Only documents with status 'current' (final documents) are expected."
* severity = #error
* expression = "status='current'"
* xpath = "/f:status='current'"

