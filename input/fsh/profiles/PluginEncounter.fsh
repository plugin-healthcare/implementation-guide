Profile: PluginEncounter
Parent: Encounter
Id: plugin-encounter
Description: "Contactmomenten tussen patiënt en zorgverlener, zowel klinisch ((dag)opnames) als poliklinisch.."
* status 1..1
* identifier 1..*
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)
* serviceType 1..1
* subject 1..1