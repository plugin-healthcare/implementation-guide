Instance: dxt2snomed
InstanceOf: ConceptMap
Usage: #definition

* name = "DiagnoseThesaurus-SNOMED"
* title = "DiagnoseThesaurus naar SNOMED"
* status = #draft
* experimental = true
* description = """Mapping van de DiagnoseThesaurus op SNOMED.
"""
* purpose = """Vertalen van codes uit de DiagnoseThesaurus naar SNOMED.
"""
* sourceUri = "https://plugin.healthcare/fhir/ValueSet/dhd-dx-thesaurus"
// * targetUri[+] = ""

* group[+].source = "https://plugin.healthcare/fhir/CodeSystem/dhd-dx-thesaurus"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #0000000880
* group[=].element[=].display = "maligne neoplasma van uitwendige bovenlip"
* group[=].element[=].target.code = #C00.0
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige bovenlip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000883
* group[=].element[=].display = "maligne neoplasma van uitwendige onderlip"
* group[=].element[=].target.code = #C00.1
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige onderlip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000886
* group[=].element[=].display = "maligne neoplasma van uitwendige lip"
* group[=].element[=].target.code = #C00.2
* group[=].element[=].target.display = "Maligne neoplasma van uitwendige lip, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000887
* group[=].element[=].display = "maligne neoplasma van binnenzijde van bovenlip"
* group[=].element[=].target.code = #C00.3
* group[=].element[=].target.display = "Maligne neoplasma van bovenlip, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000890
* group[=].element[=].display = "maligne neoplasma van binnenzijde van onderlip"
* group[=].element[=].target.code = #C00.4
* group[=].element[=].target.display = "Maligne neoplasma van onderlip, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000893
* group[=].element[=].display = "maligne neoplasma van binnenzijde van lip"
* group[=].element[=].target.code = #C00.5
* group[=].element[=].target.display = "Maligne neoplasma van lip, niet gespecificeerd, binnenzijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000896
* group[=].element[=].display = "maligne neoplasma van commissuur van lip"
* group[=].element[=].target.code = #C00.6
* group[=].element[=].target.display = "Maligne neoplasma van commissuur van lip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000899
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van lip"
* group[=].element[=].target.code = #C00.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van lip"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000902
* group[=].element[=].display = "maligne neoplasma van lip"
* group[=].element[=].target.code = #C00.9
* group[=].element[=].target.display = "Maligne neoplasma van lip, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000903
* group[=].element[=].display = "maligne neoplasma van tongbasis"
* group[=].element[=].target.code = #C01
* group[=].element[=].target.display = "Maligne neoplasma van tongbasis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000906
* group[=].element[=].display = "maligne neoplasma van dorsaal oppervlak van tong"
* group[=].element[=].target.code = #C02.0
* group[=].element[=].target.display = "Maligne neoplasma van dorsaal oppervlak van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000909
* group[=].element[=].display = "maligne neoplasma van tongrand"
* group[=].element[=].target.code = #C02.1
* group[=].element[=].target.display = "Maligne neoplasma van tongrand"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000912
* group[=].element[=].display = "maligne neoplasma van ventraal oppervlak van tong"
* group[=].element[=].target.code = #C02.2
* group[=].element[=].target.display = "Maligne neoplasma van ventraal oppervlak van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000915
* group[=].element[=].display = "maligne neoplasma van voorste tweederde deel van tong"
* group[=].element[=].target.code = #C02.3
* group[=].element[=].target.display = "Maligne neoplasma van voorste tweederde van tong, deel niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000916
* group[=].element[=].display = "maligne neoplasma van tonsilla lingualis"
* group[=].element[=].target.code = #C02.4
* group[=].element[=].target.display = "Maligne neoplasma van tonsilla lingualis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000919
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van tong"
* group[=].element[=].target.code = #C02.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van tong"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000922
* group[=].element[=].display = "maligne neoplasma van tong"
* group[=].element[=].target.code = #C02.9
* group[=].element[=].target.display = "Maligne neoplasma van tong, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000923
* group[=].element[=].display = "maligne neoplasma van tandvlees van bovenkaak"
* group[=].element[=].target.code = #C03.0
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees van bovenkaak"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000926
* group[=].element[=].display = "maligne neoplasma van tandvlees van onderkaak"
* group[=].element[=].target.code = #C03.1
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees van onderkaak"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000929
* group[=].element[=].display = "maligne neoplasma van tandvlees"
* group[=].element[=].target.code = #C03.9
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000930
* group[=].element[=].display = "maligne neoplasma van voorste deel van mondbodem"
* group[=].element[=].target.code = #C04.0
* group[=].element[=].target.display = "Maligne neoplasma van voorste deel van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000933
* group[=].element[=].display = "maligne neoplasma van laterale deel van mondbodem"
* group[=].element[=].target.code = #C04.1
* group[=].element[=].target.display = "Maligne neoplasma van laterale deel van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000936
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van mondbodem"
* group[=].element[=].target.code = #C04.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van mondbodem"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000939
* group[=].element[=].display = "maligne neoplasma van mondbodem"
* group[=].element[=].target.code = #C04.9
* group[=].element[=].target.display = "Maligne neoplasma van mondbodem, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000940
* group[=].element[=].display = "maligne neoplasma van hard gehemelte"
* group[=].element[=].target.code = #C05.0
* group[=].element[=].target.display = "Maligne neoplasma van hard gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000943
* group[=].element[=].display = "maligne neoplasma van zacht gehemelte"
* group[=].element[=].target.code = #C05.1
* group[=].element[=].target.display = "Maligne neoplasma van zacht gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000946
* group[=].element[=].display = "maligne neoplasma van uvula"
* group[=].element[=].target.code = #C05.2
* group[=].element[=].target.display = "Maligne neoplasma van uvula"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000949
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van gehemelte"
* group[=].element[=].target.code = #C05.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van gehemelte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000952
* group[=].element[=].display = "maligne neoplasma van gehemelte"
* group[=].element[=].target.code = #C05.9
* group[=].element[=].target.display = "Maligne neoplasma van gehemelte, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000953
* group[=].element[=].display = "maligne neoplasma van wangslijmvlies"
* group[=].element[=].target.code = #C06.0
* group[=].element[=].target.display = "Maligne neoplasma van wangslijmvlies"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000956
* group[=].element[=].display = "maligne neoplasma van vestibulum oris"
* group[=].element[=].target.code = #C06.1
* group[=].element[=].target.display = "Maligne neoplasma van vestibulum oris"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000959
* group[=].element[=].display = "maligne neoplasma van retromolaire gebied"
* group[=].element[=].target.code = #C06.2
* group[=].element[=].target.display = "Maligne neoplasma van retromolaire gebied"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000962
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van mond"
* group[=].element[=].target.code = #C06.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van overige en niet gespecificeerde delen van mond"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000965
* group[=].element[=].display = "maligne neoplasma van mond"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000966
* group[=].element[=].display = "maligne neoplasma van kleine speekselklier"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000967
* group[=].element[=].display = "maligne neoplasma van glandula parotidea"
* group[=].element[=].target.code = #C07
* group[=].element[=].target.display = "Maligne neoplasma van glandula parotidea"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000968
* group[=].element[=].display = "maligne neoplasma van glandula submandibularis"
* group[=].element[=].target.code = #C08.0
* group[=].element[=].target.display = "Maligne neoplasma van glandula submandibularis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000969
* group[=].element[=].display = "maligne neoplasma van glandula sublingualis"
* group[=].element[=].target.code = #C08.1
* group[=].element[=].target.display = "Maligne neoplasma van glandula sublingualis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000970
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van grote speekselklieren"
* group[=].element[=].target.code = #C08.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van grote speekselklieren"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000971
* group[=].element[=].display = "maligne neoplasma van grote speekselklier"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000972
* group[=].element[=].display = "maligne neoplasma van tonsilnis"
* group[=].element[=].target.code = #C09.0
* group[=].element[=].target.display = "Maligne neoplasma van tonsilnis [fossa tonsillaris]"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000975
* group[=].element[=].display = "maligne neoplasma van gehemelteboog"
* group[=].element[=].target.code = #C09.1
* group[=].element[=].target.display = "Maligne neoplasma van gehemelteboog (voorste)(achterste)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000978
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van tonsil"
* group[=].element[=].target.code = #C09.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van tonsil"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000981
* group[=].element[=].display = "maligne neoplasma van tonsil"
* group[=].element[=].target.code = #C09.9
* group[=].element[=].target.display = "Maligne neoplasma van tonsil, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000982
* group[=].element[=].display = "maligne neoplasma van vallecula epiglottica"
* group[=].element[=].target.code = #C10.0
* group[=].element[=].target.display = "Maligne neoplasma van vallecula epiglottica"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000985
* group[=].element[=].display = "maligne neoplasma van voorste oppervlak van epiglottis"
* group[=].element[=].target.code = #C10.1
* group[=].element[=].target.display = "Maligne neoplasma van voorste oppervlak van epiglottis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000988
* group[=].element[=].display = "maligne neoplasma van laterale wand van orofarynx"
* group[=].element[=].target.code = #C10.2
* group[=].element[=].target.display = "Maligne neoplasma van laterale wand van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000991
* group[=].element[=].display = "maligne neoplasma van achterwand van orofarynx"
* group[=].element[=].target.code = #C10.3
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000994
* group[=].element[=].display = "maligne neoplasma van kieuwspleet"
* group[=].element[=].target.code = #C10.4
* group[=].element[=].target.display = "Maligne neoplasma van kieuwspleet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000000997
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van orofarynx"
* group[=].element[=].target.code = #C10.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van orofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001000
* group[=].element[=].display = "maligne neoplasma van orofarynx"
* group[=].element[=].target.code = #C10.9
* group[=].element[=].target.display = "Maligne neoplasma van orofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001001
* group[=].element[=].display = "maligne neoplasma van bovenwand van nasofarynx"
* group[=].element[=].target.code = #C11.0
* group[=].element[=].target.display = "Maligne neoplasma van bovenwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001004
* group[=].element[=].display = "maligne neoplasma van achterwand van nasofarynx"
* group[=].element[=].target.code = #C11.1
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001007
* group[=].element[=].display = "maligne neoplasma van laterale wand van nasofarynx"
* group[=].element[=].target.code = #C11.2
* group[=].element[=].target.display = "Maligne neoplasma van laterale wand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001010
* group[=].element[=].display = "maligne neoplasma van voorwand van nasofarynx"
* group[=].element[=].target.code = #C11.3
* group[=].element[=].target.display = "Maligne neoplasma van voorwand van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001013
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van nasofarynx"
* group[=].element[=].target.code = #C11.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van nasofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001016
* group[=].element[=].display = "maligne neoplasma van nasofarynx"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001018
* group[=].element[=].display = "maligne neoplasma van sinus piriformis"
* group[=].element[=].target.code = #C12
* group[=].element[=].target.display = "Maligne neoplasma van sinus piriformis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001021
* group[=].element[=].display = "maligne neoplasma van postcricoïde regio"
* group[=].element[=].target.code = #C13.0
* group[=].element[=].target.display = "Maligne neoplasma van regio postcricoidalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001024
* group[=].element[=].display = "maligne neoplasma van plica aryepiglottica aan hypofaryngeale zijde"
* group[=].element[=].target.code = #C13.1
* group[=].element[=].target.display = "Maligne neoplasma van plica aryepiglottica, hypofaryngeale zijde"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001027
* group[=].element[=].display = "maligne neoplasma van achterwand van hypofarynx"
* group[=].element[=].target.code = #C13.2
* group[=].element[=].target.display = "Maligne neoplasma van achterwand van hypofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001030
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van hypofarynx"
* group[=].element[=].target.code = #C13.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van hypofarynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001033
* group[=].element[=].display = "maligne neoplasma van hypofarynx"
* group[=].element[=].target.code = #C13.9
* group[=].element[=].target.display = "Maligne neoplasma van hypofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001034
* group[=].element[=].display = "maligne neoplasma van farynx"
* group[=].element[=].target.code = #C14.0
* group[=].element[=].target.display = "Maligne neoplasma van farynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001035
* group[=].element[=].display = "maligne neoplasma van ring van Waldeyer"
* group[=].element[=].target.code = #C14.2
* group[=].element[=].target.display = "Maligne neoplasma van ring van Waldeyer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001036
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van lip, mond- en keelholte"
* group[=].element[=].target.code = #C14.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van lip, mond- en keelholte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001125
* group[=].element[=].display = "maligne neoplasma van neusholte"
* group[=].element[=].target.code = #C30.0
* group[=].element[=].target.display = "Maligne neoplasma van neusholte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001126
* group[=].element[=].display = "maligne neoplasma van middenoor"
* group[=].element[=].target.code = #C30.1
* group[=].element[=].target.display = "Maligne neoplasma van middenoor"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001127
* group[=].element[=].display = "maligne neoplasma van sinus maxillaris"
* group[=].element[=].target.code = #C31.0
* group[=].element[=].target.display = "Maligne neoplasma van sinus maxillaris"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001128
* group[=].element[=].display = "maligne neoplasma van sinus ethmoidalis"
* group[=].element[=].target.code = #C31.1
* group[=].element[=].target.display = "Maligne neoplasma van sinus ethmoidalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001129
* group[=].element[=].display = "maligne neoplasma van sinus frontalis"
* group[=].element[=].target.code = #C31.2
* group[=].element[=].target.display = "Maligne neoplasma van sinus frontalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001130
* group[=].element[=].display = "maligne neoplasma van sinus sphenoidalis"
* group[=].element[=].target.code = #C31.3
* group[=].element[=].target.display = "Maligne neoplasma van sinus sphenoidalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001131
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van neusbijholten"
* group[=].element[=].target.code = #C31.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van neusbijholten"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001132
* group[=].element[=].display = "maligne neoplasma van neusbijholte"
* group[=].element[=].target.code = #C31.9
* group[=].element[=].target.display = "Maligne neoplasma van neusbijholte, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001133
* group[=].element[=].display = "maligne neoplasma van glottis"
* group[=].element[=].target.code = #C32.0
* group[=].element[=].target.display = "Maligne neoplasma van glottis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001136
* group[=].element[=].display = "maligne neoplasma van supraglottis"
* group[=].element[=].target.code = #C32.1
* group[=].element[=].target.display = "Maligne neoplasma van supraglottis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001139
* group[=].element[=].display = "maligne neoplasma van subglottis"
* group[=].element[=].target.code = #C32.2
* group[=].element[=].target.display = "Maligne neoplasma van subglottis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001142
* group[=].element[=].display = "maligne neoplasma van laryngeaal kraakbeen"
* group[=].element[=].target.code = #C32.3
* group[=].element[=].target.display = "Maligne neoplasma van laryngeaal kraakbeen"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001145
* group[=].element[=].display = "maligne neoplasma met overlappende lokalisatie van larynx"
* group[=].element[=].target.code = #C32.8
* group[=].element[=].target.display = "Maligne neoplasma met overlappende lokalisatie van larynx"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001148
* group[=].element[=].display = "maligne neoplasma van larynx"
* group[=].element[=].target.code = #C32.9
* group[=].element[=].target.display = "Maligne neoplasma van larynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000001488
* group[=].element[=].display = "metastase in lymfeklier van hals"
* group[=].element[=].target.code = #C77.0
* group[=].element[=].target.display = "Secundair en niet gespecificeerde maligne neoplasma van lymfeklieren van hoofd en hals"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000037100
* group[=].element[=].display = "primair maligne neoplasma van alveolaire mucosa"
* group[=].element[=].target.code = #C03.9
* group[=].element[=].target.display = "Maligne neoplasma van tandvlees, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000052938
* group[=].element[=].display = "nasofarynxcarcinoom"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000052939
* group[=].element[=].display = "recidief nasofarynxcarcinoom"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000053218
* group[=].element[=].display = "metastase in lymfeklieren van hoofd en hals"
* group[=].element[=].target.code = #C77.0
* group[=].element[=].target.display = "Secundair en niet gespecificeerde maligne neoplasma van lymfeklieren van hoofd en hals"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000061955
* group[=].element[=].display = "maligne neoplasma van mondholte"
* group[=].element[=].target.code = #C06.9
* group[=].element[=].target.display = "Maligne neoplasma van mond, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062466
* group[=].element[=].display = "polymorf laaggradig adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062466
* group[=].element[=].display = "polymorf laaggradig adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8525/3
* group[=].element[=].target.display = "Polymorf adenocarcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062467
* group[=].element[=].display = "adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8140/3
* group[=].element[=].target.display = "Adenocarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062467
* group[=].element[=].display = "adenocarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062469
* group[=].element[=].display = "sinonasaal ongedifferentieerd carcinoom"
* group[=].element[=].target.code = #C31.9
* group[=].element[=].target.display = "Maligne neoplasma van neusbijholte, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062469
* group[=].element[=].display = "sinonasaal ongedifferentieerd carcinoom"
* group[=].element[=].target.code = #M8020/3
* group[=].element[=].target.display = "Carcinoom, ongedifferentieerd type, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062471
* group[=].element[=].display = "plaveiselcelcarcinoom van tonsil"
* group[=].element[=].target.code = #C09.9
* group[=].element[=].target.display = "Maligne neoplasma van tonsil, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062471
* group[=].element[=].display = "plaveiselcelcarcinoom van tonsil"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062472
* group[=].element[=].display = "plaveiselcelcarcinoom van speekselklieren"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062472
* group[=].element[=].display = "plaveiselcelcarcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062473
* group[=].element[=].display = "plaveiselcelcarcinoom van larynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062473
* group[=].element[=].display = "plaveiselcelcarcinoom van larynx"
* group[=].element[=].target.code = #C32.9
* group[=].element[=].target.display = "Maligne neoplasma van larynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062474
* group[=].element[=].display = "plaveiselcelcarcinoom van hypofarynx"
* group[=].element[=].target.code = #C13.9
* group[=].element[=].target.display = "Maligne neoplasma van hypofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062474
* group[=].element[=].display = "plaveiselcelcarcinoom van hypofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062475
* group[=].element[=].display = "plaveiselcelcarcinoom in orofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062475
* group[=].element[=].display = "plaveiselcelcarcinoom in orofarynx"
* group[=].element[=].target.code = #C10.9
* group[=].element[=].target.display = "Maligne neoplasma van orofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062476
* group[=].element[=].display = "plaveiselcelcarcinoom in nasofarynx"
* group[=].element[=].target.code = #C11.9
* group[=].element[=].target.display = "Maligne neoplasma van nasofarynx, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062476
* group[=].element[=].display = "plaveiselcelcarcinoom in nasofarynx"
* group[=].element[=].target.code = #M8070/3
* group[=].element[=].target.display = "Plaveiselcelcarcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062482
* group[=].element[=].display = "muco-epidermoïd carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062482
* group[=].element[=].display = "muco-epidermoïd carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8430/3
* group[=].element[=].target.display = "Muco-epidermoïd carcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062501
* group[=].element[=].display = "ethmoïdcarcinoom"
* group[=].element[=].target.code = #M8010/3
* group[=].element[=].target.display = "Carcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062501
* group[=].element[=].display = "ethmoïdcarcinoom"
* group[=].element[=].target.code = #C31.1
* group[=].element[=].target.display = "Maligne neoplasma van sinus ethmoidalis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062512
* group[=].element[=].display = "carcinoom van mondbodem"
* group[=].element[=].target.code = #C04.9
* group[=].element[=].target.display = "Maligne neoplasma van mondbodem, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062512
* group[=].element[=].display = "carcinoom van mondbodem"
* group[=].element[=].target.code = #M8010/3
* group[=].element[=].target.display = "Carcinoom, NNO"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062587
* group[=].element[=].display = "adenoïd cysteus carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8200/3
* group[=].element[=].target.display = "Adenoïd cystisch carcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062587
* group[=].element[=].display = "adenoïd cysteus carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062631
* group[=].element[=].display = "acinic cell carcinoom van speekselklieren"
* group[=].element[=].target.code = #M8550/3
* group[=].element[=].target.display = "Acinuscelcarcinoom"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062631
* group[=].element[=].display = "acinic cell carcinoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062690
* group[=].element[=].display = "carcinoom-ex-pleiomorf adenoom van speekselklieren"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000062690
* group[=].element[=].display = "carcinoom-ex-pleiomorf adenoom van speekselklieren"
* group[=].element[=].target.code = #M8941/3
* group[=].element[=].target.display = "Carcinoom ex pleomorf adenoom "
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000095986
* group[=].element[=].display = "esthesioneuroblastoom"
* group[=].element[=].target.code = #C30.0
* group[=].element[=].target.display = "Maligne neoplasma van neusholte"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000098042
* group[=].element[=].display = "maligne epitheliaal neoplasma van systema salivaria"
* group[=].element[=].target.code = #C08.9
* group[=].element[=].target.display = "Maligne neoplasma van grote speekselklier, niet gespecificeerd"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000099959
* group[=].element[=].display = "maligne neoplasma van inwendige gehoorgang"
* group[=].element[=].target.code = #M8000/3
* group[=].element[=].target.display = "Neoplasma, maligne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0000099959
* group[=].element[=].display = "maligne neoplasma van inwendige gehoorgang"
* group[=].element[=].target.code = #C30.1
* group[=].element[=].target.display = "Maligne neoplasma van middenoor"
* group[=].element[=].target.equivalence = #equal


