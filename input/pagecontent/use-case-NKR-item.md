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
Diagnoses worden in het EPD vastgelegd middels ICD-10. Voor hoofd-halstumoren wordt een beperkte set [ICD-10 codes](https://terminologie.nictiz.nl/art-decor/claml?collection=icd10-nl-data) gebruikt (zie ook onderstaande Tabel 1 met toelichting, overgenomen uit de NKR-Handleiding). Het doorzoeken van de tabel met diagnoses in het EPD op deze codes (bijv. op `C00 - C14`, `C30`, en `C32`), zou aan aangrijpingspunt kunnen zijn. Naast de topografie, zou ook gekeken kunnen worden of de morfologie in het EPD beschikbaar is (zie ook onderstaande Tabel 2, overgenomen uit de NKR-Handleiding).

In de FHIR-standaard worden diagnoses vastgelegd/uitgewisseld m.b.v. de [Condition](https://hl7.org/fhir/R4/condition.html) resource.

> | ICD-10 | Omschrijving        |
> |--------|---------------------|
> |  C00.0 | lippenrood bovenlip |
> |  C00.1 | lippenrood onderlip |
> |  C00.3 | mucosa binnenzijde bovenlip |
> |  C00.4 | mucosa binnenzijde onderlip |
> |  C02.0 | tong dorsaal oppervlak (voorste 2/3 van de tong) |
> |  C02.1 | tong punt en zijrand |
> |  C02.2 | ventraal oppervlak (voorste 2/3 deel van de tong) |
> |  C02.3 | tong beweeglijke deel (voorste 2/3 van de tong NNO) |
> |  C03.0 | processus alveolaris boven |
> |  C03.1 | processus alveolaris onder |
> |  C09.0 | tonsilloge, tonsilnis |
> |  C09.1 | voorste farynxboog van de orofarynx |
> |  C10.1 | voorzijde epiglottis |
> |  C11.0 | bovenwand nasofarynx (loopt vanaf de verbinding tussen harde en zachte verhemelte tot aan de schedelbasis) |
> |  C11.1 | achterwand nasofarynx (loopt vanaf de verbinding tussen harde en zachte verhemelte tot aan de schedelbasis) |
> |  C11.2 | zijwand nasofarynx |
> |  C11.3 | voorwand nasofarynx (het bovenoppervlak van het zachte verhemelte) |
> |  C12.9 | sinus pyriformis |
> |  C14.8 | primair onbekende hoofd-halstumor (carcinoma of unknown primary (CUP)) met plaveiselcelcarcinoom 8050-8089 in de halsklieren vanaf incidentiejaar 2015 (dus geen adenocarcinoom) (cT0N+M0) |
> |  C30.1 | auditory tube (buis van Eustachius) |
> |  C32.1 | sinus van Morgagni (ruimte tussen de ware en valse stembanden: stembandholten) |
> |  C32.1 | epiglottis, NOS |
>
> **Tabel 1:** ICD-10 codes horend bij hoofd-halstumoren.
>
> * Huid van de lip wordt gecodeerd op C44.0 en valt niet onder de hoofd-halscarcinomen. Wordt er een wigexcisie gedaan, dan is er hoogstwaarschijnlijk sprake van een tumor van lippenrood (C00.0-1, C00.6).
> * Overgang van de glottis (C32.0) naar subglottis (C32.2) is slecht gedefinieerd. Klinisch wordt aangenomen dat de overgang ligt op 5 mm onder de vrije rand van de ware stemband.
> * Codeer lokalisatie tong tonsil (C02.4) op C01.9. In principe wordt de topografiecode C02.4 dus niet gebruikt voor hoofd-hals tumoren. De tong tonsil bestaat namelijk uit lymfatisch weefsel. Carcinomen ontstaan in het epitheel van de tongbasis en groeien vanuit het epitheel de tonsil in.
> * De auditory canal (C44.2 (gehoorgang)) valt onder de huidtumoren en is dus een andere lokalisatie dan de auditory tube (C30.1)


> | Morfologie/gedrag | Omschrijving |
> |--------|-------------------------|
> | 8077/2 | intra-epitheliale dysplasie graad 3, LIN 3, ernstig/hooggradig/graad 3 8023/3 nuclear protein in testis (gen.) (NUT) carcinoom |
> | 8085/3 | plaveiselcarcinoom (PCC), HPV/p16 positief |
> | 8086/3 | plaveiselcelcarcinoom, HPV/p16 negatief |
> | 8144/3 | sinonasaal adenocarcinoom van het intestinale type |
> | 8500/3 | salivary ductaal carcinoom |
> | 8502/3 | Mammary Analogue Secretory Carcinoma (MASC) in speekselklier ICD-O 3 omschrijving: secretoir carcinoom van de mamma |
> | 8020/3 | SNUC (sinonasaal ongedifferentieerd carcinoom), hieronder valt ook SMARCB1/SMARCA4 deficiënt sinonasaal carcinoom |
>
> **Tabel 2:** morfologie- en gedragscodes volgens ICD-o-3, zoals gebruikt in de NKR.

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