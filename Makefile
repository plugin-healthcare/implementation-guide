page := index.html

help:
	@echo
	@echo "**********************************************************************************"
	@echo "* Help                                                                           *"
	@echo "**********************************************************************************"
	@echo "Available commands to 'make':"
	@echo "  build: run sushi and IgPublisher"
	@echo "  sushi: run sushi"
	@echo "  ig: run IgPublisher"
	@echo "  open: open local build in webbrowser (reqruires 'open' command to be installed)"
	@echo "  install-dependencies: install nl-core and zib2020 fhir packages"
	@echo "  deploy: upload local build"
	@echo "  clean: remove all temporary files"
	@echo "**********************************************************************************"
	@echo


all: build open

build: sushi ig

sushi:
	@sushi

ig:
	mkdir -p temp
	./_genonce.sh -no-sushi -fhir-settings fhir-settings.json

open:
	open output/$(page)

install-dependencies:
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.10.0-beta.1
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.11.0-beta.1
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.10.0-beta.1
	mkdir -p ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.11.0-beta.1

	tar xzf vendor/nictiz.fhir.nl.r4.nl-core-0.10.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.10.0-beta.1
	tar xzf vendor/nictiz.fhir.nl.r4.nl-core-0.11.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.nl-core#0.11.0-beta.1
	tar xzf vendor/nictiz.fhir.nl.r4.zib2020-0.10.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.10.0-beta.1
	tar xzf vendor/nictiz.fhir.nl.r4.zib2020-0.11.0-beta.1-snapshots.tgz -C ~/.fhir/packages/nictiz.fhir.nl.r4.zib2020#0.11.0-beta.1

# Deploy an intermediate version to https://plugin.healthcare/fhir. Generally
# not needed, as this will happen automatically when pushing to Github.
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