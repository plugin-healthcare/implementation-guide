Logical: NKRKern
Id: NKRKern
Title: "Onderzoeksbestand NKR: Kern"
Description:  """Logisch model voor de NKR kerntabel.

Maturity Level: 0 Draft. Meerdere attributen moeten nog worden veranderd van
`string` naar `code` of `CodeableConcept`. Ook meerdere codestelsels en
waardenlijsten ontbreken nog.
"""
* rn 1..1 Identifier "Registration number (RN)" """"""
* zid 1..1 Identifier "Disease identifier ZID" """"""
* eid 1..1 Identifier "Episode identifier (EID)" """"""
* epis 1..1 code "Episode" """One of DIA, VERA, VERB, REV, TRA, OBD"""
* gebdat 1..1 date "Date of birth" """"""
* gesl 1..1 code "Gender" """1: male, 2: female"""
* incdat 1..1 date "Incidence date" """"""
* incjr 1..1 integer "Incidence year" """"""
* leeft 1..1 integer "Age at diagnosis" """"""
* ovldat 1..1 date "Date of death" """"""
* post_cijf 1..1 string "Digits of the zipcode" """"""
* vit_stat 1..1 code "Vital status at last follow-up. 0: alive, 1: deceased" """"""
* vit_stat from https://plugin.healthcare/fhir/ValueSet/nkr-vitstat
* vit_stat_dat 1..1 date "Date of last follow-up" """"""
* cT 0..1 string "cT" """"""
* cN 0..1 string "cN" """"""
* cM 0..1 string "cM" """"""
* cStadium 0..1 string "Stage grouping" """"""
* pT 0..1 string "pT" """"""
* pN 0..1 string "pN" """"""
* pM 0..1 string "pM" """"""
* pStadium 0..1 string "Stage grouping" """"""
* basis_diag 1..1 code "Basis for diagnosis."
* basis_diag from https://plugin.healthcare/fhir/ValueSet/nkr-basisvoordiagnose
* later 0..1 code "Lateraliteit"
* diffgrad 0..1 code "Differentiatiegraad"
* gedrag 0..1 code "Gedrag"
* morf 0..1 CodeableConcept "Morfologie"
// * morf_icd11 0..1 CodeableConcept "Morfologie (inclusief enkele ICD11 codes)"
* ond_lymf 0..1 integer "Aantal onderzochte regionale lymfeklieren"
// * topo 0..1 CodeableConcept "Topografie exclusief sublokalisatie"
// * sublok 0..1 integer "Sublokalisatie"
* topo_sublok 0..1 CodeableConcept "Topografie inclusief sublokalisatie"
* morfologie 0..1 CodeableConcept "Morfologie"
* tumsoort 1..1 CodeableConcept "Tumorsoort. Indeling specifiek voor gebruik in de NKR."
* bel_ther_zkh 0..1 CodeableConcept "Ziekenhuis van belangrijkste therapie zoals in NKR online."
* contact_zkh1 0..1 CodeableConcept "Ziekenhuis van eerste contact i.v.m. maligniteit"
* contact_zkh_patnum1 0..1 string "Patiëntnummer in ziekenhuis van eerste contact i.v.m. maligniteit"
* zkh1 0..1 CodeableConcept "Ziekenhuis van diagnose en/of therapie (geen waarde in volgorde) 1"
* zkh2 0..1 CodeableConcept "Ziekenhuis van diagnose en/of therapie (geen waarde in volgorde) 2"
* zkh3 0..1 CodeableConcept "Ziekenhuis van diagnose en/of therapie (geen waarde in volgorde) 3"
* zkh4 0..1 CodeableConcept "Ziekenhuis van diagnose en/of therapie (geen waarde in volgorde) 4"
* zkh_patnum1 0..1 string "Patiëntnummer in zkh 1"
* zkh_patnum2 0..1 string "Patiëntnummer in zkh 2"
* zkh_patnum3 0..1 string "Patiëntnummer in zkh 3"
* zkh_patnum4 0..1 string "Patiëntnummer in zkh 4"


Logical: NKRGebeurtenis
Id: NKRGebeurtenis
Title: "Onderzoeksbestand NKR: Gebeurtenis"
Description:  """Logisch model voor gebeurtenissen (uitslagen en behandelingen)
zoals beschikbaar in de NKR onderzoeksbestanden. Per gebeurtenis kunnen
gebeurtenisgegevens (details) worden geregistreerd.

Maturity Level: 0 Draft. Meerdere codestelsels en waardenlijsten ontbreken nog.
"""
* ^abstract = true
* gid 1..* Identifier "Gebeurtenis id (GID)" """"""
* gbs_vnr 1..* integer "Gebeurtenis volgnummer" """"""
* gbs_gebeurtenis_code 1..* code "Gebeurtenis code" """"""
* gbs_begin_dtm 0..* date "Startdatum"
* gbs_eind_dtm 0..* date "Einddatum"
* gbs_instelling_code 0..1 code "Instelling (ziekenhuis)"
* gbs_specialisme_code 0..1 integer "Specialisme"


Logical: NKRGebeurtenisGegeven
Id: NKRGebeurtenisGegeven
Title: "Onderzoeksbestand NKR: GebeurtenisGegeven"
Description: """Logisch model voor gebeurtenisdetails zoals geregistreerd in de
NKR. Een detail is o.b.v het `gid` gekoppeld aan een Gebeurtenis, d.w.z. een
[NKRBehandeling](StructureDefinition-NKRBehandeling.html) of een [NKRUitslag](StructureDefinition-NKRUitslag.html).

Maturity Level: 0 Draft. Meerdere codestelsels en waardenlijsten ontbreken nog.
"""
* rn 1..1 Identifier "Registration number (RN)" """"""
* gid 1..* Identifier "Gebeurtenis id (GID)" """"""
* ggn_id 1..1 Identifier "Gegeven id" """"""
* ggn_tumor_specifiek_item_code 1..1 code "Tumorspecifieke item code. Deze code is specifiek voor de NKR."
* ggn_waarde 1..1 string "Waarde"


Logical: NKRBehandeling
Parent: NKRGebeurtenis
Id: NKRBehandeling
Title: "Onderzoeksbestand NKR: Behandeling"
Description:  """Logisch model voor behandelingen zoals beschikbaar in de NKR
onderzoeksbestanden. Per behandeling kunnen gebeurtenisgegevens (details) worden
geregistreerd.

Maturity Level: 0 Draft. Meerdere codestelsels en waardenlijsten ontbreken nog.
"""
* gbs_gebeurtenis_code from  https://plugin.healthcare/fhir/ValueSet/nkr-behandeling

Logical: NKRUitslag
Parent: NKRGebeurtenis
Id: NKRUitslag
Title: "Onderzoeksbestand NKR: Uitslag"
Description:  """Logisch model voor uitslagen zoals beschikaar in de NKR
onderzoeksbestanden. Per uitslag kunnen gebeurtenisgegevens (details) worden
geregistreerd.

Maturity Level: 0 Draft. Meerdere codestelsels en waardenlijsten ontbreken nog.
"""
* gbs_gebeurtenis_code from  https://plugin.healthcare/fhir/ValueSet/nkr-uitslag
