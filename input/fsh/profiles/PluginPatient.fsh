Profile: PluginPatient
// Using nl-core-Patient currently results in an error, likely due to a missing snapshot in the source package.
// Parent: nl-core-Patient
Parent: Patient
Id: plugin-Patient
Description: "De resource Patient beschrijft de gegevens die van een patiënt (moeten) worden vastgelegd."
* active 1..1 MS
* identifier 1..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* name 0..* MS
* deceased[x] 0..1 MS
