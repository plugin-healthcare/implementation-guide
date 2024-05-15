// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: PCPatient
Parent: NKRPatient
Id: PCPatient
Title: "PC Patient"
Description:  """Logical model for Patient as used for the PLUGIN use-case Palliative Care.
Maturity Level: 0 Draft
"""

// We're only dealing with deceased patients
* deceasedDate 1..1


