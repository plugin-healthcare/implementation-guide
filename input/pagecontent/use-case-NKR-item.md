### Samenwerking met Radboudumc
Binnen de use-case "NKR Item" wordt uitgewerkt hoe de PLUGIN-infrastructuur gebruikt kan worden voor gegevensaanlevering. Dit gebeurt in samenwerking met het [Radboudumc](https://radboudumc.nl) in het kader van het project "Over de Muren van de NKR" dat gezamenlijk door IKNL en het Radboudumc wordt uitgevoerd.

### De use-case in een notendop
Het project "Over de Muren van de NKR" heeft tot doel om patiëntgegevens vanuit het EPD (Epic) van het Radboudumc aan te leveren aan IKNL t.b.v. opname in de NKR. Hierbij ligt de focus op hoofd-halstumoren (HHT).

Om snel te kunnen toetsen of de voorgestelde aanpak werkbaar is, is de scope van deze use-case in eerste instantie beperkt tot het fundamentele probleem van patiëntselectie: kunnen we patiënten met hoofd-halstumor én een diagnose binnen een bepaalde periode in het EPD identificeren? Vanuit IKNL is een sensitiviteit van 100% wenselijk, maar (zeker initieel) niet noodzakelijk.

Zodra de patiëntselectie naar tevredenheid is geïmplementeerd, kan gekeken worden naar de NKR-items zoals beschreven in de "A-set". Denk hierbij aan ...
- morfologie
- graad
- gedrag
- cTNM-stadium
- neoadjuvante, primaire, en adjuvante behandeling
    - chirurgie
    - radiotherapie
    - systemische behandeling
- pTNM-stadium
- ...

Per item zal nagedacht moeten worden over de wijze waarop selectie plaatsvindt. Uiteindelijk worden de gegevens door het algoritme aangeleverd aan de FHIR-server van IKNL.

In verband met internationale compatibiliteit is het belangrijk om de FHIR-profielen af te stemmen op de implementatiegids van [mCode](https://www.hl7.org/fhir/us/mcode/).

### Het algoritme op hoofdlijnen
Het doel van het algoritme is om patiënten met een hoofd-halstumor, waarvan de diagnose is gesteld in een bepaalde periode, te identificeren. Hiervoor zijn op hoofdlijnen twee zaken nodig:

1. De juiste diagnose
2. De juiste incidentiedatum (de datum de diagnose is gesteld)
3. Selectie van aanvullende gegevens uit de A-set

De onderstaand secties gaan dieper op de eerste twee punten in.

Zodra de juiste patiënten zijn geïdentificeerd, kan voor deze selectie verder gezocht worden naar gegevens die relevant zijn voor de NKR.

#### Vaststellen van de diagnose
Diagnoses worden in het EPD vastgelegd middels ICD-10. IKNL registreert middels ICD-o-3, maar de topografie van ICD-o-3 lijkt equivalent aan ICD-10. In de FHIR-standaard worden diagnoses vastgelegd/uitgewisseld m.b.v. de [Condition](https://hl7.org/fhir/R4/condition.html) resource.

Voor hoofd-halstumoren (HHT) wordt een beperkte set [ICD-10 codes](https://terminologie.nictiz.nl/art-decor/claml?collection=icd10-nl-data) gebruikt: `C00 - C14`, `C30 - C32`; de volledige (sub)set, inclusief sublokalisaties, is vastgelegd in de Valueset [Head and Neck Cancer Conditions](ValueSet-hnc-vs.html). Het doorzoeken van de tabel met diagnoses in het EPD op deze codes, zou de juiste patiënten moeten identificeren.

Hierbij zijn twee punten van aandacht:
- `C14.8` wordt door IKNL "misbruikt" voor situaties waar de primaire tumor onbekend (PTO) is met een PCC localisatie in de halsklieren.
- Gemetasaseerde ziekte wordt in Radboud gecodeerd met `C77.0`, maar binnen IKNL worden de metastasen geregistreerd onder de code van de primaire tumor.

Naast de topografie, zou ook gekeken kunnen worden of morfologie en gedrag in het EPD beschikbaar zijn (zie ook onderstaande tabellen). Voor een subset aan codes wordt in de NKR-handleiding een aanvullende beschrijving gegeven (Tabel 2). Morfologie wordt vastgelegd middels ICD-o-3. Voor HHT wordt een beperkte set gebruikt; deze is vastgelegd in de ValueSet [Head and Neck Cancer Morphology](ValueSet-hnc-morphology-vs.html).

> **Tussentijdse update**
>
> Een vergelijking van de selectie op bovenstaande codes met de data die reeds in de NKR beschikaar is (incidentiejaren 2020-2022) levert de volgende resultaten:
>
> |                       | In NKR    | Niet in NKR |
> |-----------------------|-----------|-------------|
> | **In selectie RUMC**      | 1307 (TP) | 516 (FP)    |
> | **Niet in selectie RUMC** | 178 (FN)  | N/A (TN)    |
>
> Ad FN: in veel gevallen verklaard doordat de incidentiedatum in de NKR buiten de periode 2020-2022 valt.
> Ad FP:
>   1. 284 van de 516 patiënten zijn _wel_ bekend in de NKR, maar met een andere tumor of datum.
>   2. De  232 patiënten die _niet_ bekend zijn in de NKR, hebben wel een passende ICD-10 code. Het is (nog) niet helemaal duidelijk waarom deze patiënten


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

Binnen het [R(H)ONDA](https://iknl.nl/projecten/rhonda)-project, een samenwerking tussen IKNL en Performation, is ervoor gekozen om initieel uit te gaan van de datum van registratie van de diagnose in het EPD. Datamanagers van IKNL kunnen deze datum daarna aanscherpen tot een definitieve incidentiedatum.

> **Voorstel**
>
> Het lijkt verstandig om initieel aan te sluiten bij beslissing zoals genomen in het R(H)ONDA-project en uit te gaan van de datum van _registratie_ van de diagnose. Dit maakt de weg vrij voor het opnemen van aanvullende items, zoals morfologie en tumorstadium.

#### Bepalen van morfologie, graad, en gedrag
Nader te bepalen.

#### Vaststellen van TNM-stadium
Nader te bepalen.

> Melle (26-06-2024): Op basis van de PA-verslagen die als voorbeeld zijn verstrekt, lijkt TNM-stadium na excisie niet in het verslag genoemd te worden. In Epic wordt het stadium vastgelegd in specifieke module. Zijn deze gegevens te vatten in/uit te lezen via een QuestionnaireResponse?


### Benodigde resources
Op basis van het bovenstaande, lijkt het algoritme voor het maken van de patiëntselectie minimaal toegang nodig te hebben tot de volgende resources:

* [Patient](StructureDefinition-plugin-patient.html)
* [Condition](StructureDefinition-plugin-condition.html)
* [DiagnosticReport](StructureDefinition-plugin-PathologyReport.html) (PA-verslag)
* [Encounter](StructureDefinition-plugin-encounter.html)

