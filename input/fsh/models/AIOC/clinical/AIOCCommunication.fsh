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
* clinical_speciality 1..1 string "Specialisme dat het document opstelde" ""
* publication_date 1..1 date "Datum van publicatie." ""
* text 1..1 string "Inhoud van het document" ""
