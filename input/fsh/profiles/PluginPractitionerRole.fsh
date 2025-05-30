// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginPractitionerWithSpecialty
Parent: nl-core-HealthProfessional-PractitionerRole
Id: plugin-practitionerrole-specialty
Title: "PractitionerRoleWithSpecialty"
Description: """Describes the PractitionerRole resource as used by the Dutch PLUGIN project. Maturity Level: 0 Draft. Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginPractitionerRole).
"""
// The slice `specialty` is defined in nl-core. This only adds the Must Support flag 
* specialty[specialty] MS
