// Aliases
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginPatient
Parent: nl-core-Patient
Id: plugin-patient
Title: "Patient"
Description: """Maturity Level: 1 Draft. Describes the Patient resource as used by the Dutch PLUGIN project. Inherits from [nl-core-Patient](https://simplifier.net/nictiz-r4-zib2020/nlcorepatient). Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginPatient).
"""

* identifier 1..* MS
* identifier contains
    patientnummer 1..1 MS
* identifier[patientnummer] ^short = "Patiëntnummer zoals door zorgverleners gebruikt en getoond in het EPD"
* identifier[patientnummer] ^definition = "Patiëntnummer zoals door zorgverleners gebruikt en getoond in het EPD"
* identifier[patientnummer] ^patternIdentifier.type = $v2-0203#MR
* identifier[patientnummer].type 1..
* identifier[patientnummer].value 1..
* identifier[patientnummer].value ^short = "Patiëntnummer"
* identifier[patientnummer].value ^definition = "Patiëntnummer"
* identifier contains
    zorgttp 0..1 MS
* identifier[zorgttp] ^short = "Identifier zoals uitgegeven door ZorgTTP"
* identifier[zorgttp] ^definition = "Identifier zoals uitgegeven door ZorgTTP"
// * identifier[zorgttp] ^patternIdentifier.type = $v2-0203#MR
// * identifier[zorgttp].type 1..
// * identifier[zorgttp].value 1..

// Hoe is active gedefinieerd? Gebruik in IPS?
// Zou handig zijn om tijdelijke patiënten te filteren.
// * active 1..1 MS
// * active = true

* name MS
* name[nameInformation] MS
* name[nameInformation].family MS

// No change to cardinality; gender may be absent, e.g. in refugee care.
* gender MS
// * gender[genderCodelist] MS
 
// No change to cardinality; birthDate may be absent, e.g. in refugee care.
* birthDate MS
* deceased[x] MS
* deceasedDateTime MS

* address.use MS
* address.postalCode MS
* address.country MS

* multipleBirth[x] MS