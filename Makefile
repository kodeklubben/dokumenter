TEXTILES += 01-Velkommen-til-kodeklubben/01-Velkommen-til-kodeklubben.textile
TEXTILES += 01-Felix-og-Herbert-gjennomgang/01-Felix-og-Herbert-gjennomgang.textile
TEXTILES += 02-Felix-og-Herbert-Opplysninger-til-instruktor/02-Felix-og-Herbert-Opplysninger-til-instruktor.textile
TEXTILES += 02-En-armet-banditt/02-En-armet-banditt.textile

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
	@cat common/header.textile $< common/footer.textile | redcloth >> $@
	@cat common/footer.html >> $@

%.pdf: %.html Makefile
	@echo Generating $@
	@wkhtmltopdf $(WKOPTS) $< $@

clean:
	-rm -rf $(HTMLS) $(PDFS)

