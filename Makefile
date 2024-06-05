page := index.html

all: build open

build: sushi ig

sushi:
	sushi

ig:
	./_genonce.sh -no-sushi -fhir-settings fhir-settings.json

open:
	open output/$(page)

install-dependencies:
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.10.0-beta.1
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.10.0-beta.1
	tar xvzf vendor/nictiz.fhir.nl.r4.nl-core-0.10.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.10.0-beta.1
	tar xvzf vendor/nictiz.fhir.nl.r4.zib2020-0.10.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.10.0-beta.1



deploy:
	@echo "************************************************************"
	@echo "Uploading files to https://plugin.healthcare"
	# scp -r output/* sieswerda.net:public_html/fhir/ImplementationGuide/default/
	# According to the [documentation](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation#IGPublisherDocumentation-CanonicalURL)
	# the IG root should be the canonical url of the IG.
	scp -r output/* sieswerda.net:public_html/fhir/

clean:
	rm -r fsh-generated
	rm -r temp
	# rm -r template