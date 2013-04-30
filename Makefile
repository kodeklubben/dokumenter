TEXTILES += 01-Velkommen-til-kodeklubben/01-Velkommen-til-kodeklubben.textile
HTMLS=$(TEXTILES:.textile=.html)
PDFS=$(TEXTILES:.textile=.pdf)

WKOPTS += --toc
WKOPTS += --toc-header-text "Innhold" 
WKOPTS += --toc-no-dots
WKOPTS += --margin-top 25
WKOPTS += --margin-bottom 25
WKOPTS += --margin-left 25
WKOPTS += --margin-right 25
WKOPTS += --page-size A4
WKOPTS += --footer-center "[page]/[topage]"

all: $(HTMLS) $(PDFS)

%.html: %.textile Makefile
	@echo Generating $@
	@cat common/header.html > $@
	@cat $< | redcloth >> $@
	@cat common/footer.html >> $@

%.pdf: %.html Makefile
	@echo Generating $@
	@wkhtmltopdf $(WKOPTS) $< $@

clean:
	-rm -rf $(HTMLS) $(PDFS)
