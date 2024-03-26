// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCEpisodeOfCare
Id: AIOCEpisodeOfCare
Title: "AIOC subtrajecten"
Description:  """Logisch model voor de tabel `subtrajecten` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 1..1 Identifier "id van de opname" ""
* admission_date 1..1 date "Datum van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* subtraject_id 1..1 Identifier "id van het (DBC) subtraject" ""
* dbc_specialitycode 1..1 CodeableConcept "Code van het specialisme dat eigenaar is van de DBC" ""
* dbc_diagnosecode 1..1 CodeableConcept "Code van de diagnose van de DBC" ""
