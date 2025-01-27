// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCAdmission
Id: AIOCAdmission
Title: "AIOC opname"
Description:  """Logisch model voor de tabel `opname` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 1..1 Identifier "id van de opname" ""
* subtraject_id 1..1 Identifier "id van het subtraject" ""
* admission_date 1..1 date "Datum van opname." ""
* admission_time 0..1 time "Tijd van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* discharge_time 0..1 time "Tijd van ontslag." ""
* age 1..1 integer "Leeftijd bij opname" ""
* gender 1..1 CodeableConcept "Gender" ""
* specialty_code 1..1 CodeableConcept "Specialisme code" ""
* dbc_diagnosis_code 1..1 CodeableConcept "DBC diagnose code" ""
* dbc_specialty_code 1..1 CodeableConcept "DBC specialisme code" ""
* icd10_subtraject_code 1..1 CodeableConcept "ICD10 subtraject code" ""
* icd10_main_code 0..1 CodeableConcept "ICD10 hoofddiagnose code alleen verplicht voor traindata" ""
