FILE:=cookbook

pdf: $(FILE).tex
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex
	pdflatex $(FILE).tex

clean:
	rm -f $(FILE).aux
	rm -f $(FILE).log
	rm -f $(FILE).out
	rm -f $(FILE).pdf
	rm -f $(FILE).toc
	rm -f *~
