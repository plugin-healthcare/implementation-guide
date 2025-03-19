// TODO define how the RadiologyReport data will be stored

// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaRadiologyReport
Id: EzaRadiologyReport
Title: "EZA RadiologyReport"
Description:  """Logisch model voor de tabel `RadiologyReport` zoals gebruikt binnen de use-case EZA i.s.m. Argus MedxAI.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Moment van registratie." ""
* text 1..1 string "Plain text of the report" ""