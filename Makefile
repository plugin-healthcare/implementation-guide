sushi:
	sushi

ig:
	./_genonce.sh

deploy:
	@echo "************************************************************"
	@echo "Uploading files to https://plugin.healthcare"
	scp -r output sieswerda.net:public_html/fhir/ImplementationGuide/default

clean:
	rm -r fsh-generated
	rm -r temp
	rm -r template