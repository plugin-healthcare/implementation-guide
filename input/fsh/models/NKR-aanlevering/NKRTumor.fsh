Logical: NKRTumor
Id: NKRTumor
Title: "NKR Tumor"
Description:  """Logical model for a Tumor as used for the PLUGIN use-case
NKR-item.

Maturity Level: 0 Draft. Meerdere attributen moeten nog worden veranderd van
`string` naar `code` of `CodeableConcept`. Ook meerdere codestelsels en
waardenlijsten ontbreken nog.
"""

* id 1..* Identifier "Tumor identifier" """"""
* patient 1..1 NKRPatient "Patient" """"""
* sequencenr 1..* integer "Tumor sequence nr." """Tumor sequence nr., relative to the patient."""
* incidenceDate 1..* dateTime "Incidence date. Algorithmically determined." """"""

* topography 0..1 CodeableConcept "Topography" """"""
* topography from $ICDo3

* morfology 0..1 CodeableConcept "Morphology" """"""
* morfology from $ICDo3

* grade 0..1 string "Grade" """"""
* behaviour 0..1 string "Behaviour" """"""

* cTNM 0..1 Resource ""
  * cT 0..1 string "cT" """"""
  * cN 0..1 string "cN" """"""
  * cM 0..1 string "cM" """"""
  * cStadium 0..1 string "Stage grouping" """"""
  * cTnmEdition 0..1 string "Edition of the TNM classification system used." """"""

* pTNM 0..1 Resource ""
  * pT 0..1 string "pT" """"""
  * pN 0..1 string "pN" """"""
  * pM 0..1 string "pM" """"""
  * pStadium 0..1 string "Stage grouping" """"""
  * pTnmEdition 0..1 string "Edition of the TNM classification system used." """"""

* encounter 0..* NKREncounter "Encounters related to this tumor."
* treatment 0..* NKRBehandeling "Treatment related to this tumor."
* result 0..* NKRUitslag "Result related to this tumor."



Logical: NKRTumorHNC
Parent: NKRTumor
Id: NKRTumorHNC
Title: "NKR Tumor HNC"
Description:  """Logical model for a Head-and-Neck Tumor as used for the PLUGIN
use-case NKR-item.
Maturity Level: 0 Draft
"""
* topography 1..1
* topography from HeadAndNeckCancerConditionVS
* morfology from HeadAndNeckCancerMorphologyVS

