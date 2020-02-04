# Makefile
#
# makefile for resume
#
# Samuel Rohrer

# find the tex files
FILES:=$(shell ls *.tex)

# build the resume and cv
all: notes.pdf

notes.pdf: $(FILES)
	pdflatex notes.tex
	pdflatex notes.tex
	open notes.pdf

# remove the pdfs and junk
clean:
	rm -f *.pdf
	rm -f *.aux *.log *.bbl *.blg *.out *.xml *.bcf *.toc

.PHONY: clean
