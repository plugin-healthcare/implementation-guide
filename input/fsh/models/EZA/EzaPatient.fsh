// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaPatient
Id: EzaPatient
Title: "EZA patient"
Description:  """Logisch model voor de tabel `patient` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_ehr_id 1..1 Identifier "Patient identifier in EHR." ""
* pat_db_id 1..1 Identifier "Patient identifier in EZA database." ""
* first_name 1..1 string "Voornaam patient." ""
* second_name 1..1 string "Achternaam patient." ""
* female 0..1 integer "Is de patient vrouw?" ""
* dt_birth 0..1 date "Overlijdensdatum." ""
* zip_code 0..1 time "Postcode in format XXXX YY van verblijfplaats patient." ""
