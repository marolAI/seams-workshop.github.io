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
