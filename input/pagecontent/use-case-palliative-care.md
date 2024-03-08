### De use-case in een notendop
Er is landelijk behoefte aan meer en betere cijfers over de kwaliteit van palliatieve zorg. Het verzamelen van deze cijfers is echter veel werk (registratielast voor data-managers of zorgverleners) en is gereguleerd door wet- en regelgeving, zoals de GDPR. Het starten van een registratie waarin gegevens op record-level worden vastgelegd, is niet zonder meer mogelijk.

De Personal Health Train (PHT) maakt het mogelijk om cijfers te verzamelen en analyses uit te voeren zónder dat een onderzoeker directe toegang tot de data heeft; dit wordt ook wel Federated Learning genoemd. Hierdoor worden uitdagingen m.b.t. privacy en GDPR voorkómen.

Voor grootschalige toepassing van de PHT, is het echter belangrijk dat alle deelnemende partijen (stations) dezelfde definities hanteren wat betreft de data die ter beschikking gesteld wordt. De FAIR data principes (FAIR: Findable, Accessible, Interoperable and Reusable; Nature) garanderen (onder andere) eenheid van taal en maken het mogelijk om lokaal te starten en (landelijk) op te schalen.


In een ideale situatie is er goed zicht op het verloop van de laatste levensfase van mensen in Nederland en zijn er indicatoren beschikbaar die gebruikt kunnen worden om de kwaliteit en doelmatigheid van de zorg te monitoren en verbeteren.

Binnen deze use-case wordt:

* Door middel van een tweetal indicatoren inzicht verschaft in de aandacht die zorgverleners hebben voor aanstaand overlijden, en de wensen van patiënten en hun naasten die daarmee gepaard gaan.
* Aangetoond dat het mogelijk is om indicatoren te berekenen op een manier die niet ten koste gaat van privacy; en
* Op een manier die schaalbaar is naar andere ziekenhuizen en zorginstellingen.

### Eerste uitwerking kwaliteitsindicatoren
#### Proactieve zorgplanning
Proactieve zorgplanning is een belangrijk aspect van palliatieve zorg. Door vooruit te plannen, wordt ervoor gezorgd dat de verleende zorg zo goed mogelijk aansluit bij de wensen van de zieke. Hiervoor is het nodig dat zorgverleners met hun patiënt in gesprek gaan over zijn/haar wensen in de (nabije) toekomst. Onderdeel hiervan is, bijvoorbeeld, bespreken hoe gehandeld zou moeten worden in geval van een plotseling verslechterde gezondheidstoestand en of een patiënt dan nog opgenomen of geanimeerd wil worden. In het EPD wordt dit onderdeel meestal geregistreerd in een vragenlijst, zoals “Behandelbeperking(en) en reanimatiebeleid”.

Op basis hiervan worden twee indicatoren opgenomen in het dashboard:
- Behandelbeperkingen beschikbaar in de laatste `n` dagen voor overlijden
- Behandelbeperkingen (her)besproken in de laatste `n` dagen voor overlijden


#### Potentiëel niet-passende zorg
Als het levenseinde verwacht wordt of zelfs onvermijdelijk is, kan het zijn dat de voordelen van (doorgaan met) ziektegerichte behandeling niet langer opwegen tegen de nadelen ervan. Als desondanks (door)behandeld wordt, spreken we van (potentieel) ongepaste zorg rondom het levenseinde. Aangezien de toepasselijkheid van behandeling een sterk individuele, zelfs persoonlijke afweging is, kan op basis van cijfers alleen een schatting gemaakt worden van zorg die mogelijk niet passend is geweest.

Op basis van [Boddaert et al.](https://spcare.bmj.com/content/early/2020/12/22/bmjspcare-2020-002302.long)  worden de volgende indicatoren opgenomen:
- ≥ 2 SEH-bezoeken in de laatste `n` dagen voor overlijden
- ≥ 2 Ziekenhuisopnames in de laatste `n` dagen voor overlijden
- Duur van de (gezamenlijke) ziekenhuisopnames > 14 dagen in de laatste `n` dagen voor overlijden
- ≥ 1 IC-opname in de laatste `n` dagen voor overlijden
- Overlijden in het ziekenhuis
- Chemotherapie gegeven in de laatste `n` dagen voor overlijden


### Benodigde resources
Op basis van het bovenstaande, lijkt het algoritme minimaal toegang nodig te hebben tot de volgende resources:

| FHIR Resource              | Omschrijving​                                                                                | FHIR Resource​                                                                                                          |
| -------------------------- | -------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Patient​                    | Patiëntgegevens, gepseudonimiseerd. Alleen geboortejaar en jaar van overlijden bekend.​      | [Patient](http://hl7.org/fhir/R4/patient.html)​                                                                         |
| Account​                    | DBCs​                                                                                        | [Account](http://hl7.org/fhir/R4/account.html)​                                                                         |
| Condition​                  | Diagnoses​                                                                                   | [Condition](http://hl7.org/fhir/R4/condition.html)​                                                                     |
| Encounter​                  | Ziekenhuisbezoeken, delen daarvan (bijv. tijdelijke opname op IC) & afspraken in de agenda​. | [Encounter](http://hl7.org/fhir/R4/encounter)​                                                                          |
| Medication​                 | Geneesmiddelen​                                                                              | [Medication](http://hl7.org/fhir/R4/medication.html)​                                                                   |
| MedicationAdministration​   | Medicatieverstrekkingen​                                                                     | [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)​                                       |
| MedicationRequest​          | Medicatievoorschriftten​                                                                     | [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)​                                                     |
| QuestionnaireResponse​      | Beantwoordingen van vragenlijsten (zoals het formulier “behandelbeperking”)​                 | [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html)​                                             |
