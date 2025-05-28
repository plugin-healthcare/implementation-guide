// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCCommunication
Id: AIOCCommunication
Title: "AIOC brievenverslagen"
Description:  """Logisch model voor de tabel `brievenverslagen` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 0..1 Identifier "id van de opname" ""
* document_type 1..1 CodeableConcept "?" ""
* clinical_speciality 1..1 CodeableConcept "Specialisme dat het document opstelde" ""
* publication_date 1..1 date "Datum van publicatie." ""
* text 1..1 string "Inhoud van het document" ""

// // -------------------------------------------------------------------------------
// //  CodeableConcepts
// // -------------------------------------------------------------------------------
// Instance: AIOCDocumentTypeVS
// Id: AIOCDocumentTypeVS
// Title: "AIOC Document Type Value Set"
// Description: "Value set voor de verschillende types documenten die in de AIOC use-case voorkomen."
// * ontslag "Ontslagbrief"
// * ok "Operatieverslag"
// * poli "Poliklinische brief"
// * pa "Poliklinische brief"
// * scopie "Scopieverslag"
// * pci/cag "PCI/CAG verslag"
// * seh "SEH verslag"
// * radiology "Radiologie verslag"
// * mdo "MDO verslag"
// * unknown "Onbekend"
// // -------------------------------------------------------------------------------

// -------------------------------------------------------------------------------
//  CodeSystem
// -------------------------------------------------------------------------------
Instance: AIOCDocumentTypeCS
InstanceOf: CodeSystem
Title: "AIOC Document Type CodeSystem"
Description: "CodeSystem voor de verschillende types documenten die in de AIOC use-case voorkomen."
Usage: #definition
* url = "https://plugin.healthcare/fhir/CodeSystem/aioc-document-type"
* name = "AIOCDocumentTypeCS"
* status = #active
* content = #complete
* concept[+].code = #ontslag
* concept[=].display = "Ontslagbrief"
* concept[+].code = #ok
* concept[=].display = "Operatieverslag"
* concept[+].code = #poli
* concept[=].display = "Poliklinische brief"
* concept[+].code = #pa
* concept[=].display = "Poliklinische brief"
* concept[+].code = #scopie
* concept[=].display = "Scopieverslag"
* concept[+].code = #pci-cag
* concept[=].display = "PCI/CAG verslag"
* concept[+].code = #seh
* concept[=].display = "SEH verslag"
* concept[+].code = #radiology
* concept[=].display = "Radiologie verslag"
* concept[+].code = #mdo
* concept[=].display = "MDO verslag"
* concept[+].code = #unknown
* concept[=].display = "Onbekend"

// -------------------------------------------------------------------------------
//  ValueSet
// -------------------------------------------------------------------------------
Instance: AIOCDocumentTypeVS
InstanceOf: ValueSet
Title: "AIOC Document Type Value Set"
Description: "ValueSet voor de verschillende types documenten die in de AIOC use-case voorkomen."
Usage: #definition
* url = "https://plugin.healthcare/fhir/ValueSet/aioc-document-type"
* name = "AIOCDocumentTypeVS"
* status = #active
* compose.include.system = "https://plugin.healthcare/fhir/CodeSystem/aioc-document-type"
