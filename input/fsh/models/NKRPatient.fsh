Logical: NKRPatient
Id: NKRPatient
Title: "NKR Patient"
Description:  """Logical model for Patient as used for the PLUGIN use-case NKR-item.
Maturity Level: 0 Draft
"""

* identifier 1..* Identifier "MRN" """Contains the patient's medical record number as used by the hospital."""
* name 0..* HumanName "Name of the patient." """"""
* gender 0..1 CodeableConcept "Gender/Sex" """Describes biological sex as recorded in the patient's identity document or in the hospital record. In the absence of documentation, the one declared by the patient will be recorded"""
* birthDate 0..1 date "Birth date of the patient"
* deceasedDate 0..1 date "Death date of the patient"
* address 1..* Address "nl.core.AddressInformation"
* tumor 1..* NKRTumor "Tumor"

