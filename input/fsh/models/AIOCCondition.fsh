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
* problemlist 1..1 list 
* diagnosing_clinical_specialty 0..1 string "Specialisme dat de diagnose stelde" ""
* main_diagnoses_indication 0..1 string "1: hoofddiagnose, 0: niet hoofddiagnose" ""
* primaire_diagnoses_indication 0..1 string "1: primaire diagnose, 0: niet primaire diagnose" ""
* NAS-indication 0..1 string "1: Niet aanwezig bij start opname, 2: wel aanwezig bij start opname" ""
