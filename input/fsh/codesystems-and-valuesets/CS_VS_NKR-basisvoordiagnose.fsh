// -----------------------------------------------------------------------------
CodeSystem: NKRBasisVoorDiagnose
Id: nkr-basisvoordiagnose
Title: "NKR Basis voor Diagnose"
Description: "Basis voor diagnose zoals gebruikt binnen de NKR."
// * ^valueSet = "http://fhir.iknl.nl/nkr/ValueSet/nkr-basisvoordiagnose"
* ^content = #complete
* #0 "alleen overlijdensverklaring beschikbaar"
* #1 "alleen klinisch onderzoek (anamnese en lichamelijk onderzoek)"
* #2 "klinisch-diagnostische onderzoeken, exploratieve chirurgie of obductie(zonder microscopische bevestiging)"
// * #3 ""
* #4 "specifieke biochemische en/of immunologische laboratoriumonderzoeken"
* #5 "hematologische (beenmergcytologie = bijvoorbeeld beenmergpunctie, bloeduitstrijk) of cytologische bevestiging van de primaire tumor of metastasen, of er is microscopische bevestiging maar het is onduidelijk of dit cytologie of histologie betreft"
* #6 "histologische bevestiging uitsluitend van metastase(n), inclusief bevestiging bij obductie"
* #7 "histologische bevestiging van de primaire tumor, of onduidelijk of histologische bevestiging de primaire tumor of een metastase betreft. En/of obductie (met histologische bevestiging)"

// -----------------------------------------------------------------------------
ValueSet: NKRBasisVoorDiagnose
Id: nkr-basisvoordiagnose
Title: "NKR Basis voor Diagnose"
Description: "Basis voor diagnose zoals gebruikt binnen de NKR."
* ^immutable = true
* include codes from system NKRBasisVoorDiagnose

