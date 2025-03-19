// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaOrd
Id: EzaOrd
Title: "EZA ord"
Description:  """Logisch model voor de tabel `ord` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt 1..1 date "Datetime of requesting order." ""
* name 1..1 date "Name of order." ""
* group 1..1 date "Group order belongs to." ""
