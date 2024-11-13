// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaObservation
Id: EzaObservation
Title: "EZA flow"
Description:  """Logisch model voor de tabel `flow` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Observatie moment." ""
* test 1..1 string "Type meting uitgevoerd." ""
* result 1..1 string "Uitslag van uitgevoerde meting." ""