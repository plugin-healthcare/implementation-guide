### Samenwerking met Radboudumc
Binnen de use-case "NKR Item" wordt uitgewerkt hoe de PLUGIN-infrastructuur gebruikt kan worden voor gegevensaanlevering. Dit gebeurt in samenwerking met het [Radboudumc](https://radboudumc.nl) in het kader van het project "Over de Muren van de NKR" dat gezamenlijk door IKNL en het Radboudumc wordt uitgevoerd.

### De use-case in een notendop
Het project "Over de Muren van de NKR" heeft tot doel om patiëntgegevens vanuit het EPD (Epic) van het Radboudumc aan te leveren aan IKNL t.b.v. opname in de NKR. Hierbij ligt de focus op hoofd-halstumoren (HHT).

Om snel te kunnen toetsen of de voorgestelde aanpak werkbaar is, is de scope van deze use-case in eerste instantie beperkt tot het fundamentele probleem van patiëntselectie: kunnen we patiënten met hoofd-halstumor én een diagnose binnen een bepaalde periode in het EPD identificeren?

### Het algoritme op hoofdlijnen
Het doel van het algoritme is om patiënten met een hoofd-halstumor, waarvan de diagnose is gesteld in een bepaalde periode, te identificeren. Hiervoor zijn op hoofdlijnen twee zaken nodig:

1. De juiste diagnose
2. De juiste incidentiedatum (e eerste datum waarop een tumor is gediagnosticeerd)

De onderstaand secties gaan dieper op deze twee punten in.

#### Vaststellen van de diagnose
Diagnoses worden in het EPD vastgelegd middels ICD-10. IKNL registreert middels ICD-o-3, maar de topografie van ICD-o-3 lijkt equivalent aan ICD-10.

Voor hoofd-halstumoren wordt een beperkte set [ICD-10 codes](https://terminologie.nictiz.nl/art-decor/claml?collection=icd10-nl-data) gebruikt: `C00 - C14`, `C30 - C32`; de volledige (sub)set, inclusief sublokalisaties, is vastgelegd in de Valueset [Head and Neck Cancer Conditions](ValueSet-hnc-vs.html). Het doorzoeken van de tabel met diagnoses in het EPD op deze codes, zou de juiste patiënten moeten identificeren.


Hierbij zijn twee punten van aandacht:
- `C14.8` wordt door IKNL "misbruikt" voor situaties waar de primaire tumor onbekend (PTO) is met een PCC localisatie in de halsklieren.
- Gemetasaseerde ziekte wordt in Radboud gecodeerd met `C77.0`, maar binnen IKNL worden de metastasen geregistreerd onder de code van de primaire tumor.


Naast de topografie, zou ook gekeken kunnen worden of morfologie/gedrag in het EPD beschikbaar zijn (zie ook onderstaande tabellen). Voor een subset aan codes wordt in de NKR-handleiding een aanvullende beschrijving gegeven (Tabel 2).

In de FHIR-standaard worden diagnoses vastgelegd/uitgewisseld m.b.v. de [Condition](https://hl7.org/fhir/R4/condition.html) resource.


> | Morfologie/gedrag    | Morfologie (omschrijving)                                    | Gedrag (omschrijving)  |
> | -------------------- | ------------------------------------------------------------ | ------- |
> | 8000/2               | Geen microscopische bevestiging                              | In situ |
> | 8000/2               | Neoplasma, NNO                                               | In situ |
> | 8000/3               | Geen microscopische bevestiging                              | Maligne |
> | 8000/3               | Neoplasma, NNO                                               | Maligne |
> | 8010/2               | Carcinoom, NNO                                               | In situ |
> | 8010/3               | Carcinoom, NNO                                               | Maligne |
> | 8012/3               | Grootcellig carcinoom, NNO                                   | Maligne |
> | 8013/3               | Grootcellig neuro-endocrien carcinoom                        | Maligne |
> | 8020/3               | Ongedifferentieerd carcinoom, NNO                            | Maligne |
> | 8041/3               | Kleincellig carcinoom, NNO                                   | Maligne |
> | 8046/3               | Niet-kleincellig carcinoom                                   | Maligne |
> | 8051/2               | Verruceus carcinoom, NNO                                     | In situ |
> | 8051/3               | Verruceus carcinoom, NNO                                     | Maligne |
> | 8052/3               | Papillair plaveiselcelcarcinoom                              | Maligne |
> | 8070/2               | Plaveiselcelcarcinoom, NNO                                   | In situ |
> | 8070/3               | Plaveiselcelcarcinoom, NNO                                   | Maligne |
> | 8071/3               | Verhoornend plaveiselcelcarcinoom                            | Maligne |
> | 8072/3               | Niet-verhoornend (grootcellig) plaveiselcelcarcinoom         | Maligne |
> | 8074/3               | Plaveiselcelcarcinoom, spoelceltype                          | Maligne |
> | 8075/3               | Adenoïd plaveiselcelcarcinoom                                | Maligne |
> | 8076/3               | Plaveiselcelcarcinoom, micro-invasief                        | Maligne |
> | 8077/2               | Plaveiselcelintraepitheliale neoplasie, hooggradig           | In situ |
> | 8082/3               | Lymfo-epitheliaal carcinoom                                  | Maligne |
> | 8083/3               | Basaloïd plaveiselcelcarcinoom                               | Maligne |
> | 8085/3               | Plaveiselcarcinoom, HPV-positief                             | Maligne |
> | 8086/3               | Plaveiselcarcinoom, HPV-negatief                             | Maligne |
> | 8090/3               | Basaalcelcarcinoom, NNO                                      | Maligne |
> | 8094/3               | Basosquameus carcinoom                                       | Maligne |
> | 8140/3               | Adenocarcinoom, NNO                                          | Maligne |
> | 8144/3               | Adenocarcinoom, intestinaal type                             | Maligne |
> | 8147/3               | Basaalceladenocarcinoom                                      | Maligne |
> | 8200/3               | Adenoïd cysteus carcinoom                                    | Maligne |
> | 8240/3               | Neuro-endocriene tumor (NET), NNO/graad 1 (carcinoïd)        | Maligne |
> | 8249/3               | Neuro-endocriene tumor (NET), graad 2/3 (atypisch carcinoïd) | Maligne |
> | 8290/3               | Oxyfiel adenoom/carcinoom - Hurthle-cel carcinoom            | Maligne |
> | 8310/3               | Heldercellig adenocarcinoom, NNO                             | Maligne |
> | 8430/3               | Muco-epidermoÔd carcinoom                                    | Maligne |
> | 8480/3               | Mucineus adenocarcinoom                                      | Maligne |
> | 8500/2               | Ductaal carcinoom, NNO                                       | In situ |
> | 8500/3               | Ductaal carcinoom, NNO                                       | Maligne |
> | 8502/3               | Secretoir carcinoom                                          | Maligne |
> | 8507/3               | Intraductaal micropapillair carcinoom                        | Maligne |
> | 8525/3               | Polymorf laaggradig adenocarcinoom                           | Maligne |
> | 8550/3               | Acinuscelcarcinoom                                           | Maligne |
> | 8560/3               | Adenosquameus carcinoom                                      | Maligne |
> | 8562/2               | Epitheliaal-myoepitheliaal carcinoom                         | In situ |
> | 8562/3               | Epitheliaal-myoepitheliaal carcinoom                         | Maligne |
> | 8940/3               | Gemengde tumor, NNO                                          | Maligne |
> | 8941/2               | Carcinoom in pleiomorf adenoom                               | In situ |
> | 8941/3               | Carcinoom in pleiomorf adenoom                               | Maligne |
> | 8980/3               | Carcinosarcoom, NNO                                          | Maligne |
> | 8982/3               | Myo-epitheliaal carcinoom                                    | Maligne |
>
> **Tabel 1:** Morfologie/gedrag zoals gextraheerd uit de NKR



> | Morfologie/gedrag | Omschrijving |
> |--------|-------------------------|
> | 8077/2 | intra-epitheliale dysplasie graad 3, LIN 3, ernstig/hooggradig/graad 3 |
> | 8023/3 | nuclear protein in testis (gen.) (NUT) carcinoom |
> | 8085/3 | plaveiselcarcinoom (PCC), HPV/p16 positief |
> | 8086/3 | plaveiselcelcarcinoom, HPV/p16 negatief |
> | 8144/3 | sinonasaal adenocarcinoom van het intestinale type |
> | 8500/3 | salivary ductaal carcinoom |
> | 8502/3 | Mammary Analogue Secretory Carcinoma (MASC) in speekselklier ICD-O 3 omschrijving: secretoir carcinoom van de mamma |
> | 8020/3 | SNUC (sinonasaal ongedifferentieerd carcinoom), hieronder valt ook SMARCB1/SMARCA4 deficiënt sinonasaal carcinoom |
>
> **Tabel 2:** morfologie- en gedragscodes volgens ICD-o-3, zoals beschreven in de NKR-handleiding.

#### Vaststellen van de incidentiedatum
In EPDs wordt samen met de diagnose veelal een aantal datums vastgelegd:

* datum van vastleggen van de diagnose; (Engels: recordedDate)
* datum van (eerste) optreden van de ziekte; (Engels: date of onset)

De eerste datum is meestal goed te bepalen. De tweede is vaak minder eenduidig.

De NKR-handleiding beschrijft daarom een prioritering voor het vaststellen van de incidentiedatum:

1. datum van de eerste histologische of cytologische bevestiging van deze tumor. (uitgezonderd histologie of cytologie bij obductie). in afnemende prioriteit betekent dit:
    - de datum van de ingreep
    - de datum van ontvangst van het preparaat
    - de datum van de uitslag (antwoord)
2. datum van eerste opname waarbij klinische evaluatie van deze tumor
3. datum van eerste polikliniek bezoek in verband met deze tumor (geen PA en geen opname met klinische evaluatie)
4. datum van diagnose, gesteld op andere gronden dan vermeld in 1 t/m 3
5. datum van overlijden, indien slechts bekend is dat de patiënt met deze tumor is overleden en verdere gegevens ontbreken.
6. datum van overlijden, indien deze tumor voor het eerst bij obductie werd geconstateerd.

Als de incidentie bepaald moet worden volgens de regels van de NKR, zal dus ook de pathologie beschikbaar moeten zijn, en mogelijk informatie omtrent klinische en poliklinische opnames.

In de FHIR standaard lijkt voor pathologie de resource [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) voor de hand te liggen. Binnen deze resource kan verwezen worden naar (o.a.) het bezoek waarin het onderzoek werd aangevraagd (via de resource [Encounter](https://hl7.org/fhir/R4/encounter.html)), naar (meerdere) onderliggende details (via de resource [Observation](https://hl7.org/fhir/R4/observation.html)), en naar het volledige verslag zoals gepresenteerd in het EPD (via de resource [Attachment](https://hl7.org/fhir/R4/attachment.html)).

### Benodigde resources
Op basis van het bovenstaande, lijkt het algoritme minimaal toegang nodig te hebben tot de volgende resources:

* [Patient](https://hl7.org/fhir/R4/patient.html)
* [Condition](https://hl7.org/fhir/R4/condition.html)
* [Encounter](https://hl7.org/fhir/R4/enounter.html)
* [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html)
    * [Attachment](https://hl7.org/fhir/R4/attachment.html) met het volledige PA-verslag
    * Optioneel: [Observation](https://hl7.org/fhir/R4/observation.html)


