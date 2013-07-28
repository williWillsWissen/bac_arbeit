sourcefile = cvl_bachelor_thesis

capter_list = s1_introduction s2_related-work s3_methodology s4_results s5_conclusion 
capter_targets = $(addpostfix .tex, $(capter_list))
    
capter_delete_aux_targets = $(addsuffix .aux, $(capter_list))

all: doc 

doc: $(sourcefile).tex $(capter_targets)
	pdflatex $(sourcefile).tex
	bibtex $(sourcefile).aux
	pdflatex $(sourcefile).tex

clean:  
	rm -f $(sourcefile).pdf $(sourcefile).aux $(sourcefile).out $(sourcefile).log
	rm -rf $(capter_delete_aux_targets)

