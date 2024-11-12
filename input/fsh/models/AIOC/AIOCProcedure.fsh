// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCProcedure
Id: AIOCProcedure
Title: "AIOC zorgactiviteiten"
Description:  """Logisch model voor de tabel `zorgactiviteiten` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 0..1 Identifier "id van de opname" ""
* admission_date 0..1 date "Datum van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* procedure_id 0..1 Identifier "id van de procedure" ""
* procedure_date 1..1 date "Datum van de procedure." ""
* zorgactiviteitcode 1..1 CodeableConcept "Code van de zorgacitiviteit" ""
* requesting_clinical_speciality 0..1 string "Aanvragend specialisme" ""
* executing_clinical_speciality 0..1 string "Uitvoerend specialisme" ""
* subtraject_id 0..1 Identifier "id van het (DBC) subtraject" ""
