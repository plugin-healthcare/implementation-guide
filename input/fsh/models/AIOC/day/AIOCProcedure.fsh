// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCProcedure
Id: AIOCProcedure
Title: "AIOC verrichtingen"
Description:  """Logisch model voor de tabel `verrichtingen` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 0..1 Identifier "id van de opname" ""
* procedure_date 1..1 date "Datum van verrichting." ""
* procedure_code 1..1 CodeableConcept "ZA of ZI code van de verrichting" ""