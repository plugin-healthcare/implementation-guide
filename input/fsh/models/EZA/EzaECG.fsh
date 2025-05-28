// TODO define how the ECG data will be stored

// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaECG
Id: EzaECG
Title: "EZA ECG"
Description:  """Logisch model voor de tabel `ECG` zoals gebruikt binnen de use-case EZA i.s.m. Argus MedxAI.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Moment van registratie." ""
* value 1..1 string "Waarden uit de meting." ""
