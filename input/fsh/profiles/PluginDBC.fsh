Profile: PluginDBC
Parent: EpisodeOfCare
Id: plugin-DBC
Title: "EpisodeOfCare - DBC"
Description: "DBC as used within PLUGIN."

// episodeOfCare Id from hospital
* identifier 1..1
* period.start 1..1
// only if available for aioc not important for day just for clinical admissions
* period.end 0..1
* patient 1..1
// add Practitioner for specialty code

// // Koppel practitioner met specialty via careTeam
// * careTeam 1..1
// * careTeam.member 1..1
// * careTeam.member only Reference(PluginPractitionerWithSpecialty)

// // add dbc specialty diagnosis and icd10 code. HOW?
// * diagnosis.coding[icd10].code 1..1
// * diagnosis.coding[dbc].code 1..1
