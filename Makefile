NAME = poster-genos-anppom-2012-taxonomia
TEXSRCS = bibliography.bib
USE_PDFLATEX = 1
LATEX_ENV+=TEXINPUTS=.:tex:lisp:src:config:figs:data:lily:out:
TEXINPUTS=.:config:
BIBINPUTS=.:
PDFLATEX_ENV+= $(LATEX_ENV)
GV = gnome-open

OTHER += $(LILY_PDF) $(SVG_PDF)

LATEX_MK = config/make/latex-mk/latex-mk
include config/make/latex.mk
include config/make/latex-mk/latex.gmk

light_clean:
	rm -f $(NAME).log
	rm -f $(NAME).bbl
	rm -f $(NAME).blg
	rm -f $(NAME).aux
