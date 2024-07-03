// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaAdmission
Id: EzaAdmission
Title: "EZA opname"
Description:  """Logisch model voor de tabel `opname` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* case_ehr_id 1..1 Identifier "Opname registratie nummer." ""
* first_name 1..1 string "Voornaam patient." ""
* second_name 1..1 string "Achternaam patient." ""
* female 0..1 integer "Is de patient vrouw?" ""
* dt_birth 0..1 date "Overlijdensdatum." ""
* zip_code 0..1 time "Postcode in format XXXX YY van verblijfplaats patient." ""
* arrival_dt 1..1 integer "Aankomst datumtijd." ""
* departure_dt  0..1 code "Datumtijd vertrek." ""
* minutes_er 0..1 string "Aantal minuten op SEH." ""
* triage 0..1 string "Triagecode (urgency) U0 - U4" ""
* route 0..1 string "Transportmethode om bij SEH te komen" ""
* outcome 0..1 string "Uitkomst van SEH bezoek" ""
* spec 0..1 string "Specialisme" ""
* emerg_adm 0..1 string "Is er sprake van een spoedopname?" ""
* location 0..1 string "Lokatie (gebouw)." ""
* dept_code 0..1 string "Afdelingscode" ""
* room 0..1 string "Kamer code" ""
* bed 0..1 string "Bed nummer" ""
* disch_dest 0..1 string "Ontslag bestemming." ""
* case_type 0..1 string "Type opname" ""
* present 0..1 string "Is de patiënt momenteel aanwezig?" ""




