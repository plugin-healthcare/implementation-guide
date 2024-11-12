Instance: dxt2icd10hnc
InstanceOf: ConceptMap
Usage: #definition

* name = "DiagnoseThesaurus-ICD10-HNC"
* title = "DiagnoseThesaurus voor HHT naar ICD-10-nl"
* status = #draft
* experimental = true
* description = """Mapping van de DiagnoseThesaurus op ICD-10.
"""
* purpose = """Vertalen van codes uit de DiagnoseThesaurus naar ICD-10.
"""
* sourceUri = "https://plugin.healthcare/fhir/ValueSet/dhd-dx-thesaurus"
// * targetUri[+] = ""

* group[+].source = "https://plugin.healthcare/fhir/CodeSystem/dhd-dx-thesaurus"
* group[=].target = "http://hl7.org/fhir/sid/icd-10-nl"
* group[=].element[+].code = #880
* group[=].element[=].display = "maligne neoplasma van uitwendige bovenlip"
* group[=].element[=].target.code = #C00.0
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige bovenlip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #883
* group[=].element[=].display = "maligne neoplasma van uitwendige onderlip"
* group[=].element[=].target.code = #C00.1
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige onderlip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #886
* group[=].element[=].display = "maligne neoplasma van uitwendige lip"
* group[=].element[=].target.code = #C00.2
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige lip, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #887
* group[=].element[=].display = "maligne neoplasma van binnenzijde van bovenlip"
* group[=].element[=].target.code = #C00.3
* group[=].element[=].target.display = "Maligne neoplasma van bovenlip, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #890
* group[=].element[=].display = "maligne neoplasma van binnenzijde van onderlip"
* group[=].element[=].target.code = #C00.4
* group[=].element[=].target.display = "Maligne neoplasma van onderlip, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #893
* group[=].element[=].display = "maligne neoplasma van binnenzijde van lip"
* group[=].element[=].target.code = #C00.5
* group[=].element[=].target.display = "Maligne neoplasma van lip, niet gespecificeerd, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #896
* group[=].element[=].display = "maligne neoplasma van commissuur van lip"
* group[=].element[=].target.code = #C00.6
* group[=].element[=].target.display = "Maligne neoplasma van commissuur van lip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #899
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van lip"
* group[=].element[=].target.code = #C00.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van lip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #902
* group[=].element[=].display = "maligne neoplasma van lip"
* group[=].element[=].target.code = #C00.9
* group[=].element[=].target.display = "Maligne neoplasma van lip, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #903
* group[=].element[=].display = "maligne neoplasma van tongbasis"
* group[=].element[=].target.code = #C01
* group[=].element[=].target.display = "Maligne neoplasma van tongbasis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #906
* group[=].element[=].display = "maligne neoplasma van dorsaal oppervlak van tong"
* group[=].element[=].target.code = #C02.0
* group[=].element[=].target.display = "Maligne neoplasma van dorsaal oppervlak van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #909
* group[=].element[=].display = "maligne neoplasma van tongrand"
* group[=].element[=].target.code = #C02.1
* group[=].element[=].target.display = "Maligne neoplasma van tongrand"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #912
* group[=].element[=].display = "maligne neoplasma van ventraal oppervlak van tong"
* group[=].element[=].target.code = #C02.2
* group[=].element[=].target.display = "Maligne neoplasma van ventraal oppervlak van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #915
* group[=].element[=].display = "maligne neoplasma van voorste tweederde deel van tong"
* group[=].element[=].target.code = #C02.3
* group[=].element[=].target.display = "Maligne neoplasma van voorste tweederde van tong, deel niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #916
* group[=].element[=].display = "maligne neoplasma van tonsilla lingualis"
* group[=].element[=].target.code = #C02.4
* group[=].element[=].target.display = "Maligne neoplasma van tonsilla lingualis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #919
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van tong"
* group[=].element[=].target.code = #C02.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #922
* group[=].element[=].display = "maligne neoplasma van tong"
* group[=].element[=].target.code = #C02.9
* group[=].element[=].target.display = "Maligne neoplasma van tong, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #923
* group[=].element[=].display = "maligne neoplasma van tandvlees van bovenkaak"
* group[=].element[=].target.code = #C03.0
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees van bovenkaak"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #926
* group[=].element[=].display = "maligne neoplasma van tandvlees van onderkaak"
* group[=].element[=].target.code = #C03.1
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees van onderkaak"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #929
* group[=].element[=].display = "maligne neoplasma van tandvlees"
* group[=].element[=].target.code = #C03.9
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #930
* group[=].element[=].display = "maligne neoplasma van voorste deel van mondbodem"
* group[=].element[=].target.code = #C04.0
* group[=].element[=].target.display = "Maligne neoplasma van voorste deel van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #933
* group[=].element[=].display = "maligne neoplasma van laterale deel van mondbodem"
* group[=].element[=].target.code = #C04.1
* group[=].element[=].target.display = "Maligne neoplasma van laterale deel van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #936
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van mondbodem"
* group[=].element[=].target.code = #C04.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #939
* group[=].element[=].display = "maligne neoplasma van mondbodem"
* group[=].element[=].target.code = #C04.9
* group[=].element[=].target.display = "Maligne neoplasma van mondbodem, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #940
* group[=].element[=].display = "maligne neoplasma van hard gehemelte"
* group[=].element[=].target.code = #C05.0
* group[=].element[=].target.display = "Maligne neoplasma van hard gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #943
* group[=].element[=].display = "maligne neoplasma van zacht gehemelte"
* group[=].element[=].target.code = #C05.1
* group[=].element[=].target.display = "Maligne neoplasma van zacht gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #946
* group[=].element[=].display = "maligne neoplasma van uvula"
* group[=].element[=].target.code = #C05.2
* group[=].element[=].target.display = "Maligne neoplasma van uvula"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #949
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van gehemelte"
* group[=].element[=].target.code = #C05.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #952
* group[=].element[=].display = "maligne neoplasma van gehemelte"
* group[=].element[=].target.code = #C05.9
* group[=].element[=].target.display = "Maligne neoplasma van gehemelte, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #953
* group[=].element[=].display = "maligne neoplasma van wangslijmvlies"
* group[=].element[=].target.code = #C06.0
* group[=].element[=].target.display = "Maligne neoplasma van wangslijmvlies"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #956
* group[=].element[=].display = "maligne neoplasma van vestibulum oris"
* group[=].element[=].target.code = #C06.1
* group[=].element[=].target.display = "Maligne neoplasma van vestibulum oris"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #959
* group[=].element[=].display = "maligne neoplasma van retromolaire gebied"
* group[=].element[=].target.code = #C06.2
* group[=].element[=].target.display = "Maligne neoplasma van retromolaire gebied"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #962
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van mond"
* group[=].element[=].target.code = #C06.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van overige en niet gespecificeerde delen van mond"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #965
* group[=].element[=].display = "maligne neoplasma van mond"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #966
* group[=].element[=].display = "maligne neoplasma van kleine speekselklier"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #967
* group[=].element[=].display = "maligne neoplasma van glandula parotidea"
* group[=].element[=].target.code = #C07
* group[=].element[=].target.display = "Maligne neoplasma van glandula parotidea"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #968
* group[=].element[=].display = "maligne neoplasma van glandula submandibularis"
* group[=].element[=].target.code = #C08.0
* group[=].element[=].target.display = "Maligne neoplasma van glandula submandibularis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #969
* group[=].element[=].display = "maligne neoplasma van glandula sublingualis"
* group[=].element[=].target.code = #C08.1
* group[=].element[=].target.display = "Maligne neoplasma van glandula sublingualis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #970
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van grote speekselklieren"
* group[=].element[=].target.code = #C08.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van grote speekselklieren"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #971
* group[=].element[=].display = "maligne neoplasma van grote speekselklier"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #972
* group[=].element[=].display = "maligne neoplasma van tonsilnis"
* group[=].element[=].target.code = #C09.0
* group[=].element[=].target.display = "Maligne neoplasma van tonsilnis [fossa tonsillaris]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #975
* group[=].element[=].display = "maligne neoplasma van gehemelteboog"
* group[=].element[=].target.code = #C09.1
* group[=].element[=].target.display = "Maligne neoplasma van gehemelteboog (voorste)(achterste)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #978
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van tonsil"
* group[=].element[=].target.code = #C09.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van tonsil"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #981
* group[=].element[=].display = "maligne neoplasma van tonsil"
* group[=].element[=].target.code = #C09.9
* group[=].element[=].target.display = "Maligne neoplasma van tonsil, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #982
* group[=].element[=].display = "maligne neoplasma van vallecula epiglottica"
* group[=].element[=].target.code = #C10.0
* group[=].element[=].target.display = "Maligne neoplasma van vallecula epiglottica"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #985
* group[=].element[=].display = "maligne neoplasma van voorste oppervlak van epiglottis"
* group[=].element[=].target.code = #C10.1
* group[=].element[=].target.display = "Maligne neoplasma van voorste oppervlak van epiglottis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #988
* group[=].element[=].display = "maligne neoplasma van laterale wand van orofarynx"
* group[=].element[=].target.code = #C10.2
* group[=].element[=].target.display = "Maligne neoplasma van laterale wand van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #991
* group[=].element[=].display = "maligne neoplasma van achterwand van orofarynx"
* group[=].element[=].target.code = #C10.3
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #994
* group[=].element[=].display = "maligne neoplasma van kieuwspleet"
* group[=].element[=].target.code = #C10.4
* group[=].element[=].target.display = "Maligne neoplasma van kieuwspleet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #997
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van orofarynx"
* group[=].element[=].target.code = #C10.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1000
* group[=].element[=].display = "maligne neoplasma van orofarynx"
* group[=].element[=].target.code = #C10.9
* group[=].element[=].target.display = "Maligne neoplasma van orofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1001
* group[=].element[=].display = "maligne neoplasma van bovenwand van nasofarynx"
* group[=].element[=].target.code = #C11.0
* group[=].element[=].target.display = "Maligne neoplasma van bovenwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1004
* group[=].element[=].display = "maligne neoplasma van achterwand van nasofarynx"
* group[=].element[=].target.code = #C11.1
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1007
* group[=].element[=].display = "maligne neoplasma van laterale wand van nasofarynx"
* group[=].element[=].target.code = #C11.2
* group[=].element[=].target.display = "Maligne neoplasma van laterale wand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1010
* group[=].element[=].display = "maligne neoplasma van voorwand van nasofarynx"
* group[=].element[=].target.code = #C11.3
* group[=].element[=].target.display = "Maligne neoplasma van voorwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1013
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van nasofarynx"
* group[=].element[=].target.code = #C11.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1016
* group[=].element[=].display = "maligne neoplasma van nasofarynx"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1018
* group[=].element[=].display = "maligne neoplasma van sinus piriformis"
* group[=].element[=].target.code = #C12
* group[=].element[=].target.display = "Maligne neoplasma van sinus piriformis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1021
* group[=].element[=].display = "maligne neoplasma van postcricoïde regio"
* group[=].element[=].target.code = #C13.0
* group[=].element[=].target.display = "Maligne neoplasma van regio postcricoidalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1024
* group[=].element[=].display = "maligne neoplasma van plica aryepiglottica aan hypofaryngeale zijde"
* group[=].element[=].target.code = #C13.1
* group[=].element[=].target.display = "Maligne neoplasma van plica aryepiglottica, hypofaryngeale zijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1027
* group[=].element[=].display = "maligne neoplasma van achterwand van hypofarynx"
* group[=].element[=].target.code = #C13.2
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van hypofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1030
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van hypofarynx"
* group[=].element[=].target.code = #C13.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van hypofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1033
* group[=].element[=].display = "maligne neoplasma van hypofarynx"
* group[=].element[=].target.code = #C13.9
* group[=].element[=].target.display = "Maligne neoplasma van hypofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1034
* group[=].element[=].display = "maligne neoplasma van farynx"
* group[=].element[=].target.code = #C14.0
* group[=].element[=].target.display = "Maligne neoplasma van farynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1035
* group[=].element[=].display = "maligne neoplasma van ring van Waldeyer"
* group[=].element[=].target.code = #C14.2
* group[=].element[=].target.display = "Maligne neoplasma van ring van Waldeyer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1036
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van lip, mond- en keelholte"
* group[=].element[=].target.code = #C14.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van lip, mond- en keelholte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #37100
* group[=].element[=].display = "primair maligne neoplasma van alveolaire mucosa"
* group[=].element[=].target.code = #C03.9
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #52938
* group[=].element[=].display = "nasofarynxcarcinoom"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #52939
* group[=].element[=].display = "recidief nasofarynxcarcinoom"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #61955
* group[=].element[=].display = "maligne neoplasma van mondholte"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62466
* group[=].element[=].display = "polymorf laaggradig adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8525/3
* group[=].element[=].target.display = "Polymorf adenocarcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62466
* group[=].element[=].display = "polymorf laaggradig adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62467
* group[=].element[=].display = "adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62467
* group[=].element[=].display = "adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8140/3
* group[=].element[=].target.display = "Adenocarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62471
* group[=].element[=].display = "plaveiselcelcarcinoom van tonsil"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62471
* group[=].element[=].display = "plaveiselcelcarcinoom van tonsil"
* group[=].element[=].target.code = #C09.9
* group[=].element[=].target.display = "Maligne neoplasma van tonsil, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62472
* group[=].element[=].display = "plaveiselcelcarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62472
* group[=].element[=].display = "plaveiselcelcarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62474
* group[=].element[=].display = "plaveiselcelcarcinoom van hypofarynx"
* group[=].element[=].target.code = #C13.9
* group[=].element[=].target.display = "Maligne neoplasma van hypofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62474
* group[=].element[=].display = "plaveiselcelcarcinoom van hypofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62475
* group[=].element[=].display = "plaveiselcelcarcinoom in orofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62475
* group[=].element[=].display = "plaveiselcelcarcinoom in orofarynx"
* group[=].element[=].target.code = #C10.9
* group[=].element[=].target.display = "Maligne neoplasma van orofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62476
* group[=].element[=].display = "plaveiselcelcarcinoom in nasofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62476
* group[=].element[=].display = "plaveiselcelcarcinoom in nasofarynx"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62482
* group[=].element[=].display = "muco-epidermoïd carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62482
* group[=].element[=].display = "muco-epidermoïd carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8430/3
* group[=].element[=].target.display = "Muco-epidermoïd carcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62512
* group[=].element[=].display = "carcinoom van mondbodem"
* group[=].element[=].target.code = #C04.9
* group[=].element[=].target.display = "Maligne neoplasma van mondbodem, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62512
* group[=].element[=].display = "carcinoom van mondbodem"
* group[=].element[=].target.code = #M8010/3
* group[=].element[=].target.display = "Carcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62587
* group[=].element[=].display = "adenoïd cysteus carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62587
* group[=].element[=].display = "adenoïd cysteus carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8200/3
* group[=].element[=].target.display = "Adenoïd cystisch carcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62631
* group[=].element[=].display = "acinic cell carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62631
* group[=].element[=].display = "acinic cell carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8550/3
* group[=].element[=].target.display = "Acinuscelcarcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62690
* group[=].element[=].display = "carcinoom-ex-pleiomorf adenoom van speekselklieren"
* group[=].element[=].target.code = #M8941/3
* group[=].element[=].target.display = "Carcinoom ex pleomorf adenoom "
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62690
* group[=].element[=].display = "carcinoom-ex-pleiomorf adenoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #98042
* group[=].element[=].display = "maligne epitheliaal neoplasma van systema salivaria"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal


