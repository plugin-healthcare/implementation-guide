
### Over deze ImplementatieGids

Deze ImplementatieGids (IG) biedt een helpende hand bij deelname aan PLUGIN. De gids beschrijft daarvoor de informatiestandaard (o.b.v. FHIR) en wijze waarop de data beschikbaar gesteld/ontsloten.

De informatiestandaard is uitgewerkt aan de hand van enkele [logische modellen](artifacts.html#structures-logical-models) en vastgelegd in [profielen](artifacts.html#structures-resource-profiles).

De wijze waarop de data, conform voorgenoemde profielen, wordt ontsloten, dient nog te worden uitgewerkt. Momenteel worden verschillende opties overwogen, waaronder:
* De FHIR [RESTful API](http://hl7.org/fhir/R4/http.html)
* Een (shared) folder met NDJSON bestanden


#### Versiebeheer

De IG en bijbehorende packages worden gepubliceerd op [https://plugin.healthcare/fhir](https://plugin.healthcare/fhir). Hierbij verwijst [https://plugin.healthcare/fhir](https://plugin.healthcare/fhir) naar de laatste (minor versie van de laatste) major release. Daaronder zijn de volgende subdirectories te vinden:
* `/ci-build`: Laatste build van de `main` branch.
* `/{major}`: Major versie `major`, de laatste release van `major.minor.patch`
* `/{major}.{minor}`: Versie `major.minor`; verwijst naar de laatste release van  `major.minor.patch`
* `/{major}.{minor}.{patch}`: Versie `major.minor.patch`

Op de pagina [https://plugin.healthcare/fhir/history.html](https://plugin.healthcare/fhir/history.html) is een overzicht te vinden van gepubliceerde versies.

De broncode van deze IG wordt gepubliceerd op [GitHub](http://github.com/plugin-healthcare/implementation-guide). Ontwikkeling vindt plaats in de `main` branch. Na iedere push wordt de code (via GitHub Actions) geautomatiseerd gecompileerd en gepubliceerd op `/ci-build`.

Het gebruik van feature branches wordt aangemoedigd waar van toepassing. Wat een feature behelst, is ruim interpreteerbaar. Er kan, bijvoorbeeld, gedacht worden aan een branch waarin een use-case verder wordt uitgeschreven (e.g. `feature/use-case-nkr-item`) of aan een branch waarin specifiek aan medicatieprofielen wordt gewerkt (`feature/Medication`). Feature branches worden (nog) niet automatisch gepubliceerd na commit.

Voorafgaand aan een release van de IG/package, wordt een **branch** gemaakt met naam `release/{version}`. Bijvoorbeeld `release/1.1`. Hierin kan getest worden en worden eventuele (laatste) ontwikkelingen gedaan. Het kan, bijvoorbeeld, zijn dat eerst een (of meer) release candidate(s) wordt/worden uitgebracht (`1.1-alpha`, `1.1rc2`, ...) voordat de definitieve versie van `1.1` wordt gepubliceerd. Tussen deze versies kunnen meerdere commits zitten.

Bij release/publicatie wordt een of meerdere **tag**s gekoppeld aan de commit van de release: `version/{version}`. Bijvoorbeeld `version/1.1` of `version/2.3.1rc2`. Dit genereert automatisch een nieuwe build (via GitHub Actions) voor _iedere_ tag. Deze builds worden eveneens automatisch geüpload. Hierbij wordt het versienummer van de tag de naam van de subdirectory met de versie. Met andere woorden: de tag `version/x.y.z` wordt geüpload naar `https://plugin.healthcare/fhir/x.y.z`. Er dient handmatig voor gezorgd worden dat een versie-tag op een hoger niveau wordt verplaatst. Bijvoorbeeld, als `version/1.2.3` wordt uitgebracht, moeten de tags `version/1` en `version/1.2` worden verplaatst.
