// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: EzaOps
Id: EzaOps
Title: "EZA ops"
Description:  """Logisch model voor de tabel `ops` zoals gebruikt binnen de use-case EZA.
Maturity Level: 0 Draft
"""
* pat_id 1..1 Identifier "Patient identifier in EHR." ""
* dt_or_start 1..1 date "Starttijd in operatiekamer." ""
* dt_or_stop 1..1 date "Eindtijd in operatiekamer." ""
* dt_op_start 1..1 date "Starttijd operatie procedure." ""
* dt_op_stop 1..1 date "Starttijd operatie procedure." ""
* minutes_or 1..1 date "Aantal minuten in operatie kamer." ""
* minutes_op 1..1 date "Aantal minuten operatie procedure." ""
* za_code 1..1 date "Zorg activiteit code." ""
* za_desc 1..1 date "Zorg activiteit beschrijving." ""
* spec 1..1 date "Specialisme betrokken bij operatie." ""
