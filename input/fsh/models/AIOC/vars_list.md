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
- [ ] ICD-10 diagnosis code     -> PluginCondition (code.coding[icd10].code)

### pluginDBC
- [ ] dbc diagnosis code        -> geen idee geprobeerd in PluginDBC (diagnosis.coding[dbc].code)
- [ ] dbc specialty code        -> geen idee geprobeerd in PluginDBC (diagnosis.coding[dbc].code)
- [ ] ICD-10 subtraject code    -> geen idee geprobeerd in PluginDBC (diagnosis.coding[icd10].code)
- [ ] episode of care specialty -> PluginDBC (diagnosis.code)

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

- [x] patient_id
- [x] publication_date
- [x] publication_specialty
- [x] document_type
- [x] text/anonymized text

### Ontslagbrief/Klinische brief

- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Polikliniek verslag

- [x] patient_id
- [x] publication_date
- [x] publication_specialty    -> PluginPathologyReport (performer.)
- [x] document_type            -> PluginPathologyReport (category.coding or resource is always pathology)
- [x] text/anonymized text     -> PluginPathologyReport (result (all 4 components to be merged))

### Scopie verslag

PluginProcedure + report.TextResult
- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

### Pathologie verslag
PluginProcedure + report.TextResult
- [x] patient_id                -> PluginPathologyReport (subject.patientnummer)
- [x] publication_date          -> 
- [x] publication_specialty
- [x] document_type
- [x] text/anonymized text      -> PluginPathologyReport (conclusion)??

### CAG/PCI verslag
PluginProcedure + report.TextResult
- [ ] patient_id
- [ ] publication_date
- [ ] publication_specialty
- [ ] document_type
- [ ] text/anonymized text

