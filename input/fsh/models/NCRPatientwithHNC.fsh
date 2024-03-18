// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: NCRPatientwithHNC
Parent: NCRPatient
Id: NCRPatientwithHNC
Title: "NCR Patient (HNC)"
Description:  """Logical model for Patient as used for the PLUGIN use-case NCR-item.
Maturity Level: 0 Draft
"""

* diagnosisCode 1..1 CodeableConcept
    "Diagnosis code, registered using ICD-10."
    """"""
* diagnosisCode from HeadAndNeckCancerVS