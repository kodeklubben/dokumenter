TEXTILES += $(shell find -type f -name "*.textile" -not -name "header.textile" -not -name "footer.textile")

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

all: $(HTMLS) $(PDFS) gitignore

%.html: %.textile Makefile
	@echo Generating $@
	@cat common/header.html > $@
	@cat common/header.textile $< common/footer.textile | redcloth >> $@
	@cat common/footer.html >> $@

%.pdf: %.html Makefile
	@echo Generating $@
	@wkhtmltopdf $(WKOPTS) $< $@

gitignore:
	echo $(HTMLS) | tr " " "\n" | sed -e "s,^\./,,g" > .gitignore
	echo $(PDFS) | tr " " "\n" | sed -e "s,^\./,,g" >> .gitignore

clean:
	-rm -rf $(HTMLS) $(PDFS)

