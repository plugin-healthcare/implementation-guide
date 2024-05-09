// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: AIOCAdmissionClinical
Id: AIOCAdmissionClinical
Title: "AIOC klinische opname"
Description:  """Logisch model voor de tabel `opname` zoals gebruikt binnen de use-case AIOC.
Maturity Level: 0 Draft
"""
* patient_id 1..1 Identifier "id van de patiënt" ""
* admission_id 1..1 Identifier "id van de opname" ""
* admission_date 1..1 date "Datum van opname." ""
* admission_time 1..1 time "Tijd van opname." ""
* discharge_date 1..1 date "Datum van ontslag." ""
* discharge_time 1..1 time "Tijd van ontslag." ""
* age_dimension 1..1 CodeableConcept "Leeftijd dimensie 1: jaren, 2: maanden, 3: dagen" ""
* age_at_admission 1..1 integer "Leeftijd bij opname" ""
* gender 1..1 CodeableConcept "Geslacht 0: onbekend; 1: mannelijk; 2: vrouwelijk; 3: overig" ""
* urgency  1..1 CodeableConcept "Urgentie van de opname. Gecodeerd als 0: geen urgentie; 1: urgent" ""
* source_of_admission 1..1 CodeableConcept "0: Eigen woonomgeving, 1: Instelling voor revalidatie, 2: Instelling voor verpleging/verzorging, 3: Psychiatrisch ziekenhuis, 4: (Ander) academisch ziekenhuis, 5: (Ander) algemeen ziekenhuis, 6: (Ander) categoraal ziekenhuis, 7: (Ander) ZBC,8: Geboren in dit ziekenhuis, 9: Overige instellingen,12: Ziekenhuis in het buitenland, 13: Hospice" ""
* destination_after_discharge 1..1 CodeableConcept "0: Eigen woonomgeving, 1: Instelling voor revalidatie, 2: Instelling voor verpleging/verzorging, 3: Psychiatrisch ziekenhuis, 4: (Ander) academisch ziekenhuis, 5: (Ander) algemeen ziekenhuis, 6: (Ander) categoraal ziekenhuis, 7: (Ander) ZBC,8: Geboren in dit ziekenhuis, 9: Overige instellingen,12: Ziekenhuis in het buitenland, 13: Hospice" ""