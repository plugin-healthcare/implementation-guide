Profile: PluginCondition
Parent: nl-core-Problem
Id: plugin-condition
Title: "Condition"
Description: """Condition as used within PLUGIN.

Condition represents diagnoses as recorded in the EHR. This includes diagnoses
from both clinical (e.g. problem list) or financial (e.g. DBCs) workflows. They are coded with with either a code from ICD10-NL (which includes ICD-O-3.2, see [ICD-10 NL](https://terminologie.nictiz.nl/art-decor/claml?collection=icd10-nl-data)) or the DHD DiagnoseThesaurus.


**Condition.stage**
EPIC levert in Condition.stage (in sommige gevallen?) het tumorstadium mee `"text": "cT4, cN0, cM0"`. Dit is bruikbaar, maar niet gestandaardiseerd. De summary wordt verder beschreven in Observations m.b.v. Condition.stage.assessment. Hier hebben we echter nog geen voorbeelden van.


**TODO**:

- Voor AIOC is het nodig het registrerend specialisme te kunnen achterhalen. Dit zou kunnen via [recorder](#Condition.recorder) of [asserter](#Condition.asserter). Beide attributen verwijzen naar [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html), wat net niet helemaal overeenkomt met specialisme, maar wel een attribuut [PractionerRole.specialty](http://hl7.org/fhir/R4/practitionerrole-definitions.html#PractitionerRole.specialty) heeft.
- Voor Pacmed is het relevant om Apache4 als terminologie systeem op te nemen.
- Formaliseren hoe TNM wordt vastgelegd (binnen `Condition.stage`).
"""

* clinicalStatus MS
* verificationStatus MS
* verificationStatus from PluginActiveConditions
* code 1..1 MS

// At least 1 code should be present.
* code.coding 1..

// Define a slice for DHD diagnosethesaurus
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains dhd_dx_th 0..1
* code.coding[dhd_dx_th].system = $DHD_DX_TH
* code.coding[dhd_dx_th].code 1..

// Define a slice for icd10
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains icd10 0..1
* code.coding[icd10].system = $ICD10NL
* code.coding[icd10].code 1..

// Rule that defines (at least) one of icd10 or dxt should be present.
* code.coding obeys plugin-condition-1


// Laterality extension from zibs2020
* bodySite.extension contains http://nictiz.nl/fhir/StructureDefinition/ext-AnatomicalLocation.Laterality named laterality 0..1 MS

* encounter MS

* recordedDate 1..1 MS

// Probably need just 1 of these ..?
* recorder MS
* asserter MS

// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
Invariant: plugin-condition-1
Description: "code SHALL at least contain a code from ICD-10 or the DHD diagnosethesaurus"
Expression: "code.coding[dhd_dx_th].exists() or code.coding[icd10].exists()"
Severity: #error
XPath: "f:code.coding[dhd_dx_th] or f:code.coding[icd10]"


// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
ValueSet: PluginActiveConditions
Id: plugin-active-conditions-vs
Title: "Actieve diagnoses"
Description: "Subset van actieve diagnoses voor `Condition.verificationStatus`"
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-ver-status
* exclude http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* exclude http://terminology.hl7.org/CodeSystem/condition-ver-status#entered-in-error


