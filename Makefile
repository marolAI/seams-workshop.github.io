## some convenience methods

run:
	bundle exec jekyll serve -w --config=_config.yml,_locconfig.yml

Vertical_Signature_Blue.eps:
	rm -f $@
	curl -o temp.zip "http://identity.ufl.edu/wp-content/uploads/2015/11/Vertical_Signature_Blue.eps_.zip"
	unzip temp.zip
	rm temp.zip

%.pdf: %.eps
	epstopdf $^

_includes/logo-UF.svg: Vertical_Signature_Blue.pdf
	pdf2svg $^ $@

## TODO make target for favicon generation
## found via https://stackoverflow.com/questions/48956465/favicon-standard-2018-svg-ico-png-and-dimensions
## This site seems to do the works, web service API: https://realfavicongenerator.net/api/non_interactive_api#.W1CMltgzbOQ
## looks like need to send SVG + a config.json via POST to site
## then put the results in the right places locally

RFG := https://realfavicongenerator.net/api/favicon
## TO USE THIS TARGET, MUST DEFINE THIS MAKEFILE LOCALLY, WITH RFGKEY := ... IN IT
include rfgkey.mk

myrfg.json: rfg.json | rfgkey.mk
	## TODO stop unless RFGKEY is something?
	sed -e 's/REPLACEME/$(RFGKEY)/g' $^ > $@

faviconthing: myrfg.json
	curl -H "Content-Type: application/json" --data @$^ $(RFG)
