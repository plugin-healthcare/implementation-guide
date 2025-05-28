// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCAdmission
Id: AIOCAdmission
Title: "AIOC opname"
Description:  """Logisch model voor de tabel `opname` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 1..1 Identifier "id van de opname" ""
* admission_date 1..1 date "Datum van opname." ""
* admission_time 0..1 time "Tijd van opname." ""
* discharge_date 0..1 date "Datum van ontslag." ""
* discharge_time 0..1 time "Tijd van ontslag." ""
* age_dimension 1..1 CodeableConcept "Leeftijd dimensie "
* age_at_admission 1..1 integer "Leeftijd bij opname" ""
* gender 1..1 CodeableConcept "Geslacht" ""
* urgency  0..1 code "Urgentie van de opname. Gecodeerd als 0: geen urgentie; 1: urgent" ""
* source_of_admission 0..1 string "" ""
* destination_after_discharge 0..1 string "" ""
* clinical_specialty 1..1 CodeableConcept "First or main specialisme code of admission" ""

// -------------------------------------------------------------------------------
// CodeSystem AIOCAgeDimensionCS
// -------------------------------------------------------------------------------
CodeSystem: AIOCAgeDimensionCS
Id: AIOCAgeDimensionCS
Title: "AIOC Age Dimension Code System"
Description: "A code system for age dimension"
* ^status = #draft
* #1 "Jaren" "Age measured in years."
* #2 "Maanden" "Age measured in months."
* #3 "Dagen" "Age measured in days."

// -------------------------------------------------------------------------------
// CodeSystem AIOCGenderCS
// -------------------------------------------------------------------------------
CodeSystem: AIOCGenderCS
Id: AIOCGender
Title: "AIOC Gender Dimension Code System"
Description: "A code system for gender dimension of the patient"
* ^status = #draft
* #0 "Onbekend" "Gender of the patient is unknown"
* #1 "Mannelijk" "Gender of the patient is male"
* #2 "Vrouwelijk" "Gender of the patient is female"
* #3 "Overig" "Gender of the patient is other"
// -------------------------------------------------------------------------------
// CodeSystem AIOCUrgencyCS
// -------------------------------------------------------------------------------
CodeSystem: AIOCUrgencyCS
Id: AIOCUrgencyCS
Title: "AIOC Urgency Code System"
Description: "A code system for urgency of the admission"
* ^status = #draft
* #0 "Geen urgentie" "No urgency"
* #1 "Urgent" "Urgent"
// -------------------------------------------------------------------------------
// CodeSystem AIOCSourceOfAdmissionCS
// -------------------------------------------------------------------------------
CodeSystem: AIOCSourceOfAdmissionCS
Id: AIOCSourceOfAdmissionCS
Title: "AIOC Source of Admission Code System"
Description: "A code system for source of admission"
* ^status = #draft
* #0 "Eigen woonomgeving" "Own living environment."
* #1 "Instelling voor revalidatie" "Rehabilitation facility."
* #2 "Instelling voor verpleging/verzorging" "Nursing/care facility."
* #3 "Psychiatrisch ziekenhuis" "Psychiatric hospital."
* #4 "(Ander) academisch ziekenhuis" "Other academic hospital."
* #5 "(Ander) algemeen ziekenhuis" "Other general hospital."
* #6 "(Ander) categoraal ziekenhuis" "Other categorical hospital."
* #7 "(Ander) ZBC" "Other Independent Treatment Center (ZBC)."
* #8 "Geboren in dit ziekenhuis" "Born in this hospital."
* #9 "Overige instellingen" "Other institutions."
* #12 "Ziekenhuis in het buitenland" "Hospital abroad."
* #13 "Hospice" "Hospice."
// -------------------------------------------------------------------------------
// CodeSystem AIOCDestinationAfterDischargeCS
// -------------------------------------------------------------------------------
CodeSystem: AIOCDestinationAfterDischargeCS
Id: AIOCDestinationAfterDischargeCS
Title: "AIOC Destination After Discharge Code System"
Description: "A code system for destination after discharge"
* ^status = #draft
* #0 "Eigen woonomgeving" "Own living environment."
* #1 "Instelling voor revalidatie" "Rehabilitation facility."
* #2 "Instelling voor verpleging/verzorging" "Nursing/care facility."
* #3 "Psychiatrisch ziekenhuis" "Psychiatric hospital."
* #4 "(Ander) academisch ziekenhuis" "Other academic hospital."
* #5 "(Ander) algemeen ziekenhuis" "Other general hospital."
* #6 "(Ander) categoraal ziekenhuis" "Other categorical hospital."
* #7 "(Ander) ZBC" "Other Independent Treatment Center (ZBC)."
* #8 "Geboren in dit ziekenhuis" "Born in this hospital."
* #9 "Overige instellingen" "Other institutions."
* #12 "Ziekenhuis in het buitenland" "Hospital abroad."
* #13 "Hospice" "Hospice."
// -------------------------------------------------------------------------------


