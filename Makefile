sourcefile = bac_arbeit

all: doc

doc: $(sourcefile).tex
	pdflatex $(sourcefile).tex

clean: -f $(sourcefile).pdf $(sourcefile).aux $(sourcefile).log
