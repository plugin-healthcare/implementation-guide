
<img src="assets/images/logo plugin rgb_groot_met iconen_kleur.svg" class="figure-img img-responsive img-rounded center-block" alt="PLUGIN Logo">
<div style="clear:both;"></div>

### Achtergrond & Inleiding
#### Het probleem
Om de zorg betaalbaar, toegankelijk en van goede kwaliteit te houden, zijn inzichten uit klinische data essentieel. Het verkrijgen van zulke inzichten is een grote uitdaging door IT-systeemheterogeniteit, patiëntendossierorganisatie en ongestructureerde informatie, zoals verslagen en brieven. Uitwisseling en hergebruik van data is daardoor voor ziekenhuizen complex en arbeidsintensief. Landelijke registraties spelen hierin een belangrijke rol: een Nederlands ziekenhuis participeert gemiddeld in [**60**](https://www.atr-regeldruk.nl/wp-content/uploads/2023/06/19-U052-Min-VWS-Uitvoeringsregeling-Wkkgz-ivm-regie-op-kwaliteitsregistraties-w.g.pdf) registraties. Automatisering verlicht deze druk natuurlijk, maar ook geautomatiseerde processen vergen onderhoud.

Deze traditionele, gecentraliseerde aanpak kent nog een andere, belangrijke beperking: aanlevering voor registraties beperkt zich (vrijwel altijd) tot een set van nauwkeurig gedefinieerde items, terwijl veel informatie besloten ligt in vrije tekst. Een groot deel van de beschikbare data blijft hierdoor ongebruikt.

Het centraliseren van volledige (gespeudonimiseerde) patiëntendossiers is echter lastig (en met goede redenen):
1. Het is belangrijk om de privacy van patiënten te beschermen; er is wet- en regelgeving om rekening mee te houden. Hoe meer data centraal wordt opgeslagen, hoe groter het risico dat anonimisatie/pseudonimisatie faalt.
1. Het delen van (grote hoeveelheden) data brengt ook het risico op verlies van controle met zich mee: zodra data gedeeld is, is het lastig te beheersen hoe deze wordt gebruikt (bijv. gekopieerd en gedeeld met derden).

Daarnaast is klinische data nog niet altijd in een standaard, zoals FHIR, aanwezig, wat analyse en ontwikkeling van AI-toepassingen bemoeilijkt en vertraagd. Voor hergebruik van klinische data dienen IT-afdelingen van ziekenhuizen nu telkens opnieuw maatwerk infrastructuur te leveren, met hogere complexiteit en kosten tot gevolg. Tot slot is de omvang van klinische data in ziekenhuizen vaak te beperkt voor AI-toepassingen. En werken de data scientisten in ziekenhuizen vaak alleen, wat de ontwikkeling van AI-toepassingen vertraagd. De eventueel ontwikkelden AI-toepassingen in een ziekenhuis zijn niet altijd schaalbaar naar een volgend ziekenhuis, waardoor veel AI-toepassingen blijven hangen in Technology Readiness Levels (TRL) 4.

#### De oplossing
De PLUGIN infrastructuur biedt een alternatief voor gecentraliseerde dataopslag en -analyse: een federatieve aanpak. Hierbij worden algoritmen/berekeningen naar de data gebracht en blijft de data (veilig) bij de bron. In combinatie met FHIR standaardisatie aan de bron biedt PLUGIN één infrastructuur die voor meerdere doeleinden kan worden gebruikt.

Via deze federatieve aanpak is het ook mogelijk om statistische analyses uit te voeren of om modellen te trainen middels [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning). Technieken uit de Kunstmatige Intelligentie (AI) bieden zelfs de mogelijkheid om van gegevens uit ongestructureerde bronnen te leren, zoals medische verslaglegging of radiologiebeelden.

De oplossing die PLUGIN beoogt, behelst het standaardiseren van EPD-data naar een landelijk datamodel o.b.v. FHIR en deze te ontsluiten door middel van een federatieve infrastructuur o.b.v. vantage6.

#### Doelstelling
DHD, IKNL, en EZA willen gezamenlijk één landelijk dekkende, federatieve infrastructuur (PLUGIN) ontwikkelen, van en voor de Nederlandse ziekenhuizen. Hierbij wordt gebruik gemaakt van FAIR data op basis van de HL7 FHIR-standaard en vantage6. Het voornaamste doel is om secundair gebruik van klinische gegevens te vereenvoudigen.

Door klinische gegevens op een _veilige_ manier te ontsluiten, worden verschillende toepassingen mogelijk gemaakt:

1. Het ontwikkelen van AI-toepassingen, zowel voor het ondersteunen van administratieve verrichtingen (bijv. automatisch coderen van diagnoses) als de kliniek (bijv. clinical decision support)
1. Herkennen van patiënten die aan bepaalde criteria voldoen (bijv. voor deelname aan clincial trials)
1. Het ondersteunen van gegevensaanlevering (bijv. voor kwaliteitsregistraties zoals de LBZ en NKR)


Hierbij worden de volgende uitgangspunten gehanteerd:

* De infrastructuur is schaalbaar en toekomstbestendig.
* De infrastructuur past binnen de kaders van [Health-RI](https://www.health-ri.nl).
* Er wordt aangesloten bij nationale en internationale initiatieven, zoals ...
  - [CumuluZ](https://www.cumuluz.org)
  - [mCode](https://www.hl7.org/fhir/us/mcode/)
  - de [EHDS](https://health.ec.europa.eu/ehealth-digital-health-and-care/european-health-data-space_en).
* Er wordt vroegtijdig nagedacht over opschaling en financiële borging.


#### Gerelateerde projecten
In 2019 is DHD het project "AI ondersteund coderen" gestart. Vanuit het CBS werd om actie gevraagd m.b.t. de codering van dagopnamen: vanaf 2023 is de codering van dagopnamen verplicht. Echter, de kwaliteit en uniformiteit van de diagnoseregistratie van dagopnamen in de LBZ nam al jaren af. Daarnaast neemt het aantal medisch codeurs in ziekenhuizen drastisch af.

Daarom is besloten om een AI-model te ontwikkelen dat automatisch dagopnamen kan voorzien van een ICD-10 codering. Het [NLP](https://en.wikipedia.org/wiki/Natural_language_processing)-model (AI) is ontwikkeld op ongestructureerde data (ontslabrieven, polibrieven, OK-verslagen en PA-verslagen). Het model is momenteel (okt 2023) in staat om 70% van de dagopnamen te voorzien van een automatische codering.

Alle deelnemende ziekenhuizen worden aangesloten op de PLUGIN architectuur (vantage6). Van de PLUGIN pilot ziekenhuizen die ook deelnemen aan use-case AI ondersteund coderen zal de dataset gestandaardiseerd worden naar FHIR.

