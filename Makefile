TEXTILES += $(shell find . -type f -name "*.textile" -not -name "header.textile" -not -name "footer.textile")

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

all: htmls pdfs gitignore

htmls: $(HTMLS)

pdfs: $(PDFS)

%.html: %.textile Makefile
	@echo Generating $@
	$(eval ROOT=$(shell echo "$<" | sed -e "s,[^/]\+/,../,g" -e "s,/[^/]\+$$,,g"))
	@cat common/header.html | sed -e "s,ROOT,$(ROOT),g" > $@
	@cat common/header.textile $< common/footer.textile | redcloth | sed -e "s,ROOT,$(ROOT),g" >> $@
	@cat common/footer.html | sed -e "s,ROOT,$(ROOT),g" >> $@

%.pdf: %.html Makefile
	@echo Generating $@
	@wkhtmltopdf $(WKOPTS) $< $@

gitignore:
	echo $(HTMLS) | tr " " "\n" | sed -e "s,^\./,,g" | sort > .gitignore
	echo $(PDFS) | tr " " "\n" | sed -e "s,^\./,,g" | sort >> .gitignore

clean:
	-rm -rf $(HTMLS) $(PDFS)

