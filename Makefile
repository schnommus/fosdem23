TARGET = slides.pdf

.PHONY: default all clean

default: $(TARGET)
all: default

%.pdf: %.tex
	pdflatex $<
	rm -rf *.aux *.nav *.out *.snm *.toc *.vrb *.log *.bib

clean:
	rm -rf *.pdf
