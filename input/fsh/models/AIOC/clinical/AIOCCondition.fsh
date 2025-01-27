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
* discharge_date 1..1 date "Datum van ontslag." ""
* icd10_diagnosis_code 0..1 CodeableConcept "ICD-code van diagnose" "mandatory for traindata"
* problemlist 0..1 value[x] only CodeableConcept "Probleemlijst" "" 
* diagnosing_clinical_specialty 1..1 CodeableConcept "Specialisme dat de diagnose stelde" ""
* main_diagnosis_indication 1..1 bool "1: hoofddiagnose, 0: niet hoofddiagnose" ""
* primary_diagnosis_indication 1..1 bool "1: primaire diagnose, 0: niet primaire diagnose" ""
* nas_indication 1..1 bool "1: Niet aanwezig bij start opname, 2: wel aanwezig bij start opname" ""

