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
* gender 1..1 CodeableConcept "Geslacht" ""
* admission_id 1..1 Identifier "id van de opname" ""
* admission_date 1..1 date "Datum van opname." ""
* admission_time 0..1 time "Tijd van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* discharge_time 0..1 time "Tijd van ontslag." ""
* age_at_admission 1..1 integer "Leeftijd bij opname" ""
* urgency  0..1 code "Urgentie van de opname. Gecodeerd als 0: geen urgentie; 1: urgent" ""
* source_of_admission 0..1 string "" ""
* destination_after_discharge 0..1 string "" ""
