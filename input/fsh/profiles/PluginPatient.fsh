// Aliases
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginPatient
Parent: nl-core-Patient
Id: plugin-patient
Title: "Patient"
Description: """Describes the Patient resource as used by the Dutch PLUGIN project.
Inherits from [nl-core-Patient](https://simplifier.net/nictiz-r4-zib2020/nlcorepatient).
"""

// Hoe is active gedefinieerd? Gebruik in IPS?
// Zou handig zijn om tijdelijke patiënten te filteren.
// * active 1..1 MS
// * active = true

* identifier 1..* MS
* identifier contains
    patientnummer 1..1 MS
* identifier[patientnummer] ^short = "Patientnummer zoals gebruikt in het EPD"
* identifier[patientnummer] ^definition = "Patientnummer zoals gebruikt in het EPD"
* identifier[patientnummer] ^patternIdentifier.type = $v2-0203#MR
* identifier[patientnummer].type 1..
* identifier[patientnummer].value 1..
* identifier[patientnummer].value ^short = "Patientnummer"
* identifier[patientnummer].value ^definition = "Patientnummer"

* name MS
* gender 1..1 MS
* birthDate 1..1 MS
* deceased[x] 0..1 MS
* deceased[x] only dateTime
* address MS
