# latex Makefile
LATEX=pdflatex
BIBTEX=bibtex
DVIPS=dvips
TARGETS=apra2014.pdf
#ms.pdf

all: $(TARGETS)

clean: 
	@rm -f *.aux *.bbl *.blg *.dvi *.log

apra2014.dvi: apra2014.tex
	${LATEX} apra2014.tex

apra2014.ps: apra2014.dvi 
	${BIBTEX} apra
	${LATEX} apra2014.tex
	${BIBTEX} apra
	${LATEX} apra2014.tex
	${DVIPS} apra2014.dvi -o apra2014.ps

apra2014.pdf: apra2014.tex
	${LATEX} apra2014.tex
	${BIBTEX} apra2014
	${LATEX} apra2014.tex
	${BIBTEX} apra2014
	${LATEX} apra2014.tex
#	ps2pdf bgps.ps














