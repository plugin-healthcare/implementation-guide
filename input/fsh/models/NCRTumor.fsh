// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: NCRTumor
Id: NCRTumor
Title: "NCR Tumor"
Description:  """Logical model for a Tumor as used for the PLUGIN use-case NCR-item.
Maturity Level: 0 Draft
"""

* identifier 1..* Identifier "Tumor number" """"""
* incidenceDate 1..* dateTime "Incidence date. Algorithmically determined." """"""
* patient 1..1 Patient "Patient" """"""
* sequencenr 1..* integer "Tumor sequence nr." """Tumor sequence nr., relative to the patient."""
* topography 0..1 string "Topography" """"""
* morfology 0..1 string "Morphology" """"""
* grade 0..1 string "Grade" """"""
* behaviour 0..1 string "Behaviour" """"""
* cT 0..1 string "cT" """"""
* cN 0..1 string "cN" """"""
* cM 0..1 string "cM" """"""
* cStadium 0..1 string "cStadium" """"""
* cTnmEdition 0..1 string "Edition of the TNM classification system used." """"""
* pT 0..1 string "pT" """"""
* pN 0..1 string "pN" """"""
* pM 0..1 string "pM" """"""
* pStadium 0..1 string "pStadium" """"""
* pTnmEdition 0..1 string "Edition of the TNM classification system used." """"""
