// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginEncounter
Parent: nl-core-Encounter
Id: plugin-encounter
Title: "Encounter"
Description: """Contactmoment tussen patiënt en zorgverlener. Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginEncounter).
"""

* status 1..1 MS
* identifier 1..* MS
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)
* serviceType 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient or nl-core-Patient)

// add start and end datetime of encounter (only start is mandatory)
* period.start 1..1 MS
* period.end 1..1 MS

// healthProfessional is defined in nl-core-Encounter
* participant[healthProfessional] MS
* participant[healthProfessional].type MS
* participant[healthProfessional].individual MS
* participant[healthProfessional].individual only Reference(
    plugin-practitionerrole-specialty
    or nl-core-HealthProfessional-PractitionerRole
)

* hospitalization.admitSource MS
* hospitalization.dischargeDisposition from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.15.1.3--20200901000000 (required)

* partOf MS

