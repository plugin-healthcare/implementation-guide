// -------------------------------------------------------------------------------
//  Resource Profile
// -------------------------------------------------------------------------------
Profile: PluginEncounter
Parent: nl-core-Encounter
Id: plugin-encounter
Title: "Encounter"
Description: """Contactmoment tussen patiënt en zorgverlener.
Een contact kan zowel klinisch ((dag)opname) als poliklinisch zijn.

In het geval dat een patiënt tijdens een opname meerdere contactmomenten heeft, bijvoorbeeld als een patiënt vanaf de SEH naar de afdeling wordt overgeplaatst, wordt gebruik gemaakt van een hoofd- en deelbezoeken. Deze worden aan elkaar gekoppeld m.b.v. het attribuut [partOf](https://plugin.healthcare/fhir/StructureDefinition-plugin-encounter-definitions.html#diff_Encounter.partOf). De API van Epic _lijkt_ dit te ondersteunen?


## Todo's
### Vaststellen type bezoek
Het attribuut `class` kan gebruikt worden voor het type bezoek. In nl-core-Encounter is hier een waardenlijst aan gekoppeld: https://simplifier.net/resolve?scope=nictiz.fhir.nl.r4.zib2020@0.11.0-beta.1&filepath=package/ConceptMap-ContactTypeCodeLijst-to-ActEncounterCode.json. Vertaling naar/afstemming met de use-case AIOC moet nog plaatsvinden.

In release v6 (2023) van de ZiBs ([ContactTypeCodelijst](https://zibs.nl/wiki/Contact-v6.0(2023NL)#ContactTypeCodelijst)) zijn deze codes komen te vervallen en vervangen door SNOMED codes.


### Oorspronkelijke locatie patiënt
Voor AIOC is het nodig te weten via welke route een patient in het ziekenhuis terecht kwam. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden.
NMvdL: Deze heet ook wel HerkomstCodelijst

### Ontslagbestemming patiënt
Voor AIOC is het nodig te weten waar de patient na ontslag naartoe gaat. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden. [Admit source](http://hl7.org/fhir/R4/valueset-encounter-admit-source.html), de 'preferred' value set, lijkt hiervoor geschikt?
NMvdL: Deze heet ook wel BestemmingCodelijst, zie https://simplifier.net/packages/nictiz.fhir.nl.r4.zib2020/0.11.0-beta.1/files/2627824 

### Verantwoordelijk specialisme
In veel gevallen is het wenselijk om te achterhalen welk specialisme hoofdverantwoordelijk was voor een (deel)contact.

De route die hiervoor voor de hand ligt is `participant > individual (PractitionerRole) > specialty`. De nl-core (0.11.0-beta.1) bevat een profiel op PractitionerRole dat (https://simplifier.net/resolve?scope=nictiz.fhir.nl.r4.zib2020@0.11.0-beta.1&filepath=package/ValueSet-SpecialismeCodelijsten-2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000.json)

Aard van de betrokkenheid van een specialisme volgt dan via `participant > type (admit/attend/discharge)`

Alternatieven?
    - `serviceType`
    - `serviceProvider` (Organization) met ValueSet voor Organization.type
    - anders?
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

