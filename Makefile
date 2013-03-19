sourcefile = cvl_bachelor_thesis

all: doc

doc: $(sourcefile).tex s1_introduction.tex
	pdflatex $(sourcefile).tex

clean: -f $(sourcefile).pdf $(sourcefile).aux $(sourcefile).log


