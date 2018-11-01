ARQUIVO=sbc-template

#tem que botar aqui os .tex ---------------------------|
# caps/conclusao.tex, caps/introducao.tex, etc...      V
$(ARQUIVO).pdf: caption2.sty sbc.bst sbc-template.bib sbc-template.sty sbc-template.tex 
	pdflatex $(ARQUIVO).tex 
	bibtex $(ARQUIVO).aux
	pdflatex $(ARQUIVO).tex 
	pdflatex $(ARQUIVO).tex

clean:
	rm *.aux *.bbl *.blg *.log 
