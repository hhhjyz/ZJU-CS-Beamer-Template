MAIN     ?= slide
XELATEX ?= xelatex
BIBTEX  ?= bibtex

PDF     := $(MAIN).pdf
SOURCES := $(wildcard *.tex *.sty *.bib pic/*)
AUX_EXT := aux bbl blg fls fdb_latexmk log nav out snm synctex.gz toc vrb
AUX     := $(foreach ext,$(AUX_EXT),$(MAIN).$(ext))

.DEFAULT_GOAL := all
.DELETE_ON_ERROR:

.PHONY: all clean distclean help

all: $(PDF)

$(PDF): $(SOURCES)
	$(XELATEX) -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(XELATEX) -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex
	$(XELATEX) -interaction=nonstopmode -halt-on-error -file-line-error $(MAIN).tex

clean:
	$(RM) $(AUX)

distclean: clean
	$(RM) $(PDF)

help:
	@printf '%s\n' \
		'make              Compile $(PDF) with XeLaTeX and BibTeX' \
		'make clean        Remove auxiliary build files' \
		'make distclean    Remove auxiliary files and $(PDF)' \
		'make MAIN=name    Compile name.tex instead of slide.tex'
