// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCCondition
Id: AIOCCondition
Title: "AIOC diagnoses"
Description:  """Logisch model voor de tabel `diagnoses` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 1..1 Identifier "id van de opname" ""
* admission_date 1..1 date "Datum van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* ICD-10_diagnosecode 0..1 CodeableConcept "ICD-code van diagnose" ""
* diagnosing_clinical_specialty 0..1 string "Specialisme dat de diagnose stelde" ""
* hoofddiagnose_indicatie 0..1 string "?" ""
* primaire_diagnose_indicatie 0..1 string "?" ""
* NAS-indicatie 0..1 string "?" ""
