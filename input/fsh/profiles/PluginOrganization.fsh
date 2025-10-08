Profile: PluginOrganization
Parent: nl-core-HealthcareProvider-Organization
Id: plugin-organization
Title: "Organization"
Description: """Organization as used within PLUGIN.
"""

// Slice voor code is gedefinieerd in nl-core.
// Dat deze AGB-code een instelling moet vertegenwoordigen, is impliciet omdat
// deze binnen de resource Organization wordt gebruikt; dit is ook zo 
// gedefinieerd in nl-core.
// 
* identifier 1.. MS
* identifier[agb] 0..1 MS

* type[organizationType] 0..1 MS