Instance: nkr2patient
InstanceOf: ConceptMap
Usage: #definition

* name = "NKR-Patient"
* title = "NKR naar PLUGIN."
* status = #draft
* experimental = true
* description = """Mapping between the Patient models as used in the NCR and within PLUGIN.
Maturity Level: 0 Draft
"""
* purpose = """The purpose of this mapping is to show how the generic PLUGIN information model can be used to populate the patient data needed for the NCR.
"""
* sourceUri = "https://plugin.healthcare/fhir/StructureDefinition/NKRPatient"
* targetUri[+] = "https://plugin.healthcare/fhir/StructureDefinition/plugin-patient"
* group[+].source = "https://plugin.healthcare/fhir/StructureDefinition/NKRPatient"
* group[=].target = "https://plugin.healthcare/fhir/StructureDefinition/plugin-patient"

* group[=].element[+].code = #NCRPatient.gender
* group[=].element[=].display = "Gender"
* group[=].element[=].target.code = #PluginPatient.gender
* group[=].element[=].target.display = "Gender"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Administrative gender"

