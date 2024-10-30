// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaCondition
Id: EzaCondition
Title: "EZA problem"
Description:  """Logisch model voor de tabel `prob` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Registratie moment." ""
* icd10 1..1 string "ICD-10 codering." ""
* dhd-dt 1..1 string "DHD diagnosethesaurus ID." ""