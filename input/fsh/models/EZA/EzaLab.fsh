// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaLab
Id: EzaLab
Title: "EZA lab"
Description:  """Logisch model voor de tabel `lab` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Observatie moment." ""
* test 1..1 string "Type meting uitgevoerd." ""
* result 1..1 string "Uitslag van uitgevoerde meting." ""