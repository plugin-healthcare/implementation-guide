page := index.html

all: build open

build: sushi ig

sushi:
	time sushi

ig:
	time ./_genonce.sh -no-sushi

open:
	open output/$(page)


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