// -------------------------------------------------------------------------------
//  Logical Model for ER visit
// -------------------------------------------------------------------------------
Logical: EzaERvisit
Id: EzaERvisit
Title: "EZA ER visit"
Description:  """Logisch model voor de ER visits (SEH registraties) zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* case_ehr_id 1..1 Identifier "Opname registratie nummer." ""
* arrival_dt 1..1 integer "Aankomst datumtijd." ""
* departure_dt  0..1 code "Datumtijd vertrek." ""
* minutes_er 0..1 string "Aantal minuten op SEH." ""
* triage 0..1 string "Triagecode (urgency) U0 - U4" ""
* route 0..1 string "Transportmethode om bij SEH te komen" ""
* outcome 0..1 string "Uitkomst van SEH bezoek" ""
* spec 0..1 string "Specialisme" ""
* location 0..1 string "Lokatie (gebouw)." ""
* dept_code 0..1 string "Afdelingscode" ""
* room 0..1 string "Kamer code" ""
* bed 0..1 string "Bed nummer" ""
* case_type 0..1 string "Type opname" ""
* present 0..1 string "Is de patiënt momenteel aanwezig?" ""


// -------------------------------------------------------------------------------
//  Logical Model for Admission
// -------------------------------------------------------------------------------
Logical: EzaAdmission
Id: EzaAdmission
Title: "EZA opname"
Description:  """Logisch model voor de tabel `opname` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EZA database." ""
* case_ehr_id 1..1 Identifier "Opname registratie nummer. Uit EHR systeem." ""
* arrival_dt 1..1 integer "Aankomst datumtijd." ""
* departure_dt  0..1 code "Datumtijd vertrek." ""
* spec 0..1 string "Specialisme" ""
* emerg_adm 0..1 string "Is er sprake van een spoedopname?" ""
* location 0..1 string "Lokatie (gebouw)." ""
* dept_code 0..1 string "Afdelingscode" ""
* room 0..1 string "Kamer code" ""
* bed 0..1 string "Bed nummer" ""
* disch_dest 0..1 string "Ontslag bestemming." ""
* case_type 0..1 string "Type opname" ""
* present 0..1 string "Is de patiënt momenteel aanwezig?" ""