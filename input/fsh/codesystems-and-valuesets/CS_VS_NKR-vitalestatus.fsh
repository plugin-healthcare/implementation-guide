// -----------------------------------------------------------------------------
CodeSystem: NKRVitaleStatus
Id: nkr-vitstat
Title: "NKR Vitale Status"
Description: "Vitale status zoals gebruikt binnen de NKR."
// * ^url = "http://fhir.iknl.nl/nkr/CodeSystem/nkr-vitstat"
// * ^caseSensitive = true
* ^content = #complete
* #0 "levend" "Levend."
* #0 ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* #0 ^extension[=].valueString = "Levend."
* #1 "overleden" "Overleden."
* #1 ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* #1 ^extension[=].valueString = "Overleden"

// -----------------------------------------------------------------------------
ValueSet: NKRVitaleStatus
Id: nkr-vitstat
Title: "NKR Vitale Status"
Description: "Vitale status zoals gebruikt binnen de NKR."
* ^immutable = true
* include codes from system NKRVitaleStatus

