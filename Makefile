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
RFGKEYPATH := ~/Google\ Drive/SEAMS/rfgkey.mk
## TO USE THIS TARGET, MUST DEFINE THIS MAKEFILE LOCALLY, WITH RFGKEY := ... IN IT
-include $(RFGKEYPATH)

myrfg.json: rfg.json
	## TODO stop unless RFGKEY is something?
	sed -e 's/REPLACEME/$(RFGKEY)/g' $^ > $@

favicons.zip: myrfg.json
	curl -H "Content-Type: application/json" --data @$^ $(RFG) > tmp.json
	grep -Eo '"package_url":.*?[^\\]",' tmp.json | sed -e 's/"package_url": "//' | sed -e 's/",//' | sed -e 's/\\//g' > tmp.url
	cat tmp.url | xargs curl -o $@ -O
	rm tmp.json
	rm tmp.url

_includes/html_code.html: favicons.zip
	unzip $^
	mv $(subst _includes/,,$@) $@

.PHONY: gbranches

define brancher
git checkout -B $1-$2
git push --set-upstream origin $1-$2

endef

gbranches:
	$(foreach sess,reference practical project discussion,$(foreach top,design workspace reuse io hpc,$(call brancher,$(sess),$(top))))

PROJECTAPIURL = https://gitlab.com/api/v4/projects/7337508

gmrs:
	COUNTBRANCHES=`curl --silent "${PROJECTAPIURL}/merge_requests?state=opened" --header "PRIVATE-TOKEN:${gitlabapi}" | grep -o "\"source_branch\":\"TEST\"" | wc -l`; echo $$COUNTBRANCHES
	#COUNTBRANCHES=`echo ${LISTMR} | grep -o "\"source_branch\":\"reference-workspace\"" | wc -l`; \
	#echo $(COUNTBRANCHES)