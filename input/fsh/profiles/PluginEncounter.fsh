Profile: PluginEncounter
Parent: Encounter
Id: plugin-encounter
Title: "Encounter"
Description: """Contactmoment tussen patiënt en zorgverlener.
Een contact kan zowel klinisch ((dag)opname) als poliklinisch zijn.

## Todo's
### Vaststellen type bezoek
Het attribuut `class` kan gebruikt worden voor het type bezoek. Vertaling naar/afstemming met de use-case AIOC moet nog plaatsvinden. Tevens is de betekenis van de waarde `ACUTE` niet geheel duidelijk.

Voorstel voor interpretatie van de `class` [ValueSet](http://terminology.hl7.org/ValueSet/v3-ActEncounterCode):
 - AMB: poliklinisch
 - EMER: SEH
 - ACUTE: IC?
 - IMP: klinische opname
 - SS: dagopname (short-stay)
 - HH: thuisbezoek

Als alternatief zou gekeken kunnen worden naar [serviceType](http://hl7.org/fhir/R4/valueset-service-type.html):
 - 117: Emergency Medical
 - 174: Intensive Care Medicine
 - 557: Inpatients

### Oorspronkelijke locatie patiënt
Voor AIOC is het nodig te weten via welke route een patient in het ziekenhuis terecht kwam. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden.

### Ontslagbestemming patiënt
Voor AIOC is het nodig te weten waar de patient na ontslag naartoe gaat. De ValueSet hiervoor moet nog aangemaakt/gekoppeld worden.
"""

* status 1..1
* identifier 1..*
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (required)
* serviceType 1..1
* subject 1..1
* hospitalization MS
* hospitalization.admitSource MS
* hospitalization.dischargeDisposition MS

