Profile: PluginPatient
// Using nl-core-Patient currently results in an error, likely due to a missing snapshot in the source package.
Parent: nl-core-Patient
// Parent: Patient
Id: plugin-patient
Description: """Describes the Patient resource as used by the Dutch PLUGIN project.
Inherits from [nl-core-Patient](https://simplifier.net/nictiz-r4-zib2020/nlcorepatient).
"""
* active = true
* identifier 1..* MS
* name 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* deceased[x] 0..1 MS
* address 1..* MS
