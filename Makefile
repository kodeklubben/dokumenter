TEXTILES += 01-Velkommen-til-kodeklubben/01-Velkommen-til-kodeklubben.textile
HTMLS=$(TEXTILES:.textile=.html)
PDFS=$(TEXTILES:.textile=.pdf)

all: $(HTMLS) $(PDFS)

%.html: %.textile
	@echo Generating $@
	@cat common/header.html > $@
	@cat $< | redcloth >> $@
	@cat common/footer.html >> $@

%.pdf: %.html
	@echo Generating $@
	@wkhtmltopdf $< $@

clean:
	-rm -rf $(HTMLS) $(PDFS)
