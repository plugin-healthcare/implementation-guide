// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginEncounter
Parent: nl-core-Encounter
Id: plugin-encounter
Title: "Encounter"
Description: """
Contactmoment tussen patiënt en zorgverlener. 
Maturity Level: 0 Draft. 

Open issues see [Github](https://github.com/orgs/plugin-healthcare/projects/7/views/8?filterQuery=fhir-profile%3APluginEncounter).

Een Encounter beschrijft een bezoek aan het ziekenhuis en legt vast welk specialisme hierbij betrokken was. Dit kan een (dag)opname zijn, maar ook een poliklinisch bezoek. In het geval van een langere opname, kan het zijn dat een patiënt verschillende afdelingen in het ziekenhuis aandoet. Een opname kan bijvoorbeeld beginnen op de eerste hulp (SEH), waarna de patiënt wordt overgeplaatst naar de Acute Opname Afdeling (AOA) om, via de Intensive Care (ICU) op een reguliere afdeling terecht te komen. 

Het is belangrijk om op ieder moment te kunnen achterhalen welk specialisme verantwoordelijk was voor de patiënt. Ook is het, met name voor secundair gebruik, noodzakelijk om te weten wanneer de opname startte en wanneer de patiënt met ontslag ging.

Om proces dit te faciliteren, wordt in dit CDM gebruik gemaakt van een hoofd-opname en sub-opnames. De hoofdopname start zodra de patiënt wordt opgenomen en eindigt wanneer de patiënt met ontslag is gegaan. Op ieder moment dat de medische verantwoordelijkheid over een patiënt wordt overgedragen, wordt een subopname gemaakt die wordt gelinkt aan de hoofdopname via het attribuut `partOf`.

<img 
    src="encounter-subencounter-relationships.png"
    style="float:none; width:65%;"
    />
<caption><strong>Figuur:</strong> Visualisatie van de relatie tussen Encounter resources en bezoek aan het ziekenhuis.</caption>

"""

* status 1..1 MS
* identifier 1..* MS
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)
* serviceType 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient or nl-core-Patient)

// Add start and end datetime of encounter. Neither is mandatory to allow for encounters
// that still need to be scheduled.
* period.start MS
* period.end MS

// healthProfessional is defined in nl-core-Encounter
* participant[healthProfessional] MS
* participant[healthProfessional].type MS
* participant[healthProfessional].individual MS
* participant[healthProfessional].individual only Reference(
    plugin-practitionerrole-specialty
    or nl-core-HealthProfessional-PractitionerRole
)

* hospitalization.admitSource MS
* hospitalization.dischargeDisposition MS

* partOf MS

