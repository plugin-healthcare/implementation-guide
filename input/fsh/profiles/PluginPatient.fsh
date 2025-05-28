// Aliases
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginPatient
Parent: nl-core-Patient
Id: plugin-patient
Title: "Patient"
Description: """Describes the Patient resource as used by the Dutch PLUGIN project. Inherits from [nl-core-Patient](https://simplifier.net/nictiz-r4-zib2020/nlcorepatient). Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginPatient).
"""

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
* identifier contains
    zorgttp 0..1 MS
* identifier[zorgttp] ^short = "Identifier zoals uitgegeven door ZorgTTP"
* identifier[zorgttp] ^definition = "Patientnummer zoals uitgegeven door ZorgTTP"
// * identifier[zorgttp] ^patternIdentifier.type = $v2-0203#MR
// * identifier[zorgttp].type 1..
// * identifier[zorgttp].value 1..
* identifier[zorgttp].value ^short = "ZorgTTP identifier"
* identifier[zorgttp].value ^definition = "ZorgTTP identifier"

// Hoe is active gedefinieerd? Gebruik in IPS?
// Zou handig zijn om tijdelijke patiënten te filteren.
// * active 1..1 MS
// * active = true

* name MS
* name[nameInformation] MS
* name[nameInformation].family MS

* gender 1..1 MS
// * gender[genderCodelist] MS
 
* birthDate 1..1 MS
* deceased[x] 0..1 MS
* deceasedDateTime 0..1 MS

// Als dit profiel breed gebruikt moet kunnen worden, kunnen we dit niet beperken tot alleen datum.
// * deceased[x] only dateTime

* address.use MS
* address.postalCode MS
* address.country MS

* multipleBirth[x] MS