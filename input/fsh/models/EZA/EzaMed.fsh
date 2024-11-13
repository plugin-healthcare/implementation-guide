// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaMed
Id: EzaMed
Title: "EZA med"
Description:  """Logisch model voor de tabel `med` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt_start 1..1 date "Moment van bevestiging voorschrijven medicatie." ""
* gpkcode 1..1 string "GPK code." ""
* hpkcode 1..1 string "HPK code." ""
* name 1..1 string "Naam medicijn." ""