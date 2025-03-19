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

// -------------------------------------------------------------------------------
//  CodeableConcepts
// -------------------------------------------------------------------------------
CodeableConcept: AIOCDocumentTypeVS
Id: AIOCDocumentTypeVS
Title: "AIOC Document Type Value Set"
Description: "Value set voor de verschillende types documenten die in de AIOC use-case voorkomen."
* ontslag "Ontslagbrief"
* ok "Operatieverslag"
* poli "Poliklinische brief"
* pa "Poliklinische brief"
* scopie "Scopieverslag"
* pci/cag "PCI/CAG verslag"
* seh "SEH verslag"
* radiology "Radiologie verslag"
* mdo "MDO verslag"
* unknown "Onbekend"
// -------------------------------------------------------------------------------


