# datamodel day admissions

## Admissions
- [x] patient_id                -> PluginPatient (identifier.patientnummer) + PluginEncounter (subject)
- [x] admission_id              -> PluginEncounter (identifier)
- [x] subtraject_id               
- [x] admission_date            -> PluginEncounter (period.start)
- [x] admission_time            -> PluginEncounter (period.start)
- [x] discharge_date            -> PluginEncounter (period.end)
- [x] discharge_time            -> PluginEncounter (period.start)
- [x] age                       -> PluginPatient (birthDate) (needs extra validation step) 
- [x] gender                    -> PluginPatient (gender)
- [ ] specialty_code
- [ ] dbc diagnosis code
- [ ] dbc specialty code
- [ ] ICD-10 subtraject code
- [ ] ICD-10 diagnosis code     -> PluginCondition (code.coding[icd10].code)

### Opmerkingen
- filter nodig op serviceType, niet duidelijk welke service type [ServiceTypes](https://simplifier.net/packages/nictiz.fhir.nl.r4.zib2020/0.11.0-beta.1/files/2628076)
- ICD-10 diagnosis waarschijnlijk matchen op encounter. recordedDate is waarschijnlijk van medisch codeur?

## Procedures
- [x] patient_id                -> PluginProcedure (subject.patientnummer)
- [x] admission_id              -> niet verplicht 
- [x] procedure_date            -> PluginProcedure (extension[episodeOfCare].extension[period].extension[start])
- [x] za code                   -> PluginProcedure (code ^binding.ValueSet)
- [ ] zi code                   

## Documents

### Operatieverslag

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Ontslagbrief/Klinische brief

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Polikliniek verslag

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Scopie verslag

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Pathologie verslag

- [x] patient_id                -> PluginPathologyReport (subject.patientnummer)
- [ ] publication_date          -> 
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text      -> PluginPathologyReport (conclusion)??

### PCI/CAG verslag

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text



