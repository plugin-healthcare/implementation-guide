// -----------------------------------------------------------------------------
// CodeSystem
// -----------------------------------------------------------------------------
CodeSystem: NKRUitslag
Id: nkr-uitslag
Title: "NKR Uitslag"
Description: "Uitslagen (gebeurtenissen) zoals geregistreerd binnen de NKR. Op dit moment bevat het codesystem alleen nog de codes die relevant voor hoofd-halstumoren."
* #1506     "Consult oncoloog"
* #5012     "Lengte en gewicht"
* #7702     "Lokalisatie"
* #7708     "Einde behandeling"
* #7712     "Responsbepaling"
* #8040     "Moleculaire diagnostiek"
* #8050     "Biopt"
* #8115     "(panendo)scopie (of subtotoscopie)"
* #8120     "Schildwachtklierprocedure"
* #8121     "Klierextirpatie (bij HH-tumoren)"
* #8140     "EBUS"
* #8171     "FNA"
* #8212     "Orthopantomogram (OPG)"
* #8220     "CT"
* #8225     "CT aangezicht/hoofd-hals"
* #8230     "MRI"
* #8240     "PET"
* #8241     "PET/MRI"
* #8250     "Echo"
* #8260     "X-thorax"
* #8270     "PET/CT"
* #8500     "Laboratoriumonderzoek"
* #9901     "LO en anamnese"
* #9902     "Multifocale tumor"
* #9903     "Residu"
* #9908     "Pathologie"
* #9909     "Relatie doodsoorzaak maligniteit"
* #9910     "1e Consult ziekenhuis"
* #99101    "1e bron uit GRA"
* #99102    "Overige bronnen uit GRA"
* #99105    "Laatste inzage door datamanager"
* #99106    "Laatste datum met klinische informatie"
* #99107    "Einde klinische follow-up"
* #99109    "Tumorstatus"
* #99111    "Controle comorbiditeiten"
* #99112    "Controle complicaties"
* #9913     "1e Consult expertisecentrum"
* #99140    "Behandeling aangepast i.v.m. covid-19-pandemie"
* #9915     "PA-laboratorium"
* #9922     "MDO"
* #9931     "Patient in project"
* #GYN05    "Uitgangspunt behandeling"
* #GYN11    "Lymfeklieren beeldvorming"
* #GYN16    "Progressie"
* #HH02     "Performance status meting"
* #HH03     "ACE-27 (comorbiditeit) score"
* #HH04     "1e PA bevestiging"
* #HH05     "PA-verslag operatie"
* #HH06     "Verwijzing naar HH team HHOC"
* #HH07     "Behandelplan"
* #HH08     "Patientgesprek"
* #HH09     "Consult dietist"
* #HH10     "Diagnostiek opnieuw beoordeeld in HHOC"
* #HH11     "Consult fysiotherapeut"
* #HH12     "Gegevens positieve regionale lymfeklier"
* #HH13     "Consult tandheelkundig team"
* #HH14     "Afronden radiotherapie"
* #HH15     "Afronden systemische therapie"
* #HH16     "Ongeplande opname"
* #HH17     "Gewicht na initiele behandeling"
* #HH18     "Gegevens t.b.v. TNM8"
* #OVLLUMC  "Uitslag voor OVERLIJDEN LUMC"
* #TLUMC2   "Gegevens radiotherapie LUMC"


// -----------------------------------------------------------------------------
// ValueSet
// -----------------------------------------------------------------------------
ValueSet: NKRUitslag
Id: nkr-uitslag
Title: "NKR Uitslag"
Description: "Uitslagen (gebeurtenissen) zoals geregistreerd binnen de NKR. Op dit moment bevat het codesystem alleen nog de codes die relevant voor hoofd-halstumoren."
* ^immutable = true
* include codes from system NKRUitslag