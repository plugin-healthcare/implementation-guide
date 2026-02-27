
<img 
  src="assets/images/logo plugin rgb_groot_met iconen_kleur.svg" 
  class="figure-img img-responsive img-rounded center-block" 
  style="width:65%"
  alt="PLUGIN Logo"
  />


<div style="clear:both;"></div>



### Achtergrond
Deze ImplementatieGids (IG) biedt een helpende hand bij deelname aan [PLUGIN](about-plugin.html). De gids beschrijft daarvoor een Common Data Model (informatiestandaard) o.b.v. FHIR-Profielen.

Het doel van het [PLUGIN](about-plugin.html)-programma is om klinische gegevens uit het zorgproces beschikbaar te maken voor (met name) secundair gebruik via een gefedereerde infrastructuur. Voor gefedereerd gebruik van deze gegevens, is het noodzakelijk om een aantal zaken te weten:
1. Welke gegevens zijn beschikbaar; wat is de itemset?
2. Hoe zijn de gegevens gecodeeerd; welke terminologie is toegepast?
3. Hoe zijn de gegevens gestructureerd; staan de gegevens in tabellen of JSON-bestanden? Hoe zijn relaties tussen gegevens vastgelegd?
4. Hoe kunnen de gegevens worden benaderd; file-based access? SQL-queries? RESTful APIs?

Met een Common Data Model streven we ernaar een gestandaardiseerde set gegevens te definiëren die herbruikbaar is voor het merendeel van het secundaire gebruik van klinische data. Vanuit het PLUGIN-consortium werken we samen aan een zo breed mogelijk gedragen Common Data Model, zodat ziekenhuizen voor veel projecten kunnen volstaan met één gestandaardiseerde data-extractie.

Op dit moment richt de Implementatiegids zich op punten 1 t/m 3 uit de opsomming hierboven. Er wordt vooralsnog géén uitspraak gedaan over opslag van gegevens of mechanisme van benaderen. Voor toepassing binnen een datastation dient ook over punt 4 helderheid te worden verschaft. Dit is een onderwerp dat momenteel wordt uitgewerkt door [Health-RI](https://health-ri.github.io/data-station-specification/) en zal t.z.t. ook in deze IG worgen beschreven.

### De aanpak
Ziekenhuizen zijn een belangrijke bron van klinische gegevens. Binnen ziekenhuizen is het elektronische patiëntendossier (epd) hét systeem waarin veel gegevens samenkomen.  Deze Implementatiegids werkt daarom een "Common Data Model" (CDM) uit dat een brug slaat tussen de gegevens zoals deze in het epd zijn vastgelegd en de wereld van secundair gebruik (<strong>Figuur 1</strong>). Dit doen we door per FHIR Resource/zib/concept aan te geven welke attributen _minimaal noodzakelijk_ zijn om breed, secundair gebruik mogelijk te maken. De informatiestroom die hiervoor nodig is, staat schematisch weergegeven in onderstaand figuur. Hierbij wordt eerder werk, zoals de [zorginformatiebouwstenen](https://nictiz.nl/wat-we-doen/activiteiten/zibs/) en de Nederlandse [nl-core](https://simplifier.net/packages/nictiz.fhir.nl.r4.nl-core) FHIR Profielen, zoveel mogelijk hergebruikt.

Vanuit dit FHIR Common Data Model is het vervolgens mogelijk om verschillende datasets samen te stellen, zoals de datasets die nodig zijn voor aanlevering aan de Nederlandse Kankerregistratie of voor het project AI-ondersteund coderen. Ook kunnen de data van hieruit worden omgezet naar andere common data modellen, zoals het [OMOP CDM](https://ohdsi.github.io/CommonDataModel/). 

### Relatie met eerder werk
Eerdere inspanningen op gebied van standaardisatie van deze gegevens, richtten zich voornamelijk op  gegevens<i>overdracht</i>. Hierbij werd het uitgangspunt gehanteerd dat een zorgverlener, met een goed zicht op de medische status, verantwoordelijk is voor de juiste selectie en verzending van patiëntgegevens. 

Bij gebruik van data binnen een gefedereerd netwerk (<strong>Figuur 2</strong> en <strong>Figuur 3</strong>), is dit uitgangspunt echter omgekeerd. Een gebruiker moet zonder directe toegang tot het volledige dossier de benodigde informatie kunnen terugvinden én interpreteren. Hiervoor is het belangrijk om niet alleen naar losse concepten (bijv. bloeddruk) te kijken, maar ook afspraken te maken over de aanwezige relaties tussen gegevens. De context moet kunnen worden afgegeleid uit de individuele (zorginformatie)bouwstenen.



{% 
  include img.html
  img="relationship-ehr-cdm.png"
  width="75%"
  
  caption="<strong>Figuur 1:</strong> Relatie tussen epd-data en het PLUGIN FHIR Common Data Model (CDM). Data uit epd's (en andere databronnen) worden, waar mogelijk, in overeenstemming gebracht met het CDM. Van hieruit kunnen andere datasets worden samengesteld. Deze data worden beschikbaar gesteld in een Federated Data Station."
%}

{% 
  include img.html
  img="relationship-ehr-cdm-with-use.png"
  width="75%"

  caption="<strong>Figuur 2:</strong> De data worden binnen het Federated Data Station gekoppeld aan compute en software die gefedereerde toepassingen mogelijk maakt, bijvoorbeeld vantage6. Dit is geen noodzaak; het CDM kan ook gebruikt worden met andere toepassingen." 
%}

{% 
  include img.html
  img="relationship-ehr-cdm-in-network.png"
  width="75%"

  caption="<strong>Figuur 3:</strong> Meerdere datastations samen vormen een gefedereerd netwerk." 
%}




{% include totstandkoming.html %}