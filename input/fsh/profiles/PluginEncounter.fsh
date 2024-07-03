Profile: PluginEncounter
Parent: nl-core-Encounter
Id: plugin-encounter
Title: "Encounter"
Description: """Contactmoment tussen patiënt en zorgverlener.
Een contact kan zowel klinisch ((dag)opname) als poliklinisch zijn.

In het geval dat een patiënt tijdens een opname meerdere contactmomenten heeft, bijvoorbeeld als een patiënt vanaf de SEH naar de afdeling wordt overgeplaatst, wordt gebruik gemaakt van een hoofd- en deelbezoeken. Deze worden aan elkaar gekoppeld m.b.v. het attribuut [partOf](https://plugin.healthcare/fhir/StructureDefinition-plugin-encounter-definitions.html#diff_Encounter.partOf).

## Todo's
### Vaststellen type bezoek
Het attribuut `class` kan gebruikt worden voor het type bezoek. Vertaling naar/afstemming met de use-case AIOC moet nog plaatsvinden. Tevens is de betekenis van de waarde `ACUTE` niet geheel duidelijk.

Voorstel om het attribuut `class` (met [ValueSet](http://terminology.hl7.org/ValueSet/v3-ActEncounterCode)) te interpreteren volgens de ZiB [ContactTypeCodelijst](https://zibs.nl/wiki/Contact-v4.0.1(2020NL)):
 - AMB: Poliklinisch
 - EMER: SEH
 - FLD: Op locatie
 - HH: Thuis
 - IMP: Klinisch
 - SS: Dagopname (short-stay)
 - VR: Virtueel
 - ACUTE: <span color="red">niet gebruikt</span>

 In release v6 (2023) van de ZiBs ([ContactTypeCodelijst](https://zibs.nl/wiki/Contact-v6.0(2023NL)#ContactTypeCodelijst)) zijn deze codes komen te vervallen en vervangen door SNOMED codes.


### Oorspronkelijke locatie patiënt
Voor AIOC is het nodig te weten via welke route een patient in het ziekenhuis terecht kwam. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden.

### Ontslagbestemming patiënt
Voor AIOC is het nodig te weten waar de patient na ontslag naartoe gaat. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden.

### Verantwoordelijk specialisme
In veel gevallen is het wenselijk om te achterhalen welk specialisme hoofdverantwoordelijk was voor een (deel)contact.

Een route hiervoor zou kunnen zijn:
`participant > individual (PractitioneRole) > specialty`

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
* hospitalization MS
* hospitalization.admitSource MS
* hospitalization.dischargeDisposition MS
* partOf MS

